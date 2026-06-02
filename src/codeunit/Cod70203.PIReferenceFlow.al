codeunit 70203 "PI Reference Flow"
{
    // Propagates the custom "PI Reference" field from Purchase Header through the posting chain:
    //
    //   Purchase Header
    //        ->  Purch. Inv. Header        (OnAfterPurchInvHeaderInsert in Codeunit "Purch.-Post")
    //        ->  Vendor Ledger Entry       (OnAfterInitVLedgEntry      in Codeunit "Gen. Jnl.-Post Line")
    //        ->  G/L Entry                 (OnBeforeInsertGLEntry      in Codeunit "Gen. Jnl.-Post Line")
    //
    // For VLE and GLE the source is looked up by GenJnlLine."Document No." against Purch. Inv. Header,
    // because the posted invoice header is already inserted earlier in the posting cycle.

    Permissions = tabledata "Purch. Inv. Header" = rm,
                  tabledata "Vendor Ledger Entry" = rm,
                  tabledata "G/L Entry" = rm;

    // --- Purchase Header -> Posted Purchase Invoice Header ---
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePurchInvHeaderInsert', '', false, false)]
    local procedure CopyPIRefToPurchInvHeader(var PurchInvHeader: Record "Purch. Inv. Header"; var PurchHeader: Record "Purchase Header"; CommitIsSupressed: Boolean)
    begin
        if PurchHeader."PI Reference" = '' then
            exit;

        PurchInvHeader."PI Reference" := PurchHeader."PI Reference";
        //  PurchInvHeader.Modify(false);
    end;

    // --- Posted Purchase Invoice -> Vendor Ledger Entry ---
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforeVendLedgEntryInsert', '', false, false)]
    local procedure CopyPIRefToVendLedgEntry(var VendorLedgerEntry: Record "Vendor Ledger Entry"; var GenJournalLine: Record "Gen. Journal Line"; GLRegister: Record "G/L Register")
    var
        PurchInvHeader: Record "Purch. Inv. Header";
    begin
        if not IsPurchaseInvoiceContext(GenJournalLine) then
            exit;

        if not PurchInvHeader.Get(GenJournalLine."Document No.") then
            exit;

        if PurchInvHeader."PI Reference" = '' then
            exit;

        VendorLedgerEntry."PI Reference" := PurchInvHeader."PI Reference";
    end;

    // --- Posted Purchase Invoice -> G/L Entry ---
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforeInsertGLEntry', '', false, false)]
    local procedure CopyPIRefToGLEntry(var GLEntry: Record "G/L Entry"; GenJnlLine: Record "Gen. Journal Line")
    var
        PurchInvHeader: Record "Purch. Inv. Header";
    begin
        if not IsPurchaseInvoiceContext(GenJnlLine) then
            exit;

        if not PurchInvHeader.Get(GenJnlLine."Document No.") then
            exit;

        if PurchInvHeader."PI Reference" = '' then
            exit;

        GLEntry."PI Reference" := PurchInvHeader."PI Reference";
    end;

    /// <summary>
    /// Only fire the lookup for postings that originated from a Purchase Invoice — keeps
    /// the subscribers cheap on Gen. Journal, Sales, Service and other posting flows.
    /// </summary>
    local procedure IsPurchaseInvoiceContext(GenJnlLine: Record "Gen. Journal Line"): Boolean
    begin
        exit(GenJnlLine."Document Type" = GenJnlLine."Document Type"::Invoice);
    end;
}
