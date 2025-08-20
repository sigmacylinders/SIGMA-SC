tableextension 70117 "purch. inv. header extension" extends "Purch. Inv. Header"
{
    fields
    {
        // Add changes to table fields here
        field(70110; "posted Receipts"; Code[20])
        {
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = lookup("Purch. Rcpt. Header"."No." where("Order No." = field("Order No.")));
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