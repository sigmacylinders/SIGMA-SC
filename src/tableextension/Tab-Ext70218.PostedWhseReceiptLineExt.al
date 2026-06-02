tableextension 70218 PostedWhseReceiptLineExt extends "Posted Whse. Receipt Line"
{
    fields
    {
        field(76136; "Container ID"; Code[50])
        {
            Caption = 'Container ID';
            DataClassification = CustomerContent;
        }
        field(76137; "BL ID"; Code[20])
        {
            Caption = 'BL ID';
            DataClassification = CustomerContent;
        }
        field(76138; "BL Number"; Code[50])
        {
            Caption = 'BL Number';
            DataClassification = CustomerContent;
        }
    }
}
