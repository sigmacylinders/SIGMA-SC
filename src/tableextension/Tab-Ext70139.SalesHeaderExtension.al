tableextension 70139 "Sales Header Extension" extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        // field(70100; "PO from PR"; Boolean)//this fields will be used to crerate the PO from the PR if needed
        // {
        //     DataClassification = ToBeClassified;
        // }
        field(70101; "Pro-Forma Description"; Text[1000])
        {
            DataClassification = ToBeClassified;
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


}