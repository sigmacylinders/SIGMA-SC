tableextension 70109 "User Setup Extension" extends "User Setup"
{
    fields
    {
        // Add changes to table fields here
        field(70100; "Travel request Position"; Option)
        {
            Caption = 'Travel request Position';
            DataClassification = ToBeClassified;
            OptionMembers = " ","Manager","Project Manager","Finance";
        }

        field(70102; "Remove PO lines from Container"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Can Remove PO lines from Container';
        }
        field(70103; "Change Status of VO"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70104; "Can Restore Sales Order"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70105; "Can Remove Line in BL/AWB"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70106; "Change Status of SQ"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(70108; "Can Edit Budget Control"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70109; "Can Change Agent From Header"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(70120; "Can AttachFilesGreaterthan3MB"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Can Attach Files Greater than 3MB';
        }

        field(70123; "Can Edit Attachment ID"; Boolean)
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