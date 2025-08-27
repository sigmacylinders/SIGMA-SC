table 70119 "Cost PR Log"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(70100; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }
        field(70101; "PR Number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70102; "PR Line Number"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70103; "Item Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item where(Blocked = const(false));
        }
        field(70104; "Location Code"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location.Code where("Use As In-Transit" = const(false));
        }

        field(70105; "Old Cost"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70106; "New Cost"; decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70107; "Project No."; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70108; "Project planning Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70109; "Created By"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(70110; "Old Qty"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70111; "New Qty"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70112; "old Item number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70113; "new Item number"; Code[50])
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