pageextension 70243 WhseReceiptExt extends "Whse. Receipt Subform"
{
    layout
    {
        addafter("Qty. Outstanding")
        {
            field("Container ID"; Rec."Container ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Container ID from the purchase line.';
            }
            field("BL ID"; Rec."BL ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the BL ID from the purchase line.';
            }
            field("BL Number"; Rec."BL Number")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the BL Number from the purchase line.';
            }
        }
    }
}
