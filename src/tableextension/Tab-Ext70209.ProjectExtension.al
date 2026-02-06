tableextension 70209 "Project Extension" extends Job
{
    fields
    {
        // Add changes to table fields here
        field(70200; "Attachment ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70201; "Document Attachment ID"; Integer)
        {

        }
        field(70202; "Document Attachment Table ID"; Integer)
        {

        }
        field(70203; "Document Attachment No."; Code[20])
        {

        }
        field(70204; "Document Attachment Doc. Type"; Enum "Attachment Document Type")
        {

        }
        field(70205; "Document Attachment Line No."; Integer)
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