pageextension 70134 "Sales Credit memo Subform" extends "Sales Cr. Memo Subform"
{
    layout
    {
        // Add changes to page layout here

        modify("Job No.")
        {
            Editable = true;
            Visible = false;
        }
        modify("Job Task No.")
        { Editable = false; Visible = true; }

        addafter("Job Task No.")
        {
            field("Job Contract Entry No."; Rec."Job Contract Entry No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the entry number of the project planning line that the sales line is linked to.';
                Editable = false;
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