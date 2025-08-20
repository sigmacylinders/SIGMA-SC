table 70106 "Intermediate Items"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(70100; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(70101; "No. 2"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(70102; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70103; "Search Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70104; "Updated Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(70105; "Vendor No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor;
        }

        field(70106; "Supplier Currency"; Code[30])
        {
            Caption = 'Supplier Currency';
            TableRelation = Currency;
        }

        field(70107; "Base Unit of Measure"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Unit of Measure";
        }

        field(70108; "Type"; Enum "Item Type")
        {
            DataClassification = ToBeClassified;
        }

        field(70109; "Inventory Posting Group"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Inventory Posting Group";
        }

        field(70110; "Length in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70111; "Width in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70112; "Height in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70113; "Unit Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70114; "Costing Method"; Enum "Costing Method")
        {
            DataClassification = ToBeClassified;
        }

        field(70115; "VAT Prod. Posting Group"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "VAT Product Posting Group";
        }

        field(70116; "Brand"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Dimension Value".Code where("Dimension Code" = const('BRAND'));
        }

        field(70117; "Vendor Item No."; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        // field(70118; "Vendor Item Code"; Code[20])//duplicate
        // {
        //     DataClassification = ToBeClassified;
        // }

        field(70119; "Family"; Code[2048])
        {
            DataClassification = ToBeClassified;
        }

        field(70120; "Sub Group"; Code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70121; "Main Group"; code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70122; "Item Category Code"; Code[20])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }

        field(70123; "Gear / Ballast"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        // field(70124; "Thumbnail"; Blob)
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(70125; "Quick Description"; Text[100])
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(70126; "Supply Power"; Text[100])//obselete
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(70127; "Supply Current"; Text[100])//obselete
        // {
        //     DataClassification = ToBeClassified;
        // }

        field(70128; "Installation"; Text[100])
        {
            DataClassification = ToBeClassified;
        }





        field(70129; "IP Rating"; Code[10])
        {
            DataClassification = ToBeClassified;
        }



        field(70130; "CRI"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70131; "Beam Angle"; Text[100])
        {
            DataClassification = ToBeClassified;
        }




        field(70132; "Lamps Count"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(70133; "Wattage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70134; "Total Wattage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70135; "Voltage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        // field(70136; "Net Lumen"; Integer)
        // {
        //     DataClassification = ToBeClassified;
        // }

        // field(70137; "LED Lumen"; Integer)
        // {
        //     DataClassification = ToBeClassified;
        // }



        field(70138; "Diameter in mm"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70139; "Cutout Length"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70140; "Cutout Width"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70141; "Cutout Height"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70142; "Cutout Diameter"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70143; "Cover Color"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70144; "Luminous Flux (Lm)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }



        field(70145; "Viewing Distance"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70146; "Lifespan"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70147; Processed; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70148; "Vendor Custom Code"; code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70149; "Dynamics Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70150; "API Status"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(70151; "LOB"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Dimension Value".Code where("Dimension Code" = const('LOB'));
        }

        field(70152; "Project Number"; Code[50])
        {
            DataClassification = ToBeClassified;
            // TableRelation = Job;
        }

        field(70153; SIGMA_Picture; MediaSet)
        {
            Caption = 'Picture';
            DataClassification = ToBeClassified;
        }
        field(70154; "Gen. Prod. Posting Group"; Code[20])
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
