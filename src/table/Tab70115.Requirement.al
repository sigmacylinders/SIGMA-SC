
table 70115 "Requirement"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(70100; "Truck Type"; enum "Truck Type")
        {
            DataClassification = ToBeClassified;
        }
        field(70101; "Truck Load CBM"; enum "Truck Load CBM")
        {
            DataClassification = ToBeClassified;
        }
        field(70102; "Tonnage"; enum Tonnage)
        {
            DataClassification = ToBeClassified;
        }
        field(70103; "Qty of Truck"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70104; "Fitting"; Text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const(Fitting));
        }
        field(70105; "Qty of CTR"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70106; "Comparison ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70107; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70108; "Quotation Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Clearance,Sea,Air,Inlnand;//added Inland on 17/01/2025
        }
    }

    keys
    {
        key(PK; "Comparison ID", "Line No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        // Add your code here
    end;

    trigger OnModify()
    begin
        // Add your code here
    end;

    trigger OnDelete()
    begin
        // Add your code here
    end;
}