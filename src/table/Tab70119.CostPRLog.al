table 70119 "Cost PR Log"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }
        field(2; "PR Number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "PR Line Number"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Item Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item where(Blocked = const(false));
        }
        field(5; "Location Code"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location.Code where("Use As In-Transit" = const(false));
        }

        field(6; "Old Cost"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "New Cost"; decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(8; "Project No."; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Project planning Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Created By"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Old Qty"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "New Qty"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "old Item number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "new Item number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}