tableextension 70206 "PurchaseReceiptLine extension" extends "Purch. Rcpt. Line"
{
    fields
    {
        // Add changes to table fields here

        field(70200; "ETR"; Date)//Created on 28/10/2024 with Nathalie
        {
            Caption = 'ETR';
        }
        field(70201; "ETD"; Date)
        {
            Caption = 'ETD';
        }
        field(70202; "ETA"; Date)
        {
            Caption = 'ETA';
        }
        field(70203; "ETAW"; Date)
        {
            Caption = 'ETAW';
        }
        field(70204; "BL/AWB ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70205; "Container ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70206; "FTR"; Date)
        {
            Caption = 'FTR';
        }
        field(70207; "FTD"; Date)
        {
            Caption = 'FTD';
        }
        field(70208; "FTA"; Date)
        {
            Caption = 'FTA';
        }
        field(70209; "ATA"; Date)
        {
            Caption = 'ATA';
        }
        field(70210; "FTAW"; Date)
        {
            Caption = 'FTAW';
        }
        field(70211; "Container Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(70212; "Truck WayBill ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70213; "Truck Details ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70214; "Truck Details Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(70215; "Shipping By"; Option)//added on 27/01/2025
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Sea,Air,InLand;
        }
        field(70216; "Port of Loading"; Code[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("BL Details"."Port of Loading" where("BL ID" = field("BL/AWB ID")));
        }
        field(70217; "Quantity to Split"; Decimal)
        {
            DataClassification = ToBeClassified;
            BlankZero = true;
        }
        field(70218; "Remaining Quantity to Split"; Decimal)
        {
            DataClassification = ToBeClassified;
            BlankZero = true;
        }
        field(70219; "Line is Splitted"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70220; "Splitted Line No."; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70221; "Original Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70222; "Original Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70232; "Shipment Delivery Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ","Early","On Time","Delayed";
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