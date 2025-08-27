table 70118 "Cost Variation LOG"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(70100; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }
        field(70101; "PO Number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70102; "PO Line Number"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(70103; "SO Number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70104; "SO Line Number"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70105; "Item Number"; Code[20])//for batch posting
        {
            DataClassification = ToBeClassified;
            TableRelation = Item where(Blocked = const(false));
        }
        field(70106; "Location Code"; Code[50])//for batch posting
        {
            DataClassification = ToBeClassified;
            TableRelation = Location.Code where("Use As In-Transit" = const(false));
        }
        field(70107; "Batch Number"; Code[50])//for batch posting
        {
            DataClassification = ToBeClassified;
        }
        field(70108; "Old Cost"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70109; "New Cost"; decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70110; "Project No."; Code[50])//added on 27/03/2025
        {
            DataClassification = ToBeClassified;
        }
        field(70111; "Project planning Line No."; Integer)//added on 27/03/2025
        {
            DataClassification = ToBeClassified;
        }
        field(70112; "Created By"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(70113; "Old Price"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70114; "New Price"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70115; "old Item number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70116; "new Item number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70117; "old Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70118; "new Quantity"; Decimal)
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