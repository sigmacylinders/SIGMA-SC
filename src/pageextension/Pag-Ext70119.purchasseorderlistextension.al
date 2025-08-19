pageextension 70119 "purchasse order list extension" extends "purchase Order List"
{
    layout
    {
        // Add changes to page layout here
        addafter("Vendor Order No.")
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
            field("Vendor Invoice No."; Rec."Vendor Invoice No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the document number of the original document you received from the vendor. You can require the document number for posting, or let it be optional. By default, it''s required, so that this document references the original. Making document numbers optional removes a step from the posting process. For example, if you attach the original invoice as a PDF, you might not need to enter the document number. To specify whether document numbers are required, in the Purchases & Payables Setup window, select or clear the Ext. Doc. No. Mandatory field.';
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
            field("Initial ETR"; Rec."Initial ETR")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETR field.', Comment = '%';
            }
            field("Initial ETAW"; Rec."Initial ETAW")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETAW field.', Comment = '%';
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