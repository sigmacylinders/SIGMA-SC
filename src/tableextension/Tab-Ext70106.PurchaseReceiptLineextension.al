tableextension 70106 "PurchaseReceiptLine extension" extends "Purch. Rcpt. Line"
{
    fields
    {
        // Add changes to table fields here

        field(70100; "ETR"; Date)//Created on 28/10/2024 with Nathalie
        {
            Caption = 'ETR';
        }
        field(70101; "ETD"; Date)
        {
            Caption = 'ETD';
        }
        field(70102; "ETA"; Date)
        {
            Caption = 'ETA';
        }
        field(70103; "ETAW"; Date)
        {
            Caption = 'ETAW';
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
            Caption = 'FTR';

        }
        field(70107; "FTD"; Date)
        {
            Caption = 'FTD';
        }
        field(70108; "FTA"; Date)
        {
            Caption = 'FTA';
        }
        field(70109; "ATA"; Date)
        {
            Caption = 'ATA';
        }
        field(70110; "FTAW"; Date)
        {
            Caption = 'FTAW';
        }
        field(70111; "Container Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70112; "Port of Loading"; Code[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("BL Details"."Port of Loading" where("BL ID" = field("BL/AWB ID")));
        }
        field(70113; "Quantity to Split"; Decimal)
        {
            DataClassification = ToBeClassified;
            BlankZero = true;
        }
        field(70114; "Remaining Quantity to Split"; Decimal)
        {
            DataClassification = ToBeClassified;
            BlankZero = true;
        }
        field(70115; "Line is Splitted"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70116; "Splitted Line No."; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70117; "Original Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70118; "Original Line No."; Integer)
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