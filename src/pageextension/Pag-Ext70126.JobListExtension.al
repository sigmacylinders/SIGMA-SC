pageextension 70126 "Job List Extension" extends "Job List"
{
    layout
    {
        // Add changes to page layout here
        addafter("Bill-to Customer No.")
        {
            field("Bill-to Name"; Rec."Bill-to Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the name of the customer that you send or sent the invoice or credit memo to.';
            }
            field(SystemCreatedAt; Rec.SystemCreatedAt)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
            }
        }


        addafter(Description)
        {

            field("Location Code"; Rec."Location Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the location code of the project.';
            }
            field("Starting Date"; Rec."Starting Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the date on which the project actually starts.';
            }
            field("Ending Date"; Rec."Ending Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the date on which the project is expected to be completed.';
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