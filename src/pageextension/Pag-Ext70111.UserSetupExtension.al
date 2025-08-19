pageextension 70111 "User Setup Extension" extends "User Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter(PhoneNo)
        {
            field("Travel request Position"; Rec."Travel request Position")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Travel request Position field.', Comment = '%';
            }
            field("Remove PO lines from Container"; Rec."Remove PO lines from Container")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Can Remove PO lines from Container field.', Comment = '%';
            }
            field("Change Status of VO"; Rec."Change Status of VO")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Change Status of VO field.', Comment = '%';
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
            field("Change Status of SQ"; Rec."Change Status of SQ")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Change Status of SQ field.', Comment = '%';
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