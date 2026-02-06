page 70238 "Cargo Booking List"
{
    PageType = List;
    SourceTable = "Cargo Booking Header";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Cargo Bookings';
    SourceTableView = SORTING("Booking No.") WHERE(Booking = CONST(true));
    Editable = false;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Booking No."; Rec."Booking No.")
                {
                    ApplicationArea = All;
                }

                field("Mode"; Rec.Mode)
                {
                    ApplicationArea = All;
                }

                field("Shipper"; Rec.Shipper)
                {
                    ApplicationArea = All;
                }

                field("Consignee"; Rec.Consignee)
                {
                    ApplicationArea = All;
                }

                field("Total Quantity"; Rec."Total Quantity")
                {
                    ApplicationArea = All;
                }

                field("Gross Weight"; Rec."Gross Weight")
                {
                    ApplicationArea = All;
                }

                field("Chargeable Weight"; Rec."Chargeable Weight")
                {
                    ApplicationArea = All;
                }

                field("Volumetric Weight"; Rec."Volumetric Weight")
                {
                    ApplicationArea = All;
                }

                field("Total CBM"; Rec."Total CBM")
                {
                    ApplicationArea = All;
                }

                field("Port of Loading"; Rec."Port of Loading")
                {
                    ApplicationArea = All;
                }

                field("Port of Discharge"; Rec."Port of Discharge")
                {
                    ApplicationArea = All;
                }

                field("ETD"; Rec.ETD)
                {
                    ApplicationArea = All;
                }

                field("ETA"; Rec.ETA)
                {
                    ApplicationArea = All;
                }

                field("Selected Vendor"; Rec."Selected Vendor")
                {
                    ApplicationArea = All;
                }

                field("Booking Date"; Rec."Booking Date")
                {
                    ApplicationArea = All;
                }

                field("Booking Reference No."; Rec."Booking Reference No.")
                {
                    ApplicationArea = All;
                }

                field("Booking"; Rec.Booking)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Open Card")
            {
                Caption = 'Open Booking Card';
                ApplicationArea = All;
                Image = Navigate;

                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Cargo Booking Card", Rec);
                end;
            }
        }
    }
}
