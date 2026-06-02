pageextension 70208 "Posted purch inv extens" extends "Posted Purchase Invoices"
{
    layout
    {
        // Add changes to page layout here
        addafter(Corrective)
        {
            field("Order Date"; Rec."Order Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Order Date field.', Comment = '%';
            }
            field("PI Reference"; Rec."PI Reference")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Proforma Invoice (PI) reference carried over from the originating Purchase Order.';
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