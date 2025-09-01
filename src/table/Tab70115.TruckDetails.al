
table 70115 "Truck Details"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(70100; "Seal Number"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70101; "Truck Type"; Enum "Truck Type")
        {
            DataClassification = ToBeClassified;
        }
        field(70102; "Truck Load CBM"; Enum "Truck Load CBM")
        {
            DataClassification = ToBeClassified;
        }
        field(70103; "Tonnage"; Enum "Tonnage")
        {
            DataClassification = ToBeClassified;
        }
        field(70104; "Loaded On Board"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70105; "Terminal Delivery Order Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70106; "Remarks"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(70107; "FTR"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70108; "FTD"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70109; "FTA"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70110; "ATA"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70111; "FTAW"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70112; "Truck WayBill ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70113; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70114; "Truck Details ID"; code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70115; "ETD"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70116; "ETA"; Date)
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

enum 70103 "Truck Type"
{
    Extensible = true;
    //  DataClassification = ToBeClassified;

    value(0; "Flatbed")
    {
    }
    value(1; "Straight Truck")
    {
    }
    value(2; "Tanker Truck")
    {
    }
    value(3; "Refrigerated Truck")
    {
    }
    value(4; "Jumbo Trailer Truck")
    {
    }
    value(5; "Semi-Trailer Truck")
    {
    }
    value(6; "Dump Truck")
    {
    }
    value(7; "Box Truck")
    {
    }
    value(8; "Tail-Lift Truck")
    {
    }
}

enum 70104 "Truck Load CBM"
{
    Extensible = true;
    //  DataClassification = ToBeClassified;

    value(0; "9")
    {
    }
    value(1; "10")
    {
    }
    value(2; "16")
    {
    }
    value(3; "18")
    {
    }
    value(4; "19")
    {
    }
    value(5; "23")
    {
    }
    value(6; "25")
    {
    }
    value(7; "33")
    {
    }
    value(8; "34")
    {
    }
    value(9; "35")
    {
    }
    value(10; "36")
    {
    }
    value(11; "41")
    {
    }
    value(12; "43")
    {
    }
    value(13; "47")
    {
    }
    value(14; "50")
    {
    }
    value(15; "51")
    {
    }
    value(16; "76")
    {
    }
    value(17; "102")
    {
    }
}

enum 70105 "Tonnage"
{
    Extensible = true;
    //  DataClassification = ToBeClassified;

    value(0; "1")
    {
    }
    value(1; "3")
    {
    }
    value(2; "10")
    {
    }
    value(3; "15")
    {
    }
    value(4; "20")
    {
    }
    value(5; "30")
    {
    }
    value(6; "40")
    {
    }
}
