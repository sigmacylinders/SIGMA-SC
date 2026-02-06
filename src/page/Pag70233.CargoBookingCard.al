page 70233 "Cargo Booking Card"
{
    PageType = Card;
    SourceTable = "Cargo Booking Header";
    ApplicationArea = All;

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
                Visible = Rec.Booking;
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
                    field("Shipper"; Rec."Shipper") { ShowMandatory = true; }
                    field("Consignee"; Rec."Consignee") { ShowMandatory = true; }
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
                    group("Quote Vendors")
                    {
                        Caption = 'Quote Vendors (Select up to 5)';
                        InstructionalText = 'Select up to 5 vendors to send the quotation request to. Once you submit the booking, you will choose one vendor from the quotes received.';
                        Visible = NOT Rec.Booking;
                        field("Select Vendor 1"; Rec."Select Vendor 1")
                        {
                            ToolTip = 'Specifies the value of the Select Vendor 1 field.', Comment = '%';

                            ShowMandatory = true;
                        }
                        field("Select Vendor 2"; Rec."Select Vendor 2")
                        {
                            ToolTip = 'Specifies the value of the Select Vendor 2 field.', Comment = '%';

                        }
                        field("Select Vendor 3"; Rec."Select Vendor 3")
                        {
                            ToolTip = 'Specifies the value of the Select Vendor 3 field.', Comment = '%';

                        }
                        field("Select Vendor 4"; Rec."Select Vendor 4")
                        {
                            ToolTip = 'Specifies the value of the Select Vendor 4 field.', Comment = '%';

                        }
                        field("Select Vendor 5"; Rec."Select Vendor 5")
                        {
                            ToolTip = 'Specifies the value of the Select Vendor 5 field.', Comment = '%';

                        }
                    }
                    group(BookignDetails)
                    {
                        Caption = 'Booking Details';
                        Visible = Rec.Booking;
                        field("Selected Vendor"; Rec."Selected Vendor") { showMandatory = true; }
                        field("Booking Reference No."; Rec."Booking Reference No.") { }
                        field("Booking Date"; Rec."Booking Date") { }

                    }

                    field("Prepared By"; Rec."Prepared By") { }

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
                Visible = Rec.Booking;
                trigger OnAction()
                begin
                    Message('Booking submitted.');
                end;
            }
            action("Forward Quotation")
            {
                ApplicationArea = All;
                Caption = 'Forward Quotation';
                Image = Email;
                Visible = not Rec.Booking;
                trigger OnAction()
                begin

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
