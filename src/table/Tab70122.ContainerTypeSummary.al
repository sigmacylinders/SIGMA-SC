table 70122 "Container Type Summary"
{
    DataClassification = ToBeClassified;
    //SC.AI 02/09/2025
    fields
    {
        field(1; "Booking No."; Code[20])
        {
            Caption = 'Booking No.';
        }

        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            AutoIncrement = true;
        }

        field(3; "Container Type"; Text[50])
        {
            Caption = 'Container Type';
            TableRelation = "SIGMA Lookup".Code where(Type = const(Fitting));
        }

        field(4; "QTY"; Integer)
        {
            Caption = 'QTY';
        }
    }

    keys
    {
        key(PK; "Booking No.", "Line No.") { Clustered = true; }
    }
}
