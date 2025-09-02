table 70118 "Cost Variation LOG"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }
        field(2; "PO Number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "PO Line Number"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(4; "SO Number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "SO Line Number"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Item Number"; Code[20])//for batch posting
        {
            DataClassification = ToBeClassified;
            TableRelation = Item where(Blocked = const(false));
        }
        field(7; "Location Code"; Code[50])//for batch posting
        {
            DataClassification = ToBeClassified;
            TableRelation = Location.Code where("Use As In-Transit" = const(false));
        }
        field(8; "Batch Number"; Code[50])//for batch posting
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Old Cost"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "New Cost"; decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(11; "Project No."; Code[50])//added on 27/03/2025
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Project planning Line No."; Integer)//added on 27/03/2025
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Created By"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Old Price"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(15; "New Price"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "old Item number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(17; "new Item number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(18; "old Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(19; "new Quantity"; Decimal)
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