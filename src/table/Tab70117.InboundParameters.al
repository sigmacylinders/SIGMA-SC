table 70117 "Inbound Parameters"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(70100; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(70101; "Vendor No."; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor;
        }
        field(70102; "Target"; Decimal)
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