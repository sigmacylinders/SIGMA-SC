
table 70115 "Truck Details"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Seal Number"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Truck Type"; Enum "Truck Type")
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Truck Load CBM"; Enum "Truck Load CBM")
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Tonnage"; Enum "Tonnage")
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Loaded On Board"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Terminal Delivery Order Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Remarks"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "FTR"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "FTD"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "FTA"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "ATA"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "FTAW"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Truck WayBill ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Truck Details ID"; code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(16; "ETD"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(17; "ETA"; Date)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "Truck WayBill ID", "Line No.")
        { }
        key(key2; "Truck Details ID")
        { }
    }
}