pageextension 70129 "purchasse setup extension" extends "Purchases & Payables Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter("Order Nos.")
        {
            field("Purchase Request Nos."; Rec."Purchase Request Nos.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Purchase Request Nos. field.', Comment = '%';
            }
        }
        addlast(General)
        {
            field("Local Vendor"; Rec."Local Vendor")
            {
                ApplicationArea = All;
            }
        }
        addafter("Default Accounts")
        {
            group("Logistics")
            {
                field("Item Attr Packed Length"; Rec."Item Attr Packed Length")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Attr Packed Length code field.', Comment = '%';
                }
                field("Item Attr Packed Width"; Rec."Item Attr Packed Width")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Attr Packed Width code field.', Comment = '%';
                }
                field("Item Attr Packed Height"; Rec."Item Attr Packed Height")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Attr Packed Height code field.', Comment = '%';
                }
                field("Item Attr Packed Net W"; Rec."Item Attr Packed Net W")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Attr Packed Net Weight field.', Comment = '%';
                }
                field("Item Attr Packed Gross W"; Rec."Item Attr Packed Gross W")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Attr Packed Gross Weight field.', Comment = '%';
                }
                field("Item Attr Packed Volumetric W"; Rec."Item Attr Packed Volumetric W")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Attr Packed Volumetric Weight field.', Comment = '%';
                }
                field("Booing No."; Rec."Booing No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Booing No. field.', Comment = '%';
                }
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