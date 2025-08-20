pageextension 70113 "Bank Accounts extension" extends "Bank Account List"
{
    layout
    {
        addafter(Control1900383207)
        {

            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = const(Database::"Bank Account"),
                              "No." = field("No.");
                // "Document Type" = field("Document Type");
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