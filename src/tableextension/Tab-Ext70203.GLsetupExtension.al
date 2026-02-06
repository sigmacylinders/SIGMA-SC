tableextension 70203 "GL setup Extension" extends "General Ledger Setup"
{
    fields
    {
        // Add changes to table fields here


        field(70201; "BL ID Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70202; "SP ID No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70203; "AWB No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70204; "Batch No. series"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }

        field(70205; "Job No. series"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70206; "Insurance No. series"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70207; "Transitory No. series"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }


        field(70208; "Restrict Budget Edit for Users"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(70209; "Truck WayBill No. Series"; Code[20])
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