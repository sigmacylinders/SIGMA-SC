table 70100 "PO Import Buffer"
{
    Caption = 'PO Import Buffer';
    fields
    {
        field(1; "Document Type"; Enum "Purchase Document Type")
        {
            Caption = 'Document Type';
        }
        field(2; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Purchase Header"."No." where("Document Type" = field("Document Type"));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Type; Enum "Purchase Line Type")
        {
            Caption = 'Type';
        }

        field(5; "No."; Code[20])
        {
        }
        field(8; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(6; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
        }

        field(9; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(10; "Direct Unit Cost"; Decimal)
        {
        }
        field(26; "Line Amount"; Decimal)
        {
        }
        field(11; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;

        }
        field(12; "Line Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
        }
        field(7; "Expected Receipt Date"; Date)
        { }
        field(29; "Planned Receipt Date"; Date)
        {
        }
        field(28; "Promised Receipt Date"; Date)
        {
        }
        field(27; "Requested Receipt Date"; Date)
        {
            Caption = 'Requested Receipt Date';

        }
        field(13; "Shortcut Dimension 1 Code"; Code[20])
        {
        }

        field(14; "Shortcut Dimension 2 Code"; Code[20])
        {
        }
        field(15; "Shortcut Dimension 3 Code"; Code[20])
        {
        }
        field(16; "Shortcut Dimension 4 Code"; Code[20])
        {
        }
        field(17; "Shortcut Dimension 5 Code"; Code[20])
        {
        }
        field(18; "Shortcut Dimension 6 Code"; Code[20])
        {
        }
        field(19; "Shortcut Dimension 7 Code"; Code[20])
        {
        }
        field(20; "Shortcut Dimension 8 Code"; Code[20])
        {
        }
        field(21; MODIFIED; Boolean)
        {
        }

        field(22; "ETR"; Date)//Created on 28/10/2024 with Nathalie
        {
            Caption = 'ETR';
        }
        field(23; "ETD"; Date)
        {
            Caption = 'ETD';
        }
        field(24; "ETA"; Date)
        {
            Caption = 'ETA';
        }
        field(25; "ETAW"; Date)
        {
            Caption = 'ETAW';
        }
    }
    keys
    {
        key(Key1; "Document Type", "Document No.", "Line No.")
        {
        }
    }
}