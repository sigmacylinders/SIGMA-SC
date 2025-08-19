pageextension 70103 "PO Extension" extends "Purchase Order"
{
    layout
    {
        // Add changes to page layout here
        addafter(Status)
        {
            field("Shipping Quotation No."; Rec."Shipping Quotation No.")
            {
                ApplicationArea = All;
                trigger OnDrillDown()
                var
                    FilterValue: Text;
                    QuotationId: Text;
                    IdArray: List of [Text];
                begin
                    Clear(FilterValue);
                    IdArray := Rec."Shipping Quotation No.".Split(',');

                    foreach QuotationId in IdArray do begin
                        QuotationId := DelChr(QuotationId, '=', ' '); // Trim spaces

                        if FilterValue = '' then
                            FilterValue := QuotationId
                        else
                            FilterValue := FilterValue + '|' + QuotationId;
                    end;


                end;

            }

            field("Initial ETR"; Rec."Initial ETR")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETR field.', Comment = '%';
            }
            field("Initial ETD"; Rec."Initial ETD")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETD field.', Comment = '%';
            }
            field("Initial ETA"; Rec."Initial ETA")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETA field.', Comment = '%';
            }
            field("Initial ETAW"; Rec."Initial ETAW")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETAW field.', Comment = '%';
            }


            field("SIGMA Sales Order No."; Rec."SIGMA Sales Order No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SIGMA Sales Order No. field.', Comment = '%';
            }
        }
        addafter("Attached Documents")
        {
            part("BL Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'BL Attachments';
                Provider = PurchLines;
                SubPageLink = //"Table ID" = const(Database::"BL Details"),
                              "No." = field("BL/AWB ID");
                // "Document Type" = field("Document Type");
            }
            part("Cost LOGs Factbox"; "Cost LOGs Factbox")
            {
                ApplicationArea = All;
                Caption = 'Cost/Price Variation LOG';
                Provider = PurchLines;
                SubPageLink = "PO Number" = field("Document No."), "PO Line Number" = field("Line No.");
            }
            part("Variation Order LOG"; "Variation Order LOGs Factbox")
            {
                ApplicationArea = All;
                Caption = 'Variation Order LOG';
                Provider = PurchLines;
                SubPageLink = "PO Number" = field("Document No."), "PO Line Number" = field("Line No."), "VO Number" = filter('<> ''''');
                // "Document Type" = field("Document Type");
            }
            part("Shipping Dates"; "Shipping Dates LOG Factbox")
            {
                ApplicationArea = All;
                Caption = 'Shipping Dates Log';
                Provider = PurchLines;
                SubPageLink = "PO Number" = field("Document No."), "PO Line Number" = field("Line No."), "Batch Number" = const(''), "VO Number" = const('');
                // "Document Type" = field("Document Type");
            }
        }

    }

    actions
    {
        // Add changes to page actions here
        addafter(Receipts)
        {
            action("Open SO")
            {
                Image = Purchase;
                ApplicationArea = All;
                trigger OnAction()
                var
                    //SalesLine: Record "Sales Line";
                    SalesHeader: Record "Sales Header";
                begin
                    rec.CalcFields("SIGMA Sales Order No.");
                    Clear(SalesHeader);
                    SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Order);
                    SalesHeader.SetRange("No.", Rec."SIGMA Sales Order No.");
                    Page.Run(page::"Sales Order List", SalesHeader);
                end;
            }
        }
    }


    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        PurchaseLine: Record "Purchase Line";

        text002: Label 'Please do Fill the Brand Code field in the purchase lines';
    begin




    end;



    var
        myInt: Integer;
}