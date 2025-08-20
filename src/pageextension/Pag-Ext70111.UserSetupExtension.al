pageextension 70111 "User Setup Extension" extends "User Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter(PhoneNo)
        {

            field("Remove PO lines from Container"; Rec."Remove PO lines from Container")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Can Remove PO lines from Container field.', Comment = '%';
            }

            field("Can Restore Sales Order"; Rec."Can Restore Sales Order")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Can Restore Sales Order field.', Comment = '%';
            }
            field("Can Remove Line in BL/AWB"; Rec."Can Remove Line in BL/AWB")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Can Remove Line in BL/AWB field.', Comment = '%';
            }
            field("Can Edit Budget Control"; Rec."Can Edit Budget Control")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Can Edit Budget Control field.', Comment = '%';
            }
            field("Can Change Agent From Header"; Rec."Can Change Agent From Header")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Can Change Agent From Header field.', Comment = '%';
            }


            field("Can AttachFilesGreaterthan3MB"; Rec."Can AttachFilesGreaterthan3MB")
            {
                ApplicationArea = All;
            }
            field("Can Edit Attachment ID"; Rec."Can Edit Attachment ID")
            {
                ApplicationArea = All;
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