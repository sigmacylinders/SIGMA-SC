pageextension 70110 "Posted Purchase Rcpt. Subform " extends "Posted Purchase Rcpt. Subform"
{//Abdallah10102024
    layout
    {
        // Add changes to page layout here
        addafter(Quantity)
        {
            field("Item Charge Base Amount"; Rec."Item Charge Base Amount")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Item Charge Base Amount field.', Comment = '%';
            }
            field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the VAT Bus. Posting Group field.', Comment = '%';
            }
            field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the VAT Prod. Posting Group field.', Comment = '%';
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