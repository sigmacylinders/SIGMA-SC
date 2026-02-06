tableextension 70204 "User Setup Extension" extends "User Setup"
{
    fields
    {
        // Add changes to table fields here

        field(70200; "Remove PO lines from Container"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Can Remove PO lines from Container';
        }
        field(70201; "Can Restore Sales Order"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70202; "Can Remove Line in BL/AWB"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(70203; "Can Edit Budget Control"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70204; "Can Change Agent From Header"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(70205; "Can AttachFilesGreaterthan3MB"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Can Attach Files Greater than 3MB';
        }

        field(70206; "Can Edit Attachment ID"; Boolean)
        {
            DataClassification = ToBeClassified;
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