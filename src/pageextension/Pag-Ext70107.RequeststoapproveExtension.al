pageextension 70107 "Requests to approve Extension" extends "Requests to Approve"
{
    layout
    {
        // Add changes to page layout here
        addafter(Amount)
        {
            field("Supplier Number"; Rec."Supplier Number")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Supplier Number field.', Comment = '%';
            }
            field("Supplier Name"; Rec."Supplier Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Supplier Name field.', Comment = '%';
            }
            field("Document No."; Rec."Document No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the document number copied from the relevant sales or purchase document, such as a purchase order or a sales quote.';
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