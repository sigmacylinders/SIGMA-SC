pageextension 70125 "O365 Activities extension" extends "O365 Activities"
{
    layout
    {
        // Add changes to page layout here
        addafter("Ongoing Sales")
        {
            cuegroup(" Master Data")
            {
                field("Intermediate Items"; Rec."Intermediate Items")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Intermediate Items field.', Comment = '%';
                    DrillDownPageId = "Intermediate Items";
                }
                field("Intermediate Vendors"; Rec."Intermediate Vendors")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Intermediate Vendors field.', Comment = '%';
                    DrillDownPageId = "Intermediate Vendors List";
                }
                field("Intermediate Customers"; Rec."Intermediate Customers")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Intermediate Customers field.', Comment = '%';
                    DrillDownPageId = "Intermediate Customers List";
                }
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