pageextension 70159 "Posted Purch. Invoice SubformE" extends "Posted Purch. Invoice Subform"
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
            field("Batch Number"; Rec."Batch Number")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Batch Number field.', Comment = '%';
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
            field("Currency Code"; Rec."Currency Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Currency Code field.', Comment = '%';
            }
            field("Currency Factor"; Rec."Currency Factor")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Currency Factor field.', Comment = '%';
            }
            field("Direct Unit Cost LCY"; Rec."Direct Unit Cost LCY")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Direct Unit Cost LCY field.', Comment = '%';
            }
            field("Final ETA"; Rec."Final ETA")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETA field.', Comment = '%';
            }
            field("Final ETAW"; Rec."Final ETAW")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETAW field.', Comment = '%';
            }
            field("Final ETD"; Rec."Final ETD")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETD field.', Comment = '%';
            }
            field("Final ETR"; Rec."Final ETR")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETR field.', Comment = '%';
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
            field("Initial ETD"; Rec."Initial ETD")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETD field.', Comment = '%';
            }
            field("Initial ETR"; Rec."Initial ETR")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETR field.', Comment = '%';
            }
            field("Job#"; Rec."Job#")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Job ID field.', Comment = '%';
            }
            field("Line Amount LCY"; Rec."Line Amount LCY")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Line Amount field.', Comment = '%';
            }
            field("SIGMA Sales Order Line No."; Rec."SIGMA Sales Order Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SIGMA Sales Order Line No. field.', Comment = '%';
            }
            field("SIGMA Sales Order No."; Rec."SIGMA Sales Order No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SIGMA Sales Order No. field.', Comment = '%';
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

            field("Splitted Line No."; Rec."Splitted Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Splitted Line No. field.', Comment = '%';
            }
            field("Subjob ID"; Rec."Subjob ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Subjob ID field.', Comment = '%';
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
            field("InLand ID"; Rec."InLand ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the InLand ID field.', Comment = '%';
                Editable = false;
            }
            field("Inland Details Line No"; Rec."Inland Details Line No")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Inland Details Line No field.', Comment = '%';
                Editable = false;
            }
            field("VO Number"; Rec."VO Number")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the VO Number field.', Comment = '%';
            }
            field("Vendor Item No."; Rec."Vendor Item No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Vendor Item No. field.', Comment = '%';
            }

            field("Gross Weight in KG"; Rec."Gross Weight in KG")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the GROSS Weight in KG field.', Comment = '%';
                Editable = false;
            }
            field("Net Weight in KG"; Rec."Net Weight in KG")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the NET Weight in KG field.', Comment = '%';
                Editable = false;
            }
            field("Volumetric Weight in KG"; Rec."Volumetric Weight in KG")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the VOLUMETRIC Weight in KG field.', Comment = '%';
                Editable = false;
            }
            field("Chargable Weight in KG"; Rec."Chargable Weight in KG")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the CHARGABLE Weight in KG field.', Comment = '%';
                Editable = false;
            }
            field("Port of Loading"; Rec."Port of Loading")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Port of Loading field.', Comment = '%';
                Editable = false;
            }
            field("Port of Discharge"; Rec."Port of Discharge")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Port of Discharge field.', Comment = '%';
                Editable = false;
            }
            field("AirPort of Discharge"; Rec."AirPort of Discharge")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the AirPort of Discharge field.', Comment = '%';
                Editable = false;
            }
            field("AirPort of Loading"; Rec."AirPort of Loading")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the AirPort of Loading field.', Comment = '%';
                Editable = false;
            }
            // field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
            // {
            //     ApplicationArea = All;
            //     ToolTip = 'Specifies the value of the Buy-from Vendor Name field.', Comment = '%';
            //     Editable = false;
            // }

            field(Liner; Rec.Liner)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Liner field.', Comment = '%';
            }
            field(Airline; Rec.Airline)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Airline field.', Comment = '%';
            }

            field("Remaining Quantity Shipped"; Rec."Remaining Quantity Shipped")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Remaining Quantity Shipped field.', Comment = '%';
                Editable = false;
                Enabled = false;
            }
            field("Line is Splitted"; Rec."Line is Splitted")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Line is Splitted field.', Comment = '%';
                Editable = false;
                Enabled = false;
            }
            field("Original Quantity"; Rec."Original Quantity")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Original Quantity field.', Comment = '%';
                Editable = false;
                Enabled = false;
                BlankZero = true;
            }
            field("Original Line No."; Rec."Original Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Original Line No. field.', Comment = '%';
                Editable = false;
                Enabled = false;
            }

        }
    }
}