tableextension 70103 "GL setup Extension" extends "General Ledger Setup"
{
    fields
    {
        // Add changes to table fields here

        field(70100; "LC No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70101; "BL No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70102; "SP ID No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70103; "AWB No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70104; "Batch No. series"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }

        field(70105; "Job No. series"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70106; "Insurance No. series"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70107; "Transitory No. series"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }


        field(70108; "Restrict Budget Edit for Users"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(70109; "Truck WayBill No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
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