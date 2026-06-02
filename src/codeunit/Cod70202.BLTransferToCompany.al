codeunit 70202 "BL Transfer To Company"
{
    // Transfers "BL Details" records from the source company (LOGISTICS)
    // to the company specified in the "Destination Company" field on the record.
    // Uses native BC ChangeCompany() - no external integration required.

    Permissions = tabledata "BL Details" = rimd,
                  tabledata "Container Details" = rimd;

    var
        SourceCompanyTok: Label 'LOGISTICS', Locked = true;
        NotSourceCompanyErr: Label 'This transfer can only be run from the %1 company. You are currently in %2.', Comment = '%1 = source company, %2 = current company';
        EmptyDestinationErr: Label 'Please set the Destination Company on the BL before transferring.';
        SameCompanyErr: Label 'Destination Company cannot be the same as the source company (%1).', Comment = '%1 = source company';
        CompanyNotFoundErr: Label 'The destination company %1 does not exist in this environment.', Comment = '%1 = destination company';
        ConfirmTransferQst: Label 'Transfer BL %1 and its containers from %2 to %3?', Comment = '%1 = BL ID, %2 = source company, %3 = destination company';
        TransferSuccessMsg: Label 'BL %1 was successfully transferred to company %2. Containers copied: %3.', Comment = '%1 = BL ID, %2 = destination company, %3 = number of containers';

    /// <summary>
    /// Entry point called from the BL Card action.
    /// </summary>
    /// 
    trigger OnRun()
    var
        BLDetails: Record "BL Details";
    begin
        Clear(BLDetails);
        if BLDetails.FindSet() then
            repeat
                TransferBL(BLDetails);
            until BLDetails.Next() = 0;
    end;

    procedure TransferBL(var SourceBL: Record "BL Details")
    var
        DestinationCompany: Text[30];
        ContainerCount: Integer;
    begin
        ValidateSourceEnvironment();
        ValidateBLRecord(SourceBL);

        DestinationCompany := SourceBL."Destination Company";
        ValidateDestinationCompany(DestinationCompany);

        if not Confirm(StrSubstNo(ConfirmTransferQst, SourceBL."BL ID", CompanyName(), DestinationCompany), false) then
            exit;

        CopyBLToCompany(SourceBL, DestinationCompany);
        ContainerCount := CopyContainersToCompany(SourceBL."BL ID", DestinationCompany);

        Message(TransferSuccessMsg, SourceBL."BL ID", DestinationCompany, ContainerCount);
    end;

    local procedure ValidateSourceEnvironment()
    begin
        if UpperCase(CompanyName()) <> UpperCase(SourceCompanyTok) then
            Error(NotSourceCompanyErr, SourceCompanyTok, CompanyName());
    end;

    local procedure ValidateBLRecord(var SourceBL: Record "BL Details")
    begin
        SourceBL.TestField("BL ID");
        if SourceBL."Destination Company" = '' then
            Error(EmptyDestinationErr);
    end;

    local procedure ValidateDestinationCompany(DestinationCompany: Text[30])
    var
        CompanyRec: Record Company;
    begin
        if UpperCase(DestinationCompany) = UpperCase(SourceCompanyTok) then
            Error(SameCompanyErr, SourceCompanyTok);

        if not CompanyRec.Get(DestinationCompany) then
            Error(CompanyNotFoundErr, DestinationCompany);
    end;

    local procedure CopyBLToCompany(var SourceBL: Record "BL Details"; DestinationCompany: Text[30])
    var
        TargetBL: Record "BL Details";
    begin
        TargetBL.ChangeCompany(DestinationCompany);

        if TargetBL.Get(SourceBL."BL ID") then begin
            // Update existing record in destination company (primary key preserved).
            TargetBL.TransferFields(SourceBL, false);
            // Clear destination company on the copy so the target user does not re-trigger a transfer loop.
            TargetBL."Destination Company" := '';
            TargetBL.Modify(false);
        end else begin
            TargetBL.Init();
            TargetBL.TransferFields(SourceBL, true);
            TargetBL."Destination Company" := '';
            // Insert(false) skips OnInsert so the "BL ID" no. series in the target company is not consumed.
            TargetBL.Insert(false);
        end;
    end;

    /// <summary>
    /// Copies all Container Details linked to the given BL ID into the destination company.
    /// Matches records by the (BL ID, Line No.) primary key — no company field needed on Container Details.
    /// Returns the number of container records transferred.
    /// </summary>
    local procedure CopyContainersToCompany(BLID: Code[20]; DestinationCompany: Text[30]): Integer
    var
        SourceContainer: Record "Container Details";
        TargetContainer: Record "Container Details";
        CopiedCount: Integer;
    begin
        CopiedCount := 0;

        SourceContainer.SetRange("BL ID", BLID);
        if not SourceContainer.FindSet() then
            exit(0);

        repeat
            Clear(TargetContainer);
            TargetContainer.ChangeCompany(DestinationCompany);

            if TargetContainer.Get(SourceContainer."BL ID", SourceContainer."Line No.") then begin
                // Preserve (BL ID, Line No.) primary key; refresh all other fields incl. SP ID, dates, status.
                TargetContainer.TransferFields(SourceContainer, false);
                // Modify(false) bypasses OnValidate triggers on FTR/FTD/FTA/ATA/FTAW
                // that would otherwise try to touch Purchase Line / Supply Chain LOG in the target company.
                TargetContainer.Modify(false);
            end else begin
                TargetContainer.Init();
                TargetContainer.TransferFields(SourceContainer, true);
                // Insert(false) skips OnInsert so the SP ID No. Series in the target company is not consumed
                // and the original SP ID is preserved for cross-company traceability.
                TargetContainer.Insert(false);
            end;

            CopiedCount += 1;
        until SourceContainer.Next() = 0;

        exit(CopiedCount);
    end;
}
