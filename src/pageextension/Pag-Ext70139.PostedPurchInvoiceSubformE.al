pageextension 70139 "Posted Purch. Invoice SubformE" extends "Posted Purch. Invoice Subform"
{
    // Add your customizations here
    layout
    {
        addafter("Job No.")
        {
            field(ATA; Rec.ATA)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the ATA field.', Comment = '%';
            }
            field("BL/AWB ID"; Rec."BL/AWB ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the BL/AWB ID field.', Comment = '%';
            }
            field("Blanket Order Line No."; Rec."Blanket Order Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the number of the blanket order line that the record originates from.';
            }
            field("Blanket Order No."; Rec."Blanket Order No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the number of the blanket order that the record originates from.';
            }
            field("Container ID"; Rec."Container ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Container ID field.', Comment = '%';
            }
            field("Container Line No."; Rec."Container Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Container Line No. field.', Comment = '%';
            }
            field("FTA"; Rec."FTA")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETA field.', Comment = '%';
            }
            field("FTAW"; Rec."FTAW")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETAW field.', Comment = '%';
            }
            field("FTD"; Rec."FTD")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETD field.', Comment = '%';
            }
            field("FTR"; Rec."FTR")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETR field.', Comment = '%';
            }
            field("ETA"; Rec."ETA")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETA field.', Comment = '%';
            }
            field("ETAW"; Rec."ETAW")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETAW field.', Comment = '%';
            }
            field("ETD"; Rec."ETD")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETD field.', Comment = '%';
            }
            field("ETR"; Rec."ETR")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETR field.', Comment = '%';
            }
            field("Location Code"; Rec."Location Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the code for the location where the invoice line is registered.';
            }
            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Line No. field.', Comment = '%';
            }
            field("Shipping By"; Rec."Shipping By")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Shipping By field.', Comment = '%';
            }

            field("Truck Details ID"; Rec."Truck Details ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Truck Details ID field.', Comment = '%';
            }
            field("Truck Details Line No."; Rec."Truck Details Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Truck Details Line No. field.', Comment = '%';
            }
            field("Truck WayBill ID"; Rec."Truck WayBill ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Truck WayBill ID field.', Comment = '%';
            }
            field("Vendor Item No."; Rec."Vendor Item No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Vendor Item No. field.', Comment = '%';
            }
            // field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
            // {
            //     ApplicationArea = All;
            //     ToolTip = 'Specifies the value of the Buy-from Vendor Name field.', Comment = '%';
            //     Editable = false;
            // }






        }
    }
}