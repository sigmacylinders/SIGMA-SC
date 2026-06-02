pageextension 70248 "General Ledger Entries Ext" extends "General Ledger Entries"
{
    layout
    {
        addafter("External Document No.")
        {
            field("PI Reference"; Rec."PI Reference")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Proforma Invoice (PI) reference copied from the related Posted Purchase Invoice during posting.';
            }
        }
    }
}
