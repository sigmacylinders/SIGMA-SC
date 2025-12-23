page 70142 "Logistics Activities"
{
    PageType = CardPart;
    SourceTable = "Logistics Activity";
    ApplicationArea = Basic, Suite;
    Caption = 'Logistics Activities';

    layout
    {
        area(content)
        {
            cuegroup("Containers")
            {
                //   field("Properties Available"; Rec."Properties Available") { ApplicationArea = Basic, Suite; DrillDownPageId = "Property List"; }
                field("Departed Today"; Rec."Containers Departed Today")
                {
                    ToolTip = 'Specifies the value of the Containers Departed Today field.', Comment = '%';
                    DrillDownPageId = "Containers list";
                    Caption = 'Departed Today';
                }
                field("Arrived Today"; Rec."Containers Arrived Today")
                {
                    ToolTip = 'Specifies the value of the Containers Arrived Today field.', Comment = '%';
                    DrillDownPageId = "Containers list";
                    Caption = 'Arrived Today';
                }
                field("Arriving Warehouse Today"; Rec."Containers Arriving Warehouse Today")
                {
                    ToolTip = 'Specifies the value of the Containers Arriving Warehouse Today field.', Comment = '%';
                    DrillDownPageId = "Containers list";
                    Caption = 'Arriving Warehouse Today';
                }
                // field("Containers Arriving Soon"; Rec."Containers Arriving Soon")
                // {
                //     ToolTip = 'Specifies the value of the Containers Arriving Soon field.', Comment = '%';
                //     DrillDownPageId = "Containers list";
                // }

                field("Departed This week"; Rec."Containers Departed This week")
                {
                    ToolTip = 'Specifies the value of the Containers Departed This week field.', Comment = '%';
                    DrillDownPageId = "Containers list";
                    Caption = 'Departed This week';
                }

                field("Arriving Warehouse This Week"; Rec."Containers Arriving Warehouse This Week")
                {
                    ToolTip = 'Specifies the value of the Containers Arriving Warehouse This Week field.', Comment = '%';
                    DrillDownPageId = "Containers list";
                    Caption = 'Arriving Warehouse This Week';
                }
                field("already Arrived"; Rec."Containers already Arrived")
                {
                    ToolTip = 'Specifies the value of the Containers already Arrived field.', Comment = '%';
                    DrillDownPageId = "Containers list";
                    Caption = 'Already Arrived';
                }


            }
            cuegroup("Airwaybill")
            {
                field("Departed Today1"; Rec."AWB Departed Today")
                {
                    ToolTip = 'Specifies the value of the AWB Departed Today field.', Comment = '%';
                    DrillDownPageId = "AWB List";
                    Caption = 'Departed Today';
                }
                field("Arrived Today1"; Rec."AWB Arrived Today")
                {
                    ToolTip = 'Specifies the value of the AWB Arrived Today field.', Comment = '%';
                    DrillDownPageId = "AWB List";
                    Caption = 'Arrived Today';
                }


                field("Arriving Warehouse Today1"; Rec."AWB Arriving Warehouse Today")
                {
                    ToolTip = 'Specifies the value of the AWB Arriving Warehouse Today field.', Comment = '%';
                    DrillDownPageId = "AWB List";
                    Caption = 'Arriving Warehouse Today';
                }
                // field("AWB Arriving Soon"; Rec."AWB Arriving Soon")
                // {
                //     ToolTip = 'Specifies the value of the AWB Arriving Soon field.', Comment = '%';
                //     DrillDownPageId = "AWB List";
                // }
                field("Departed This week1"; Rec."AWB Departed This week")
                {
                    ToolTip = 'Specifies the value of the AWB Departed This week field.', Comment = '%';
                    DrillDownPageId = "AWB List";
                    Caption = 'Departed This week';
                }
                field("Arriving Warehouse This Week1"; Rec."AWB Arriving Warehouse This Week")
                {
                    ToolTip = 'Specifies the value of the AWB  field.', Comment = '%';
                    DrillDownPageId = "AWB List";
                    Caption = 'Arriving Warehouse This Week';
                }
                field("already Arrived1"; Rec."AWB already Arrived")
                {
                    ToolTip = 'Specifies the value of the AWB already Arrived field.', Comment = '%';
                    DrillDownPageId = "AWB List";
                    Caption = 'Already Arrived';
                }




            }

            cuegroup("Truckwaybill")
            {
                field("Departed Today2"; Rec."TWB Departed Today")
                {
                    ToolTip = 'Specifies the value of the TWB Departed Today field.', Comment = '%';
                    DrillDownPageId = "Truck list";
                    Caption = 'Departed Today';
                }
                field("Arrived Today2"; Rec."TWB Arrived Today")
                {
                    ToolTip = 'Specifies the value of the TWB Arrived Today field.', Comment = '%';
                    DrillDownPageId = "Truck list";
                    Caption = 'Arrived Today';
                }
                field("Arriving Warehouse Today2"; Rec."TWB Arriving Warehouse Today")
                {
                    ToolTip = 'Specifies the value of the TWB Arriving Warehouse Today field.', Comment = '%';
                    DrillDownPageId = "Truck list";
                    Caption = 'Arriving Warehouse Today';
                }
                // field("TWB Arriving Soon"; Rec."TWB Arriving Soon")
                // {
                //     ToolTip = 'Specifies the value of the TWB Arriving Soon field.', Comment = '%';
                //     DrillDownPageId = "Truck list";
                // }
                field("Departed This week2"; Rec."TWB Departed This week")
                {
                    ToolTip = 'Specifies the value of the TWB Departed This week field.', Comment = '%';
                    DrillDownPageId = "Truck list";
                    Caption = 'Departed This week';
                }
                field("Arriving Warehouse This Week2"; Rec."TWB Arriving Warehouse This Week")
                {
                    ToolTip = 'Specifies the value of the TWB Arriving Warehouse This Week field.', Comment = '%';
                    DrillDownPageId = "Truck list";
                    Caption = 'Arriving Warehouse This Week';
                }


                field("already Arrived2"; Rec."TWB already Arrived")
                {
                    ToolTip = 'Specifies the value of the TWB already Arrived field.', Comment = '%';
                    DrillDownPageId = "Truck list";
                    Caption = 'Already Arrived';
                }

            }


        }
    }


    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;

        Rec.SetFilter("Date Filter", '%1', Today());//today
        Rec.SetFilter("Date Filter2", '>=%1&<%2', Today - 7, Today);//soon
        Rec.SetFilter("Date Filter3", '>=%1&<=%2', DWY2DATE(1, DATE2DWY(Today, 2), DATE2DWY(Today, 3)), DWY2DATE(7, DATE2DWY(Today, 2), DATE2DWY(Today, 3)));//this week     
        Rec.SetFilter("Date Filter4", '< %1', Today());//arrived
    end;



}
