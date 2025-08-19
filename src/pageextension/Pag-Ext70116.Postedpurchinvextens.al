pageextension 70116 "Posted purch inv extens" extends "Posted Purchase Invoices"
{
    layout
    {
        // Add changes to page layout here
        addafter(Corrective)
        {
            field("posted Receipts"; Rec."posted Receipts")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the posted Receipts field.', Comment = '%';
            }

            field("Order Date"; Rec."Order Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Order Date field.', Comment = '%';
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