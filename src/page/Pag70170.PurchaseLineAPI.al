page 70170 PurchaseLineAPI
{
    APIGroup = 'SIGMA';
    APIPublisher = 'SIGMA';
    APIVersion = 'beta';
    ApplicationArea = All;
    Caption = 'purchaseLineAPI';
    DelayedInsert = true;
    EntityName = 'purchaseLineAPI';
    EntitySetName = 'purchaseLineAPI';
    PageType = API;
    SourceTable = "Purchase Line";

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
                field(buyFromVendorNo; Rec."Buy-from Vendor No.")
                {
                    Caption = 'Buy-from Vendor No.';
                }
                field(pdocumentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }
                field("type"; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(pno; Rec."No.")
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
            }
            field(unitOfMeasure; Rec."Unit of Measure")
            {
                Caption = 'Unit of Measure';
            }
            field(quantity; Rec.Quantity)
            {
                Caption = 'Quantity';
            }

            field(directUnitCost; Rec."Direct Unit Cost")
            {
                Caption = 'Direct Unit Cost';
            }
            field(vat; Rec."VAT %")
            {
                Caption = 'VAT %';
            }
            field(lineDiscount; Rec."Line Discount %")
            {
                Caption = 'Line Discount %';
            }
            field(lineDiscountAmount; Rec."Line Discount Amount")
            {
                Caption = 'Line Discount Amount';
            }
            field(amount; Rec.Amount)
            {
                Caption = 'Amount';
            }
            field(amountIncludingVAT; Rec."Amount Including VAT")
            {
                Caption = 'Amount Including VAT';
            }
            field(unitPriceLCY; Rec."Unit Price (LCY)")
            {
                Caption = 'Unit Price (LCY)';
            }

            field(jobNo; Rec."Job No.")
            {
                Caption = 'Project No.';
            }

            field(vendorItemNo; Rec."Vendor Item No.")
            {
                Caption = 'Vendor Item No.';
            }

            field(currencyCode; Rec."Currency Code")
            {
                Caption = 'Currency Code';
            }

            field(vatBaseAmount; Rec."VAT Base Amount")
            {
                Caption = 'VAT Base Amount';
            }
            field(unitCost; Rec."Unit Cost")
            {
                Caption = 'Unit Cost';
            }


            field(itemCategoryCode; Rec."Item Category Code")
            {
                Caption = 'Item Category Code';
            }





        }
    }
}

