table 70115 "Intermediate Items"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "No. 2"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Search Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(5; "Updated Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(6; "Vendor No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor;
        }

        field(7; "Supplier Currency"; Code[30])
        {
            Caption = 'Supplier Currency';
            TableRelation = Currency;
        }

        field(8; "Base Unit of Measure"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Unit of Measure";
        }

        field(9; "Type"; Enum "Item Type")
        {
            DataClassification = ToBeClassified;
        }

        field(10; "Inventory Posting Group"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Inventory Posting Group";
        }

        field(12; "Length in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(13; "Width in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(14; "Height in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(15; "Unit Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(16; "Costing Method"; Enum "Costing Method")
        {
            DataClassification = ToBeClassified;
        }

        field(17; "VAT Prod. Posting Group"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "VAT Product Posting Group";
        }

        field(19; "Brand"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Dimension Value".Code where("Dimension Code" = const('BRAND'));
        }

        field(20; "Vendor Item No."; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        // field(21; "Vendor Item Code"; Code[20])//duplicate
        // {
        //     DataClassification = ToBeClassified;
        // }

        field(22; "Family"; Code[2048])
        {
            DataClassification = ToBeClassified;
        }

        field(23; "Sub Group"; Code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(24; "Main Group"; code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(25; "Item Category Code"; Code[20])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }

        field(26; "Gear / Ballast"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        // field(27; "Thumbnail"; Blob)
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(28; "Quick Description"; Text[100])
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(29; "Supply Power"; Text[100])//obselete
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(30; "Supply Current"; Text[100])//obselete
        // {
        //     DataClassification = ToBeClassified;
        // }

        field(31; "Installation"; Text[100])
        {
            DataClassification = ToBeClassified;
        }





        field(38; "IP Rating"; Code[10])
        {
            DataClassification = ToBeClassified;
        }



        field(41; "CRI"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(42; "Beam Angle"; Text[100])
        {
            DataClassification = ToBeClassified;
        }




        field(47; "Lamps Count"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(48; "Wattage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(49; "Total Wattage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(50; "Voltage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        // field(51; "Net Lumen"; Integer)
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(52; "LED Lumen"; Integer)
        // {
        //     DataClassification = ToBeClassified;
        // }



        field(54; "Diameter in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(55; "Cutout Length"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(56; "Cutout Width"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(57; "Cutout Height"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(58; "Cutout Diameter"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(59; "Cover Color"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(60; "Luminous Flux (Lm)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }



        field(63; "Viewing Distance"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(64; "Lifespan"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(65; Processed; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(66; "Vendor Custom Code"; code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(67; "Dynamics Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(68; "API Status"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(69; "LOB"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Dimension Value".Code where("Dimension Code" = const('LOB'));
        }

        field(71; "Project Number"; Code[50])
        {
            DataClassification = ToBeClassified;
            // TableRelation = Job;
        }

        field(74; SIGMA_Picture; MediaSet)
        {
            Caption = 'Picture';
            DataClassification = ToBeClassified;
        }
        field(75; "Gen. Prod. Posting Group"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Product Posting Group";
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }



    var





    var
        PictureUpdated: Boolean;
}
