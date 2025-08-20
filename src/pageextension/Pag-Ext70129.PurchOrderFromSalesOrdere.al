pageextension 70129 "Purch. Order From Sales Ordere" extends "Purch. Order From Sales Order"
{
    layout
    {
        addafter("No.")
        {
            field("Vendor Item No."; Rec."Vendor Item No.")
            {
                ApplicationArea = All;
                Editable = false;
            }

        }
        addafter(Vendor)
        {

            field("Append to PO No."; Rec."Append to PO No.")
            {
                ApplicationArea = All;
                Editable = EditAppendPO;
            }
            field("Currency Code"; Rec."Currency Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the currency code for the requisition lines.';
                Editable = false;
            }
        }
        // Add changes to page layout here
        addafter(Quantity)
        {
            field("Direct Unit Cost"; Rec."Direct Unit Cost")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the cost of one unit of the selected item or resource.';

                trigger OnValidate()
                var
                    CostPRLog: Record "Cost PR Log";
                begin

                    if (xRec."Direct Unit Cost" <> 0) and (xRec."Direct Unit Cost" <> Rec."Direct Unit Cost") then begin
                        CostPRLog.Init();
                        CostPRLog."Item Number" := Rec."No.";
                        CostPRLog."PR Line Number" := Rec."Line No.";
                        CostPRLog."New Cost" := Rec."Direct Unit Cost";
                        CostPRLog."Old Cost" := xRec."Direct Unit Cost";
                        CostPRLog."Project No." := Rec."Job No.";
                        CostPRLog."Project planning Line No." := Rec."Job Planning Line No.";
                        CostPRLog."Created By" := UserId;
                        CostPRLog.Insert(true);
                    end;
                end;
            }

            field("PO No."; Rec."PO No.")
            {
                ApplicationArea = All;
                // trigger OnValidate()
                // var
                //     myInt: Integer;
                // begin
                //     EditableAppendPO();
                // end;
            }
            field("PO Line No"; Rec."PO Line No")
            {
                ApplicationArea = All;
            }

        }
        modify(Quantity)
        {
            trigger OnAfterValidate()
            var
                CostPRLog: Record "Cost PR Log";
            begin
                if (xRec.Quantity <> 0) and (xRec.Quantity <> Rec.Quantity) then begin
                    CostPRLog.Init();
                    CostPRLog."Item Number" := Rec."No.";
                    CostPRLog."PR Line Number" := Rec."Line No.";
                    CostPRLog."Old Qty" := xRec.Quantity;
                    CostPRLog."New Qty" := Rec.Quantity;
                    CostPRLog."Project No." := Rec."Job No.";
                    CostPRLog."Project planning Line No." := Rec."Job Planning Line No.";
                    CostPRLog."Created By" := UserId;
                    CostPRLog.Insert(true);
                end;
            end;
        }
        /* modify(Quantity)//stooped on 07/05/2025
         {
             Editable = CanSubmitPurchaseRequest;
             //Enabled = false;
         }
         {
           //  Editable = false;
             //Enabled = false;
         }
         modify(Vendor)
         {
             //Editable = false;
             //Enabled = false;
         }*/
        addfirst(FactBoxes)
        {
            part("Cost PR LOGs Factbox"; "Cost PR LOGs Factbox")
            {
                ApplicationArea = All;
                Caption = 'Cost Variation LOG';
                SubPageLink = "PR Line Number" = field("Line No.");
            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addafter(ShowUnavailable)
        {

            action("Create Purchase Requests")
            {
                ApplicationArea = All;
                Image = Purchase;
                trigger OnAction()
                begin
                    CreateOrOpenPurchaseRequests()
                end;
            }
        }
    }




    local procedure HideQtyServiceItemLocalVendor()
    var
        PurchasesPayablesSetup: Record "Purchases & Payables Setup";
        Item: Record Item;
        RequisitionLine: Record "Requisition Line";
    begin
        Filters := '';
        Clear(PurchasesPayablesSetup);
        PurchasesPayablesSetup.Get();
        Clear(Item);
        Clear(RequisitionLine);
        repeat
            Item.SetRange("No.", Rec."No.");
            Item.SetFilter(Type, '%1', Item.Type::Service);
            if Item.FindFirst() then
                repeat
                    if Item."Vendor No." = PurchasesPayablesSetup."Local Vendor" then begin
                        Filters := '<>';
                        Filters += Item."No." + '&<>';
                    end;
                until Item.Next() = 0;
        until Rec.Next() = 0;
        if Filters <> '' then
            Filters := DelStr(Filters, StrLen(Filters) - 2, 4); // Remove trailing '&'    
        Rec.SetFilter("No.", Filters);
    end;

    local procedure CreateOrOpenPurchaseRequests()
    var
        PurchaseRequest: Record "Purchase Request Header";
        PurchaseRequestLine: Record "Purchase Request Line";
        Vendor: Record Vendor;
        LineNo: Integer;
        ProjectPlanningLines: Record "Job Planning Line";
        Item: Record Item;
    begin
        Clear(PurchaseRequest);
        PurchaseRequest.SetRange("Global Dimension 1 Code", Rec."Shortcut Dimension 1 Code");

        IF NOT PurchaseRequest.FindFirst() then begin

            LineNo := 0;
            if Rec.FindSet() then
                repeat
                    Clear(PurchaseRequest);
                    PurchaseRequest.SetRange("Global Dimension 1 Code", Rec."Shortcut Dimension 1 Code");
                    PurchaseRequest.SetRange("Vendor No.", Rec."Vendor No.");
                    IF NOT PurchaseRequest.FindFirst()
                    then begin
                        Clear(Vendor);
                        Vendor.Get(Rec."Vendor No.");
                        Clear(PurchaseRequest);
                        PurchaseRequest.Init();
                        PurchaseRequest.Date := REc."Order Date";
                        PurchaseRequest."Location Code" := Rec."Location Code";
                        PurchaseRequest.Status := PurchaseRequest.Status::Open;
                        PurchaseRequest."Global Dimension 1 Code" := rec."Shortcut Dimension 1 Code";
                        PurchaseRequest."Currency Code" := Rec."Currency Code";
                        PurchaseRequest."Vendor No." := Rec."Vendor No.";
                        PurchaseRequest."VAT Bus. Posting Group" := Vendor."VAT Bus. Posting Group";
                        PurchaseRequest."Sales Order No." := Rec."Demand Order No.";
                        Clear(ProjectPlanningLines);//17/02/2025
                        IF ProjectPlanningLines.Get(Rec."Job No.", Rec."Job Task No.", Rec."Job Planning Line No.") then begin
                            //AN 06/04/2025
                            PurchaseRequest.Validate("Project No.", ProjectPlanningLines."Job No.");
                        end;
                        PurchaseRequest.Insert(true);

                    end;
                    LineNo := LineNo + 10000;
                    Clear(PurchaseRequestLine);
                    PurchaseRequestLine.Init();
                    PurchaseRequestLine."Document No." := PurchaseRequest."No.";
                    PurchaseRequestLine."Line No." := LineNo;
                    PurchaseRequestLine.Insert();
                    //  PurchaseRequestLine.CalcFields("Main Stock");
                    PurchaseRequestLine.Type := PurchaseRequestLine.Type::Item;
                    PurchaseRequestLine.Validate("Item No.", Rec."No.");
                    Clear(Item);
                    item.Get(Rec."No.");
                    PurchaseRequestLine.Description := item.Description;
                    PurchaseRequestLine."Item Description" := item.Description;

                    PurchaseRequestLine.Validate(Quantity, Rec."Demand Quantity");
                    Clear(ProjectPlanningLines);//17/02/2025
                    IF ProjectPlanningLines.Get(Rec."Job No.", Rec."Job Task No.", Rec."Job Planning Line No.") then begin
                        //AN 6/13/2025
                        PurchaseRequestLine.Validate("Unit of Measure Code", ProjectPlanningLines."Unit of Measure Code");
                        //AN 06/04/2025
                        PurchaseRequestLine.Validate("Project No.", ProjectPlanningLines."Job No.");

                    end;

                    PurchaseRequestLine.Validate(Amount, PurchaseRequestLine.Quantity * PurchaseRequestLine."Unit Cost");


                    PurchaseRequestLine."Document Type" := PurchaseRequestLine."Document Type"::"Purchase Order";
                    PurchaseRequestLine.Validate("Document Reference", Rec."Vendor No.");
                    PurchaseRequestLine.Validate("Shortcut Dimension 1 Code", REc."Shortcut Dimension 1 Code");
                    PurchaseRequestLine.Validate("Shortcut Dimension 2 Code", Rec."Shortcut Dimension 2 Code");
                    PurchaseRequestLine.Validate("Shortcut Dimension 3 Code", Rec."Shortcut Dimension 3 Code");
                    PurchaseRequestLine.Validate("Shortcut Dimension 4 Code", REc."Shortcut Dimension 4 Code");
                    PurchaseRequestLine.Validate("Shortcut Dimension 5 Code", Rec."Shortcut Dimension 5 Code");
                    PurchaseRequestLine.Validate("Shortcut Dimension 6 Code", Rec."Shortcut Dimension 6 Code");
                    PurchaseRequestLine.Validate("Shortcut Dimension 7 Code", REc."Shortcut Dimension 7 Code");
                    PurchaseRequestLine.Validate("Shortcut Dimension 8 Code", Rec."Shortcut Dimension 8 Code");

                    PurchaseRequestLine."PO Status" := PurchaseRequestLine."PO Status"::"Not Ordered";
                    PurchaseRequestLine."PO No." := Rec."PO No.";
                    PurchaseRequestLine."PO Line No" := Rec."PO Line No";





                    PurchaseRequestLine.Modify();

                    if PurchaseRequestLine."PO No." <> '' then begin
                        PurchaseRequestLine."PO Status" := PurchaseRequestLine."PO Status"::Created;
                        PurchaseRequestLine.Modify();
                    end;
                until Rec.Next() = 0;
        end;
        Clear(PurchaseRequest);
        PurchaseRequest.SetRange("Global Dimension 1 Code", Rec."Shortcut Dimension 1 Code");
        Page.Run(page::"Purchase Request List", PurchaseRequest);

    end;




    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        PurchaseRequest: Record "Purchase Request Header";
        RequisitionLine: Record "Requisition Line";

    begin
        Rec.SetRange("No.");
        RequisitionLine.SetRange("Worksheet Template Name", Rec."Worksheet Template Name");
        RequisitionLine.SetRange("Journal Batch Name", Rec."Journal Batch Name");
        if RequisitionLine.FindFirst() then
            repeat
                Clear(PurchaseRequest);
                PurchaseRequest.SetRange("Global Dimension 1 Code", RequisitionLine."Shortcut Dimension 1 Code SIGMA");
                PurchaseRequest.SetRange("Vendor No.", RequisitionLine."Vendor No.");
                if PurchaseRequest.FindSet() then
                    repeat
                        PurchaseRequest.Assigned := false;
                        PurchaseRequest.Modify();
                    until PurchaseRequest.Next() = 0;
            until RequisitionLine.Next() = 0;
    end;

    //AN 04/04/2025
    local procedure EditableAppendPO(): Boolean
    var
        myInt: Integer;
    begin
        if Rec."PO No." <> '' then
            EditAppendPO := false
        else if Rec."PO No." = '' then
            EditAppendPO := true;
        exit(EditAppendPO);
    end;

    var
        EditAppendPO: Boolean;
        CanSubmitPurchaseRequest: Boolean;
        Filters: Text;
}