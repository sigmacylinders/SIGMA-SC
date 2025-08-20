pageextension 70127 "Payment Journal extensio" extends "Payment Journal"
{
    layout
    {
        // Add changes to page layout here

        addafter(IncomingDocAttachFactBox)
        {
            systempart(Control1905767508; Notes)
            {
                ApplicationArea = Notes;
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