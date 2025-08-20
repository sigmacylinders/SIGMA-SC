tableextension 70105 "Approval Entries extension" extends "Approval Entry"
{
    fields
    {
        // Add changes to table fields here
        field(70100; "Supplier Number"; Code[20])
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
        field(70101; "Supplier Name"; Text[250])
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