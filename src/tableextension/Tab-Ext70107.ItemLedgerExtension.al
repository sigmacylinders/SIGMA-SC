tableextension 70107 "Item Ledger Extension" extends "Item Ledger Entry"
{
    fields
    {
        // Add changes to table fields here
        field(70109; "Batch Number";
        Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70110; "Warehouse Category"; enum "Warehouse categories")
        {
            //  DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = lookup(Location."Warehouse Category" where(Code = field("Location Code")));
        }
        field(70111; "Subjob ID"; Integer)//added on 27/01/2025
        {
            DataClassification = ToBeClassified;
            Caption = 'Subjob ID';
        }
        field(70112; "Job#"; Code[20])//added on 27/01/2025
        {
            DataClassification = ToBeClassified;
            Caption = 'Job ID';
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