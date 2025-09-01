pageextension 70109 "purchasse order list extension" extends "purchase Order List"
{
    layout
    {
        // Add changes to page layout here
        addafter("Vendor Order No.")
        {
            field("Vendor Invoice No."; Rec."Vendor Invoice No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the document number of the original document you received from the vendor. You can require the document number for posting, or let it be optional. By default, it''s required, so that this document references the original. Making document numbers optional removes a step from the posting process. For example, if you attach the original invoice as a PDF, you might not need to enter the document number. To specify whether document numbers are required, in the Purchases & Payables Setup window, select or clear the Ext. Doc. No. Mandatory field.';
            }
            field("ETD"; Rec."ETD")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETD field.', Comment = '%';
            }
            field("ETA"; Rec."ETA")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETA field.', Comment = '%';
            }
            field("ETR"; Rec."ETR")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETR field.', Comment = '%';
            }
            field("ETAW"; Rec."ETAW")
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