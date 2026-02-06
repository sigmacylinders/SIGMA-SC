pageextension 70241 "Purchase lines page extension" extends "Purchase Lines"
{
    Editable = true;
    layout
    {
        // Add changes to page layout here
        addafter(Quantity)
        {
            field("Quantity to Split"; Rec."Quantity to Split")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Quantity Shipped field.', Comment = '%';
                // Editable = false;
                // Enabled = false;     
                DecimalPlaces = 0 : 5;
                Editable = (Rec."Quantity to Split" = 0);

                trigger OnValidate()
                begin
                    Rec.SplitPurchaseLine();
                    CurrPage.Update(false);
                end;
            }
            field("Remaining Quantity to Split"; Rec."Remaining Quantity to Split")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Remaining Quantity Shipped field.', Comment = '%';
                Editable = false;
                Enabled = false;
                DecimalPlaces = 0 : 5;
            }
            field("Splitted Line No."; Rec."Splitted Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Splitted Line No. field.', Comment = '%';
                Editable = false;
                Enabled = false;
            }
            field("Line is Splitted"; Rec."Line is Splitted")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Line is Splitted field.', Comment = '%';
                Editable = false;
                Enabled = false;
            }
            field("Original Quantity"; Rec."Original Quantity")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Original Quantity field.', Comment = '%';
                Editable = false;
                Enabled = false;
                BlankZero = true;
                DecimalPlaces = 0 : 5;
            }
            field("Original Line No."; Rec."Original Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Original Line No. field.', Comment = '%';
                Editable = false;
                Enabled = false;
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