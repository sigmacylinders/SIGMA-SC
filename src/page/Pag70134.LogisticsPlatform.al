page 70134 "Logistics Platform"
{
    PageType = List;
    SourceTable = "Purchase Line";
    SourceTableView = sorting("Document Type", "Document No.", "Pay-to Vendor No.") where("Document Type" = const(Order));
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Logistics Platform';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("PO No."; Rec."Document No.") { ApplicationArea = All; }
                field("Vendor"; Rec."Buy-from Vendor Name") { ApplicationArea = All; }
                field("POL"; Rec."Port of Loading") { ApplicationArea = All; }
                // field("Readiness"; Readiness) { ApplicationArea = All; }
                // field("Weight"; Weight) { ApplicationArea = All; }
                // field("CBM"; CBM) { ApplicationArea = All; }
                // field("Dimensions"; Dimensions) { ApplicationArea = All; }
                // field("Loading Mode"; "Loading Mode") { ApplicationArea = All; }
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
                        Caption = 'Total Weight';
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
                        Caption = 'Total CBM';
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




    local procedure GetNumberOfSelectedLines(): Integer
    var
        TempSelected: Record "Purchase Line";
        Count: Integer;
    begin
        CurrPage.SetSelectionFilter(TempSelected);

        if TempSelected.FindSet() then
            repeat
                Count += 1;
            until TempSelected.Next() = 0;

        exit(Count);
    end;

    trigger OnAfterGetCurrRecord()
    var

    begin
        SelectedItems := GetNumberOfSelectedLines;
        CurrPage.UPDATE(false); // false = no positioning loss
    end;


    var
        SelectedItems: Integer;
        totalWeight: Decimal;
        TotalCBM: Decimal;
        TotalPackages: Decimal;
}