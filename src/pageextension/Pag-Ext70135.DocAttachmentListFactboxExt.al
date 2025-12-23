pageextension 70135 "DocAttachmentListFactboxExt " extends "Doc. Attachment List Factbox"
{
    layout
    {
        //AN 03/07/25
        addafter("File Extension")
        {


            field(FileSizeTxt; Rec.FileSizeTxt)
            {
                ApplicationArea = All;
                Caption = 'File Size';
                Editable = false;
                ToolTip = 'The size of the file in KB or MB';
            }
        }
        addbefore(Name)
        {
            field("Attachment ID"; Rec."Attachment ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Attachment ID field.', Comment = '%';
            }
        }
    }
}
