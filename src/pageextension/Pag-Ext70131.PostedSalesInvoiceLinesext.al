pageextension 70131 "Posted Sales Invoice Lines ext" extends "Posted Sales Invoice Lines"
{
    layout
    {
        // Add changes to page layout here
        addafter("Line Discount %")
        {

            // field("Order No."; Rec."Order No.")
            // {
            //     ApplicationArea = All;
            //     ToolTip = 'Specifies the value of the Order No. field.', Comment = '%';
            // }
            field("Order Line No."; Rec."Order Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Order Line No. field.', Comment = '%';
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