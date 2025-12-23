table 70125 "FreightsTimeline"
{
    Caption = 'Freights Timeline';
    DataClassification = ToBeClassified;
    LookupPageId = "Freights Timeline List";
    DrillDownPageId = "Freights Timeline List";

    fields
    {
        field(1; "ID"; Integer)
        {
            Caption = 'ID';
            AutoIncrement = true;
            DataClassification = SystemMetadata;
        }

        field(2; "Type"; Text[50])
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
        }

        field(3; "Date Time"; DateTime)
        {
            Caption = 'Date Time';
            DataClassification = ToBeClassified;
        }

        field(4; "Location"; Text[100])
        {
            Caption = 'Location';
            DataClassification = ToBeClassified;
        }

        field(5; "Subevent"; Text[50])
        {
            Caption = 'Subevent';
            DataClassification = ToBeClassified;
        }

        field(6; "Description"; Text[250])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }

        field(7; "Carriage Type"; Text[50])
        {
            Caption = 'Carriage Type';
            DataClassification = ToBeClassified;
        }
        field(8; "freights ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(22; "BL Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Container ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(19; "Transhipment"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "ID")
        {
            Clustered = true;
        }
    }
}
