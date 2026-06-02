pageextension 70203 "Vendor ledger extension" extends "Vendor Ledger Entries"
{
    layout
    {
        // Add changes to page layout here
        addafter("Amount (LCY)")
        {
            field("Purchase (LCY)"; Rec."Purchase (LCY)")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Purchase (LCY) field.', Comment = '%';
            }
            field("PI Reference"; Rec."PI Reference")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Proforma Invoice (PI) reference copied from the Posted Purchase Invoice during posting.';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}