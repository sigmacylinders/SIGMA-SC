tableextension 70115 "SalesShipmentLine extension" extends "Sales Shipment Line"
{
    fields
    {
        // Add changes to table fields here
        field(70106; "Batch Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70107; "SIGMA Purchase Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70108; "SIGMA Purchase Order Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70109; "Line is Splitted"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70110; "Splitted Line No."; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70111; "Original PO Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70112; "Original Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70113; "VO Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}