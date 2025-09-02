page 70135 "Cargo Booking Card"
{
    PageType = Card;
    SourceTable = "Cargo Booking Header";
    ApplicationArea = All;
    Caption = 'Cargo Booking';
    UsageCategory = Administration;
    //SC.AI 02/09/2025
    layout
    {
        area(content)
        {
            part("Cargo Booking Lines"; "Cargo Booking Lines Subpage")
            {
                Editable = false;
                SubPageLink = "Booking No." = FIELD("Booking No.");
            }
            group("Cargo Summary")
            {

                group("1. Cargo Summary")
                {

                    group(Totals)
                    {
                        Editable = false;
                        field(Mode; Rec.Mode)
                        {
                            ToolTip = 'Specifies the value of the Mode field.', Comment = '%';
                        }
                        field("Total Quantity"; Rec."Total Quantity")
                        {
                        }
                        field("Gross Weight"; Rec."Gross Weight") { }
                        field("Volumetric Weight"; Rec."Volumetric Weight") { }
                        field("Chargeable Weight"; Rec."Chargeable Weight") { }
                        field("Total CBM"; Rec."Total CBM") { }
                    }
                }

                group("2. Shipping Instructions")
                {
                    Caption = '2. Shipping Instructions';
                    field("Shipper"; Rec."Shipper") { }
                    field("Consignee"; Rec."Consignee") { }
                    field("Notify Party"; Rec."Notify Party") { }
                    field("Incoterms"; Rec."Incoterms") { }
                    field("Freight Terms"; Rec."Freight Terms") { }
                    field("Goods Type"; Rec."Goods Type") { }
                    field("Special Instructions"; Rec."Special Instructions") { }
                }

            }
            group("Cargo & Shipping")
            {
                group("3. Cargo & Shipping Details")
                {

                    field("Port of Loading"; Rec."Port of Loading") { }
                    field("Port of Discharge"; Rec."Port of Discharge") { }

                    part(ContainerTypes; "Container Type Summary Subpage")
                    {
                        SubPageLink = "Booking No." = FIELD("Booking No.");
                    }
                    field("ETD"; Rec.ETD) { }
                    field("ETA"; Rec.ETA) { }


                }

                group("4. Confirmation")
                {
                    field("Selected Vendor"; Rec."Selected Vendor") { }
                    field("Booking Reference No."; Rec."Booking Reference No.") { }
                    field("Prepared By"; Rec."Prepared By") { }
                    field("Booking Date"; Rec."Booking Date") { }
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(SaveDraft)
            {
                ApplicationArea = All;
                Caption = 'Save Draft';
                Image = Save;
                trigger OnAction()
                begin
                    Message('Draft saved.');
                end;
            }

            action(SubmitBooking)
            {
                ApplicationArea = All;
                Caption = 'Submit Booking';
                Image = SendTo;
                trigger OnAction()
                begin
                    Message('Booking submitted.');
                end;
            }

            action(CancelBooking)
            {
                ApplicationArea = All;
                Caption = 'Cancel';
                Image = Cancel;
                trigger OnAction()
                begin
                    CurrPage.Close();
                end;
            }
        }
    }


    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
    begin

    end;

}
