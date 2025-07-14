page 70165 "Item API"
{

    Caption = 'items';
    APIGroup = 'SIGMA';
    APIPublisher = 'SIGMA';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'SIGMAItemsAPI';
    EntitySetName = 'SIGMAItemsAPI';
    PageType = API;
    SourceTable = Item;
    ODataKeyFields = SystemId;



    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Id"; Rec.SystemId)
                {
                    ApplicationArea = All;
                    Caption = 'Id';
                }
                field("price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                    Caption = 'Id';
                }

                field("No"; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.';//, Locked = true;
                    Editable = false;
                }


                field(ItemSearchDescription; Rec."Search Description")
                {
                    ApplicationArea = All;
                    Caption = 'ItemSearchDescription';
                }

                field("ItemCategoryCode"; Rec."Item Category Code")
                {
                    ApplicationArea = All;
                    Caption = 'Item Category Code';
                }
            
                field("CountryRegionCode"; Rec."Country/Region of Origin Code")
                {
                    ApplicationArea = All;
                    Caption = 'Country/Region of Origin Code';
                }
                field("VendorNo"; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                    Caption = 'Vendor No.';
                }

                field("NetWeight"; Rec."Net Weight")
                {
                    ApplicationArea = All;
                    Caption = 'Net Weight';
                }
                field("Comment"; Rec.Comment)
                {
                    ApplicationArea = All;
                    Caption = 'Comment';
                }

                field("Type"; Rec.Type)
                {
                    ApplicationArea = All;
                    Caption = 'Type';
                }
                field("BaseUnitOfMeasure"; Rec."Base Unit of Measure")
                {
                    ApplicationArea = All;
                    Caption = 'Type';
                }

                field("SalesUnitOfMeasure"; Rec."Sales Unit of Measure")
                {
                    ApplicationArea = All;
                    Caption = 'SalesUnitOfMeasure';
                }
                field("PurchaseUnitOfMeasure"; Rec."Purch. Unit of Measure")
                {
                    ApplicationArea = All;
                    Caption = 'PurchaseUnitOfMeasure';
                }


              


          

            }
        }
    }
    /*  trigger OnInsertRecord(BelowxRec: Boolean): Boolean
     var
         ItemAttr: Codeunit ItemAttr;
     begin
         Rec.Insert(true);
         ItemAttr.InsertItemAttr('Brand', Brand, Rec);
         Rec.Modify(true);

         exit(false);

     end; */

    // trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    // var
    // begin
    //     Rec.Insert(true);
    //     Rec."Gen. Prod. Posting Group" := 'GOODS';
    //     Rec."VAT Prod. Posting Group" := 'GOODSVAT';
    //     Rec."Inventory Posting Group" := 'GOODS';

    //     Rec.Modify(true);

    //     exit(false);
    // end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Rec.Insert(true);
        Rec."Gen. Prod. Posting Group" := 'GOODS';
        Rec."VAT Prod. Posting Group" := 'GOODSVAT';
        Rec."Inventory Posting Group" := 'GOODS';
        Rec.Modify(true);
    end;




    var
        Brand: Text;

}

