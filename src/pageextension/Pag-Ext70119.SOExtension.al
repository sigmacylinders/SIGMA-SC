pageextension 70119 "SO Extension" extends "Sales Order"
{
    layout
    {
        modify("Requested Delivery Date")
        {
            ShowMandatory = true;
        }
        modify("Promised Delivery Date")
        {
            ShowMandatory = true;
        }
        modify("Your Reference")
        {
            ShowMandatory = true;
        }
        modify("Salesperson Code")
        {
            ShowMandatory = true;
        }
        modify("Responsibility Center")
        {
            ShowMandatory = true;
        }
        modify("Assigned User ID")
        {
            ShowMandatory = true;
        }
        modify("Payment Terms Code")
        {
            ShowMandatory = true;
        }
        modify("Payment Method Code")
        {
            ShowMandatory = true;
        }
        modify("Shortcut Dimension 1 Code")
        {
            ShowMandatory = true;
        }
        modify("Location Code")
        {
            ShowMandatory = true;
        }
        modify("Shipment Method Code")
        {
            ShowMandatory = true;
        }

        // Add changes to page layout here
        addafter("Attached Documents")
        {
            part("Cost LOGs Factbox"; "Cost LOGs Factbox")
            {
                ApplicationArea = All;
                Caption = 'Cost/Price Variation LOG';
                Provider = SalesLines;
                SubPageLink = "SO Number" = field("Document No."), "SO Line Number" = field("Line No.");
            }
            part("Variation Order LOG"; "Variation Order LOGs Factbox")
            {
                ApplicationArea = All;
                Caption = 'Variation Order LOG';
                Provider = SalesLines;
                SubPageLink = "SO Number" = field("Document No."), "SO Line Number" = field("Line No."), "VO Number" = filter('<> ''''');
                // "Document Type" = field("Document Type");
            }
        }
    }

    actions
    {
        addafter("Print Confirmation")
        {
            action(PrintDeliveryOrder)
            {
                ApplicationArea = All;
                Caption = 'Print Delivery Order';
                Promoted = true;
                Image = Print;
                ToolTip = 'Print or view the new Delivery Order report';

                trigger OnAction()
                var
                    CompanyInfo: Record "Company Information";
                begin
                    Rec.Reset();
                    Rec.SetRange("No.", Rec."No.");
                    Rec.SetRange("Bill-to Customer No.", Rec."Bill-to Customer No.");

                    // CompanyInfo.Get();


                end;
            }
        }
        // Add changes to page actions here

        modify(CreatePurchaseOrder)
        {
            Caption = 'Create Purchase Requests';
            ApplicationArea = All;
            Visible = false;
            // Promoted = true;
            // PromotedCategory = Report;
        }
        addafter(CreatePurchaseOrder)
        {
            action(CreatePurchaseOrder2)
            {
                ApplicationArea = Suite;
                Caption = 'Create Purchase Requests';
                Image = Document;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Category8;
                //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                //PromotedIsBig = true;
                ToolTip = 'Create one or more new purchase Requests to buy the items that are required by this sales document, minus any quantity that is already available.';

                trigger OnAction()
                var
                    PurchDocFromSalesDoc: Codeunit "Purch. Doc. From Sales Doc.";
                begin
                    PurchDocFromSalesDoc.CreatePurchaseOrder(Rec);
                end;
            }
        }
    }

    var
        myInt: Integer;
}