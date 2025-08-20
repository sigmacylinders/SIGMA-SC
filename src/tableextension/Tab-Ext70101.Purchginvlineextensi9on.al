tableextension 70101 "Purchg inv line extensi9on" extends "Purch. Inv. Line"
{
    fields
    {
        // Add changes to table fields here

        field(70100; "Initial ETR"; Date)//Created on 28/10/2024 with Nathalie
        {
            Caption = 'Initial ETR';
        }
        field(70101; "Initial ETD"; Date)
        {
            Caption = 'Initial ETD';
        }
        field(70102; "Initial ETA"; Date)
        {
            Caption = 'Initial ETA';
        }
        field(70103; "Initial ETAW"; Date)
        {
            Caption = 'Initial ETAW';
        }
        field(70104; "BL/AWB ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70105; "Container ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70106; "Final ETR"; Date)
        {
            Caption = 'Final ETR';
        }
        field(70107; "Final ETD"; Date)
        {
            Caption = 'Final ETD';
        }
        field(70108; "Final ETA"; Date)
        {
            Caption = 'Final ETA';
        }
        field(70109; "ATA"; Date)
        {
            Caption = 'ATA';
        }
        field(70110; "Final ETAW"; Date)
        {
            Caption = 'Final ETAW';
        }
        field(70111; "Container Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70112; "Truck WayBill ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70113; "Truck Details ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70114; "Truck Details Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70115; "Shipping By"; Option)//added on 27/01/2025
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Sea,Air,InLand;
        }
        field(70116; "Port of Loading"; Code[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("BL Details"."Port of Loading" where("BL ID" = field("BL/AWB ID")));
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