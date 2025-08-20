tableextension 70101 "Purchg inv line extensi9on" extends "Purch. Inv. Line"
{
    fields
    {
        // Add changes to table fields here

        field(70105; "Initial ETR"; Date)//Created on 28/10/2024 with Nathalie
        {
            Caption = 'Initial ETR';
        }
        field(70106; "Initial ETD"; Date)
        {
            Caption = 'Initial ETD';
        }
        field(70107; "Initial ETA"; Date)
        {
            Caption = 'Initial ETA';
        }
        field(70108; "Initial ETAW"; Date)
        {
            Caption = 'Initial ETAW';
        }
        field(70109; "BL/AWB ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70110; "Container ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70120; "Final ETR"; Date)
        {
            Caption = 'Final ETR';
        }
        field(70121; "Final ETD"; Date)
        {
            Caption = 'Final ETD';
        }
        field(70122; "Final ETA"; Date)
        {
            Caption = 'Final ETA';
        }
        field(70123; "ATA"; Date)
        {
            Caption = 'ATA';
        }
        field(70124; "Final ETAW"; Date)
        {
            Caption = 'Final ETAW';
        }
        field(70125; "Container Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70128; "Truck WayBill ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70129; "Truck Details ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70130; "Truck Details Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70133; "Shipping By"; Option)//added on 27/01/2025
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Sea,Air,InLand;
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