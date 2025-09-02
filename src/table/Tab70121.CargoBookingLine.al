table 70121 "Cargo Booking Line"
{
    DataClassification = ToBeClassified;
    //SC.AI 02/09/2025
    fields
    {
        field(1; "Line No."; Integer) { AutoIncrement = true; }
        field(2; "Booking No."; Code[20]) { TableRelation = "Cargo Booking Header"; }
        field(3; "PO No."; Code[20])
        {
            TableRelation = "Purchase Header"."No." where("Document Type" = const(Order));
        }
        field(4; "Vendor"; Text[100])
        {
            TableRelation = Vendor;
        }
        field(5; "POL"; Text[50])
        {
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port));
        }
        field(6; "Readiness Date"; Date) { }
        field(7; "Quantity"; Decimal) { }
        field(8; "Weight (kg)"; Decimal) { }
        field(9; "CBM"; Decimal) { }
        field(10; "Dimensions"; Text[50]) { }
        field(11; "HS Code / Description"; Text[100]) { }
    }

    keys
    {
        key(PK; "Booking No.", "Line No.") { Clustered = true; }
    }
}
