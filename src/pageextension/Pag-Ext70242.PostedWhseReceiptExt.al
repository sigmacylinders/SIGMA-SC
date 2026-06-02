pageextension 70242 PostedWhseReceiptExt extends "Posted Whse. Receipt Subform"
{
    layout
    {
        addafter("Due Date")
        {
            field("Container ID"; Rec."Container ID")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the Container ID from the purchase line.';
            }
            field("BL ID"; Rec."BL ID")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the BL ID from the purchase line.';
            }
            field("BL Number"; Rec."BL Number")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the BL Number from the purchase line.';
            }
        }
    }
}
