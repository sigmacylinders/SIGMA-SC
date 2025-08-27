tableextension 70109 "Project Extension" extends Job
{
    fields
    {
        // Add changes to table fields here
        field(70100; "Attachment ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70101; "Document Attachment ID"; Integer)
        {

        }
        field(70102; "Document Attachment Table ID"; Integer)
        {

        }
        field(70103; "Document Attachment No."; Code[20])
        {

        }
        field(70104; "Document Attachment Doc. Type"; Enum "Attachment Document Type")
        {

        }
        field(70105; "Document Attachment Line No."; Integer)
        {
        }


    }



    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}