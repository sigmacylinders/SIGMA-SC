pageextension 70114 "Approval Entries extension" extends "Approval Entries"
{
    layout
    {
        // Add changes to page layout here

        modify("Document No.")
        {
            Visible = true;

        }
        modify("Amount (LCY)")
        {
            Visible = true;
        }
        addafter("Amount (LCY)")
        {
            field("Supplier Name"; Rec."Supplier Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Supplier Name field.', Comment = '%';
            }
            field("Supplier Number"; Rec."Supplier Number")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Supplier Number field.', Comment = '%';


                trigger OnDrillDown()

                var
                    Vendor: Record Vendor;
                begin
                    Clear(Vendor);
                    Vendor.Get(Rec."Supplier Number");
                    Page.Run(page::"Vendor Card", Vendor);

                end;

                trigger OnLookup(var Text: Text): Boolean
                var
                    Vendor: Record Vendor;
                begin
                    Clear(Vendor);
                    Vendor.Get(Rec."Supplier Number");
                    Page.Run(page::"Vendor Card", Vendor);

                end;
            }
            field(Amount; Rec.Amount)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the total amount (excl. VAT) on the document awaiting approval.';
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}