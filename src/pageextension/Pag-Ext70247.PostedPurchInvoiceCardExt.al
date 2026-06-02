pageextension 70247 "Posted Purch Invoice Card Ext" extends "Posted Purchase Invoice"
{
    layout
    {
        addafter("Vendor Invoice No.")
        {
            field("PI Reference"; Rec."PI Reference")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Proforma Invoice (PI) reference carried over from the originating Purchase Order.';
            }
        }
    }
}
