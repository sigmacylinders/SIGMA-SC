table 70106 "Intermediate Items"
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

        field(11; "Length in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(12; "Width in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(13; "Height in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(14; "Unit Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(15; "Costing Method"; Enum "Costing Method")
        {
            DataClassification = ToBeClassified;
        }

        field(16; "VAT Prod. Posting Group"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "VAT Product Posting Group";
        }

        field(17; "Brand"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Dimension Value".Code where("Dimension Code" = const('BRAND'));
        }

        field(18; "Vendor Item No."; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        // field(19; "Vendor Item Code"; Code[20])//duplicate
        // {
        //     DataClassification = ToBeClassified;
        // }

        field(20; "Family"; Code[2048])
        {
            DataClassification = ToBeClassified;
        }

        field(21; "Sub Group"; Code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(22; "Main Group"; code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(23; "Item Category Code"; Code[20])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }

        field(24; "Gear / Ballast"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        // field(25; "Thumbnail"; Blob)
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(26; "Quick Description"; Text[100])
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(27; "Supply Power"; Text[100])//obselete
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(28; "Supply Current"; Text[100])//obselete
        // {
        //     DataClassification = ToBeClassified;
        // }

        field(29; "Installation"; Text[100])
        {
            DataClassification = ToBeClassified;
        }





        field(30; "IP Rating"; Code[10])
        {
            DataClassification = ToBeClassified;
        }



        field(31; "CRI"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(32; "Beam Angle"; Text[100])
        {
            DataClassification = ToBeClassified;
        }




        field(33; "Lamps Count"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(34; "Wattage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(35; "Total Wattage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(36; "Voltage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        // field(37; "Net Lumen"; Integer)
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(38; "LED Lumen"; Integer)
        // {
        //     DataClassification = ToBeClassified;
        // }



        field(39; "Diameter in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(40; "Cutout Length"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(41; "Cutout Width"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(42; "Cutout Height"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(43; "Cutout Diameter"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(44; "Cover Color"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(45; "Luminous Flux (Lm)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }



        field(46; "Viewing Distance"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(47; "Lifespan"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(48; Processed; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(49; "Vendor Custom Code"; code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50; "Dynamics Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(51; "API Status"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(52; "LOB"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Dimension Value".Code where("Dimension Code" = const('LOB'));
        }

        field(53; "Project Number"; Code[50])
        {
            DataClassification = ToBeClassified;
            // TableRelation = Job;
        }

        field(54; SIGMA_Picture; MediaSet)
        {
            Caption = 'Picture';
            DataClassification = ToBeClassified;
        }
        field(55; "Gen. Prod. Posting Group"; Code[20])
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
