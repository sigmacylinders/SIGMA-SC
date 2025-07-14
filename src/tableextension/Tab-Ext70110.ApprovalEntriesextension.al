tableextension 70110 "Approval Entries extension" extends "Approval Entry"
{
    fields
    {
        // Add changes to table fields here
        field(70110; "Travel Request Position"; Option)
        {
            OptionMembers = " ","Manager","Project Manager","Finance";
            FieldClass = FlowField;
            CalcFormula = lookup("User Setup"."Travel request Position" where("User ID" = field("Approver ID")));
        }
        field(70111; "Supplier Number"; Code[20])
        {
            DataClassification = ToBeClassified;

            trigger OnLookup()
            var
                Vendor: Record Vendor;
            begin
                Clear(Vendor);
                Vendor.Get(Rec."Supplier Number");
                Page.Run(page::"Vendor Card", Vendor);

            end;

        }
        field(70112; "Project Code"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70113; "PO Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70114; "Supplier Name"; Text[250])
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

    var
        myInt: Integer;


}