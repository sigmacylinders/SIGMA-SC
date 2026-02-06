page 70236 "Logistics Role Center"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    Caption = 'Logistics Role Center';


    layout
    {
        area(rolecenter)
        {

            part("Logistics Activities"; "Logistics Activities")
            {
                ApplicationArea = All;
            }

        }


    }

    actions
    {
        area(Sections)
        {
            group("Logistics2")
            {
                Caption = 'Logistics';
                action("BL List")
                {
                    ApplicationArea = All;
                    RunObject = Page "BL List";
                }
                action("AWB List")
                {
                    ApplicationArea = All;
                    RunObject = Page "AWB List";
                }
                action("Truckwaybill List")
                {
                    ApplicationArea = All;
                    RunObject = Page "Truck WayBill List";
                }
                action("Logistics platform")
                {
                    ApplicationArea = All;
                    RunObject = Page "Logistics Platform";
                }
                action("Cargo Quotations")
                {
                    ApplicationArea = All;
                    RunObject = Page "Cargo Booking List";
                }
                action("Cargo Booking")
                {
                    ApplicationArea = All;
                    RunObject = Page "Cargo Booking List";
                }
            }
        }
    }


    var
        AvailableProperties: Integer;
        SoldProperties: Integer;
        VacantUnits: Integer;
        OccupiedUnits: Integer;


}
