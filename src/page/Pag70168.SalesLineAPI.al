page 70168 "Sales Line API"
{
    APIGroup = 'SIGMA';
    APIPublisher = 'SIGMA';
    APIVersion = 'beta';
    ApplicationArea = All;
    Caption = 'salesLineAPI';
    DelayedInsert = true;
    EntityName = 'salesLineAPI';
    EntitySetName = 'salesLineAPI';
    PageType = API;
    SourceTable = "Sales Line";
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                field(sellToCustomerNo; Rec."Sell-to Customer No.")
                {
                    Caption = 'Sell-to Customer No.';
                }
                field(documentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }
                field(Itemno; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }

                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }

                field(unitOfMeasure; Rec."Unit of Measure")
                {
                    Caption = 'Unit of Measure';
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }

                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }

                field(amount; Rec.Amount)
                {
                    Caption = 'Amount';
                }
                field(amountIncludingVAT; Rec."Amount Including VAT")
                {
                    Caption = 'Amount Including VAT';
                }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                }

                field(unitCost; Rec."Unit Cost")
                {
                    Caption = 'Unit Cost';
                }

                field(unitOfMeasureCode; Rec."Unit of Measure Code")
                {
                    Caption = 'Unit of Measure Code';
                }



            }
        }
    }
}
