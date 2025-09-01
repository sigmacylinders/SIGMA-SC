tableextension 70106 "PurchaseReceiptLine extension" extends "Purch. Rcpt. Line"
{
    fields
    {
        // Add changes to table fields here

        field(70100; "ETR"; Date)//Created on 28/10/2024 with Nathalie
        {
            Caption = 'Initial ETR';
        }
        field(70101; "ETD"; Date)
        {
            Caption = 'Initial ETD';
        }
        field(70102; "ETA"; Date)
        {
            Caption = 'Initial ETA';
        }
        field(70103; "ETAW"; Date)
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
        field(70106; "FTR"; Date)
        {
            Caption = 'Final ETR';

        }
        field(70107; "FTD"; Date)
        {
            Caption = 'Final ETD';
        }
        field(70108; "FTA"; Date)
        {
            Caption = 'Final ETA';
        }
        field(70109; "ATA"; Date)
        {
            Caption = 'ATA';
        }
        field(70110; "FTAW"; Date)
        {
            Caption = 'Final ETAW';
        }
        field(70111; "Container Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70116; "Port of Loading"; Code[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("BL Details"."Port of Loading" where("BL ID" = field("BL/AWB ID")));
        }
        field(70117; "Quantity to Split"; Decimal)
        {
            DataClassification = ToBeClassified;
            BlankZero = true;
        }
        field(70118; "Remaining Quantity to Split"; Decimal)
        {
            DataClassification = ToBeClassified;
            BlankZero = true;
        }
        field(70119; "Line is Splitted"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70120; "Splitted Line No."; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70121; "Original Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70122; "Original Line No."; Integer)
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