page 70134 "Logistics Platform"
{
    PageType = List;
    SourceTable = "Purchase Line";
    SourceTableView = sorting("Document Type", "Document No.", "Pay-to Vendor No.") where("Document Type" = const(Order));
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Logistics Platform';
    //SC.AI 02/09/2025
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                Enabled = false;
                Editable = false;
                field("PO No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    Caption = 'PO No.';
                }
                field("Vendor"; Rec."Buy-from Vendor Name")
                {
                    ApplicationArea = All;
                    Caption = 'Vendor';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies a description of the blanket purchase order.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the quantity of the purchase order line.';
                }

                field("POL"; Rec."Port of Loading")
                {
                    ApplicationArea = All;
                    Caption = 'POL';
                }
                field(POD; Rec.POD)
                {
                    ToolTip = 'Specifies the value of the POD field.', Comment = '%';
                }
                field("Packed Net Weight"; Rec."Packed Net Weight")
                {
                    ToolTip = 'Specifies the value of the Packed Net Weight field.', Comment = '%';
                }
                field("Packed Gross Weight"; Rec."Packed Gross Weight")
                {
                    ToolTip = 'Specifies the value of the Packed Gross Weight field.', Comment = '%';
                }
                field("Packed Volumetric Weight"; Rec."Packed Volumetric Weight")
                {
                    ToolTip = 'Specifies the value of the Packed Volumetric Weight field.', Comment = '%';
                }
                field("Packed Length"; Rec."Packed Length")
                {
                    ToolTip = 'Specifies the value of the Packed Length field.', Comment = '%';
                }
                field("Packed Width"; Rec."Packed Width")
                {
                    ToolTip = 'Specifies the value of the Packed Width field.', Comment = '%';
                }
                field("Packed Height"; Rec."Packed Height")
                {
                    ToolTip = 'Specifies the value of the Packed Height field.', Comment = '%';
                }
                field(CBM; Rec.CBM)
                {
                    ToolTip = 'Specifies the value of the CBM field.', Comment = '%';
                }
                field(ETR; Rec.ETR)
                {
                    ToolTip = 'Specifies the value of the Initial ETR field.', Comment = '%';
                }
                field(ETD; Rec.ETD)
                {
                    ToolTip = 'Specifies the value of the Initial ETD field.', Comment = '%';
                }
                field(ETA; Rec.ETA)
                {
                    ToolTip = 'Specifies the value of the Initial ETA field.', Comment = '%';
                }
                field(ETAW; Rec.ETAW)
                {
                    ToolTip = 'Specifies the value of the Initial ETAW field.', Comment = '%';
                }
                field("Shipping By"; Rec."Shipping By")
                {
                    ToolTip = 'Specifies the value of the Shipping By field.', Comment = '%';
                    Caption = 'Mode';
                }

            }

            group(Control30)
            {
                ShowCaption = false;
                fixed(Control1901776101)
                {
                    ShowCaption = false;
                    group("Number of Lines")
                    {
                        Caption = 'Selected Items';
                        field("Selected Items"; SelectedItems)
                        {
                            ApplicationArea = All;
                            AutoFormatType = 1;
                            ShowCaption = false;
                            Editable = false;
                            ToolTip = 'Specifies the number of lines in the current journal batch.';
                            Style = Strong;
                        }


                    }
                    group(Control1902759701)
                    {
                        Caption = 'Total Weight(KG)';
                        field("Total Weight"; totalWeight)
                        {
                            ApplicationArea = All;
                            AutoFormatType = 1;
                            ShowCaption = false;
                            Editable = false;
                            ToolTip = 'Specifies the number of lines in the current journal batch.';
                            Style = Strong;
                        }
                    }
                    group("Total CBM")
                    {
                        Caption = 'Total CBM(M3)';
                        field("Total CBM2"; TotalCBM)
                        {
                            ApplicationArea = All;
                            AutoFormatType = 1;
                            ShowCaption = false;
                            Editable = false;
                            ToolTip = 'Specifies the number of lines in the current journal batch.';
                            Style = Strong;
                        }
                    }
                    group("Total Packages")
                    {
                        Caption = 'Total Packages';
                        field("Total Packages2"; TotalPackages)
                        {
                            ApplicationArea = All;
                            AutoFormatType = 1;
                            ShowCaption = false;
                            Editable = false;
                            ToolTip = 'Specifies the number of lines in the current journal batch.';
                            Style = Strong;
                        }
                    }

                }
            }

            usercontrol(LogisticsButtons; "LogisticsButtonsControl")
            {
                ApplicationArea = All;

                trigger RequestQuotationClicked()
                begin
                    Message('Quotation requested.');
                    // Add logic to process selected POs
                end;

                trigger PlaceBookingClicked()
                begin
                    Message('Booking placed.');
                    CreateCargoBooking();
                    // Add logic to book selected POs
                end;
            }
        }



    }



    actions
    {
        area(Processing)
        {
            action(Sea)
            {
                Caption = 'Sea';
                Image = Shipment;
                trigger OnAction()
                begin
                    Rec.SetRange("Shipping By", Rec."Shipping By"::Sea);
                    CurrPage.UPDATE(false);
                end;
            }

            action(Truck)
            {
                Caption = 'Truck';
                Image = Shipment;
                trigger OnAction()
                begin
                    Rec.SetRange("Shipping By", Rec."Shipping By"::InLand);
                    CurrPage.UPDATE(false);
                end;
            }
        }

    }




    local procedure GetTotals()
    var
        TempSelected: Record "Purchase Line";
        Count: Integer;
    begin
        SelectedItems := 0;
        totalWeight := 0;
        TotalCBM := 0;

        CurrPage.SetSelectionFilter(TempSelected);

        if TempSelected.FindSet() then
            repeat
                TempSelected.CalcFields("Packed Gross Weight", CBM);
                SelectedItems += 1;
                totalWeight += TempSelected."Packed Gross Weight";
                TotalCBM += TempSelected.CBM;
            until TempSelected.Next() = 0;


    end;



    trigger OnAfterGetCurrRecord()
    var

    begin
        GetTotals();
        CurrPage.UPDATE(false); // false = no positioning loss
    end;

    procedure CreateCargoBooking()
    var
        BookingHeader: Record "Cargo Booking Header";
        CargoBookingCard: Page "Cargo Booking Card";
        BookingLine: Record "Cargo Booking Line";
        TempSelected: Record "Purchase Line";
        TotalQty: Decimal;
        TGweight: Decimal;
        TVweight: Decimal;
        TCweight: Decimal;
        TCBM: Decimal;
    begin
        TotalQty := 0;
        TGweight := 0;
        TVweight := 0;
        TCweight := 0;
        TCBM := 0;
        // Create Booking Header
        BookingHeader.Init();
        BookingHeader.Insert(true);
        CurrPage.SetSelectionFilter(TempSelected);
        if TempSelected.FindSet() then
            repeat
                IF TempSelected."Shipping By" = TempSelected."Shipping By"::Sea THEN
                    BookingHeader."Mode" := BookingHeader."Mode"::Sea;
                IF TempSelected."Shipping By" = TempSelected."Shipping By"::InLand THEN
                    BookingHeader."Mode" := BookingHeader."Mode"::Truck;
                IF TempSelected."Shipping By" = TempSelected."Shipping By"::Air THEN
                    BookingHeader."Mode" := BookingHeader."Mode"::Air;

                TotalQty += TempSelected.Quantity;
                TGweight += TempSelected."Packed Gross Weight";
                TVweight += TempSelected."Packed Volumetric Weight";
                // TCweight += TempSelected."Packed Chargeable Weight";
                TCBM += TempSelected.CBM;
                // Create Booking Lines
                CreateCargoLines(TempSelected, BookingHeader."Booking No.");
            until TempSelected.Next() = 0;
        BookingHeader."Total Quantity" := TotalQty;
        BookingHeader."Gross Weight" := TGweight;
        BookingHeader."Volumetric Weight" := TVweight;
        // BookingHeader."Chargeable Weight" := TCweight;
        BookingHeader."Total CBM" := TCBM;
        BookingHeader.Modify();
        // Open Cargo Booking Card

        page.Run(page::"Cargo Booking Card", BookingHeader);

    end;

    procedure CreateCargoLines(TempSelected: Record "Purchase Line"; "Booking No.": Code[20])
    var
        BookingLine: Record "Cargo Booking Line";

    begin

        BookingLine.Init();
        BookingLine."Booking No." := "Booking No."; // Set the Booking
        BookingLine."PO No." := TempSelected."Document No.";
        BookingLine.Vendor := TempSelected."Buy-from Vendor Name";
        BookingLine.POL := TempSelected."Port of Loading";
        BookingLine."Readiness Date" := TempSelected."ETR";
        BookingLine.Quantity := TempSelected.Quantity;
        BookingLine."Weight (kg)" := TempSelected."Packed Gross Weight";
        BookingLine.CBM := TempSelected.CBM;
        BookingLine.Dimensions := Format(TempSelected."Packed Length") + 'L x ' + Format(TempSelected."Packed Width") + 'W x ' + Format(TempSelected."Packed Height") + 'H';
        BookingLine."HS Code / Description" := TempSelected.Description;
        BookingLine.Insert(true);

    end;

    var
        SelectedItems: Integer;
        totalWeight: Decimal;
        TotalCBM: Decimal;
        TotalPackages: Decimal;
}