table 70100 "PO Import Buffer"
{
    Caption = 'PO Import Buffer';
    fields
    {
        field(70100; "Document Type"; Enum "Purchase Document Type")
        {
            Caption = 'Document Type';
        }
        field(70101; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Purchase Header"."No." where("Document Type" = field("Document Type"));
        }
        field(70102; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(70103; Type; Enum "Purchase Line Type")
        {
            Caption = 'Type';
        }

        field(70104; "No."; Code[20])
        {
        }
        field(70107; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(70105; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
        }

        field(70108; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(70109; "Direct Unit Cost"; Decimal)
        {
        }
        field(70125; "Line Amount"; Decimal)
        {
        }
        field(70110; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;

        }
        field(70111; "Line Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
        }
        field(70106; "Expected Receipt Date"; Date)
        { }
        field(70128; "Planned Receipt Date"; Date)
        {
        }
        field(70127; "Promised Receipt Date"; Date)
        {
        }
        field(70126; "Requested Receipt Date"; Date)
        {
            Caption = 'Requested Receipt Date';

        }
        field(70112; "Shortcut Dimension 1 Code"; Code[20])
        {
        }

        field(70113; "Shortcut Dimension 2 Code"; Code[20])
        {
        }
        field(70114; "Shortcut Dimension 3 Code"; Code[20])
        {
        }
        field(70115; "Shortcut Dimension 4 Code"; Code[20])
        {
        }
        field(70116; "Shortcut Dimension 5 Code"; Code[20])
        {
        }
        field(70117; "Shortcut Dimension 6 Code"; Code[20])
        {
        }
        field(70118; "Shortcut Dimension 7 Code"; Code[20])
        {
        }
        field(70119; "Shortcut Dimension 8 Code"; Code[20])
        {
        }
        field(70120; MODIFIED; Boolean)
        {
        }

        field(70121; "Initial ETR"; Date)//Created on 28/10/2024 with Nathalie
        {
            Caption = 'Initial ETR';
        }
        field(70122; "Initial ETD"; Date)
        {
            Caption = 'Initial ETD';
        }
        field(70123; "Initial ETA"; Date)
        {
            Caption = 'Initial ETA';
        }
        field(70124; "Initial ETAW"; Date)
        {
            Caption = 'Initial ETAW';
        }
    }
    keys
    {
        key(Key1; "Document Type", "Document No.", "Line No.")
        {
        }
    }
}