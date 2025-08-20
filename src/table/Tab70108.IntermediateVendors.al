table 70108 "Intermediate Vendors"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(70100; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(70101; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70102; "Search Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70103; "Name 2"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70104; "Address"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70105; "Address 2"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70106; "City"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70107; "Contact"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70108; "Phone No."; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(70109; "Telex No."; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(70110; "Global Dimension 1 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Dimension Value".Code where("Dimension Code" = const('PROJECT'));
        }

        field(70111; "Global Dimension 2 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Dimension Value".Code where("Dimension Code" = const('LOB'));
        }

        field(70112; "Vendor Posting Group"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Vendor Posting Group";
        }

        field(70113; "Currency Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Currency";
        }

        field(70114; "Payment Terms Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Payment Terms";
        }

        field(70115; "Country/Region Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }

        field(70116; "Payment Method Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Payment Method";
        }

        field(70117; "Fax No."; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(70118; "Gen. Bus. Posting Group"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Business Posting Group";
        }

        field(70119; "Post Code"; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(70120; "County"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70121; "Email"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70122; "VAT Bus. Posting Group"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "VAT Business Posting Group";
        }

        field(70123; "Mobile Phone No."; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(70124; "Responsibility Center"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Responsibility Center";
        }

        field(70125; "Location Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Location";
        }




        field(70126; "Area"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70127; "Comments"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(70128; Processed; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70129; "Dynamics Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70130; "API Status"; Text[100])
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }





}
