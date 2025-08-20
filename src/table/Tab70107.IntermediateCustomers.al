table 70107 "Intermediate Customers"
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

        field(70107; "Contact"; Text[100])
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

        field(70112; "Customer Posting Group"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Customer Posting Group";
        }

        field(70113; "Currency Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Currency;
        }

        field(70114; "Payment Terms Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Payment Terms";
        }

        field(70115; "Salesperson Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser";
        }

        field(70116; "Shipment Method Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Shipment Method";
        }

        field(70117; "Country/Region Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }

        field(70118; "Payment Method Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Payment Method";
        }

        field(70119; "Location Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }

        field(70120; "Gen. Bus. Posting Group"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Business Posting Group";
        }

        field(70121; "Post Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Post Code";
        }

        field(70122; "County"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70123; "Email"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70124; "VAT Bus. Posting Group"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "VAT Business Posting Group";
        }

        field(70125; "Mobile Phone No."; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(70126; "Responsibility Center"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Responsibility Center";
        }

        field(70127; "Road"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70128; "Street"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70129; "District"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70130; "PO BOX"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70131; "Building Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70132; "Building NO."; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70133; "CR"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70134; "Road Name Arabic"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70135; "Street Arabic"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70136; "District Arabic"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70137; "Building Name Arabic"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70138; "Contact Name Arabic"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70139; "Arabic Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }



        field(70140; "CompanySubType"; Code[10])
        {
            DataClassification = ToBeClassified;
        }



        field(70141; "Area"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70142; "Comments"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(70143; Processed; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70144; "Dynamics Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70145; "API Status"; Text[100])
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




    var

}
