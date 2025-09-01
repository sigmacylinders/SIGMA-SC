table 70105 "Supply Chain LOG"
{
    DataClassification = ToBeClassified;
    LookupPageId = "PO Batch LOG";
    DrillDownPageId = "PO Batch LOG";


    fields
    {
        field(70100; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }
        field(70101; "BL/AWB ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70102; "Container Number"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Container Details";
        }
        field(70103; "PO Number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70104; "PO Line Number"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70105; "ETR"; Date)//Created on 28/10/2024 with Nathalie
        {
            Caption = 'Initial ETR';
        }
        field(70106; "ETD"; Date)
        {
            Caption = 'Initial ETD';
        }
        field(70107; "ETA"; Date)
        {
            Caption = 'Initial ETA';
        }
        field(70108; "ETAW"; Date)
        {
            Caption = 'Initial ETAW';
        }
        field(70109; "FTR"; Date)
        {
            Caption = 'Final ETR';
        }
        field(70110; "FTD"; Date)
        {
            Caption = 'Final ETD';
        }
        field(70111; "FTA"; Date)
        {
            Caption = 'Final ETA';
        }
        field(70112; "ATA"; Date)
        {
            Caption = 'ATA';
        }
        field(70113; "FTAW"; Date)
        {
            Caption = 'Final ETAW';
        }
        field(70114; "Old Item"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70115; "New Item"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70116; "Old UOM"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70117; "New UOM"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70118; "Old Price"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70119; "New Price"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70120; "Old Qty"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70121; "New Qty"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70122; "SO Number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70123; "SO Line Number"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70124; "Item Number"; Code[20])//for batch posting
        {
            DataClassification = ToBeClassified;
            TableRelation = Item where(Blocked = const(false));
        }
        field(70125; "Location Code"; Code[50])//for batch posting
        {
            DataClassification = ToBeClassified;
            TableRelation = Location.Code where("Use As In-Transit" = const(false));
        }
        field(70126; "Batch Number"; Code[50])//for batch posting
        {
            DataClassification = ToBeClassified;
        }
        field(70127; "VO Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70128; "Old Cost"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70129; "New Cost"; decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70130; "Truck WayBill ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70131; "Truck Details ID"; Code[50])
        {
            DataClassification = ToBeClassified;
            //     TableRelation = "Container Details";
        }
        field(70132; "Project No."; Code[50])//added on 27/03/2025
        {
            DataClassification = ToBeClassified;
        }
        field(70133; "Project planning Line No."; Integer)//added on 27/03/2025
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}