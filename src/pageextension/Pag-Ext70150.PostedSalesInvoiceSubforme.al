pageextension 70150 "Posted Sales Invoice Subform e" extends "Posted Sales Invoice Subform"
{
    layout
    {
        // Add changes to page layout here

        addafter("ShortcutDimCode[8]")
        {
            field("Sales Credit Memo No."; Rec."Sales Credit Memo No.")
            {
                ApplicationArea = All;
                DrillDownPageId = "Sales Credit Memos";
            }
            field("Sales Cr Memo Line No."; Rec."Sales Cr Memo Line No.")
            {
                ApplicationArea = All;
            }
            field("Order No."; Rec."Order No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Order No. field.', Comment = '%';
            }
            field("Order Line No."; Rec."Order Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Order Line No. field.', Comment = '%';
            }
            field("SIGMA Purchase Order Line No."; Rec."SIGMA Purchase Order Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SIGMA Purchase Order Line No. field.', Comment = '%';
            }
            field("SIGMA Purchase Order No."; Rec."SIGMA Purchase Order No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SIGMA Purchase Order No. field.', Comment = '%';
            }
            field("Batch Number"; Rec."Batch Number")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Batch Number field.', Comment = '%';
            }
         
            field("Amount Including VAT"; Rec."Amount Including VAT")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the net amount, including VAT, for this line.';
            }
            field("Currency Code"; Rec."Currency Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Currency Code field.', Comment = '%';
            }
            field("Currency Factor"; Rec."Currency Factor")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Currency Factor field.', Comment = '%';
            }
            field("Job Planning Line No."; Rec."Job Planning Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Project Planning Line No. field.', Comment = '%';
            }
            field("Line is Splitted"; Rec."Line is Splitted")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Line is Splitted field.', Comment = '%';
            }

            field("Splitted Line No."; Rec."Splitted Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Splitted Line No. field.', Comment = '%';
            }
            field("VO Number"; Rec."VO Number")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the VO Number field.', Comment = '%';
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