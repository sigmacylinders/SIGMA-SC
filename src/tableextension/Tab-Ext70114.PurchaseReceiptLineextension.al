tableextension 70114 "PurchaseReceiptLine extension" extends "Purch. Rcpt. Line"
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
        field(70111; "SIGMA Sales Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70112; "SIGMA Sales Order Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70113; "Quantity Shipped"; Decimal)//from the vendor's country
        {
            DataClassification = ToBeClassified;
            BlankZero = true;


        }
        field(70114; "Remaining Quantity Shipped"; Decimal)
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
        field(70119; "Disable fields after Shipping"; Boolean)
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
        field(70126; "VO Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70127; "Batch Number"; Code[50])
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