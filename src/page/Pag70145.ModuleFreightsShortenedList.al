page 70145 "Module Freights Shortened List"
{
    PageType = List;
    SourceTable = "moddule_freights_shortened";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Module Freights';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("ID"; Rec."ID")
                {
                    ApplicationArea = All;
                }

                field("Customer ID"; Rec."Customer ID")
                {
                    ApplicationArea = All;
                }

                field("Current Status"; Rec."Current Status")
                {
                    ApplicationArea = All;
                }

                field("Origin"; Rec."Origin")
                {
                    ApplicationArea = All;
                }

                field("Destination"; Rec."Destination")
                {
                    ApplicationArea = All;
                }

                field("Freight Type"; Rec."Freight Type")
                {
                    ApplicationArea = All;
                }

                field("Carrier Code"; Rec."Carrier Code")
                {
                    ApplicationArea = All;
                }

                field("Booking Code"; Rec."Booking Code")
                {
                    ApplicationArea = All;
                }

                field("Tracking Number"; Rec."Tracking Number")
                {
                    ApplicationArea = All;
                }

                field("Departure Time"; Rec."Departure Time")
                {
                    ApplicationArea = All;
                }

                field("Arrival Time"; Rec."Arrival Time")
                {
                    ApplicationArea = All;
                }

                field("Predictive ETA"; Rec."Predictive ETA")
                {
                    ApplicationArea = All;
                }

                field("Delay Hours"; Rec."Delay Hours")
                {
                    ApplicationArea = All;
                }

                field("Tracking Status"; Rec."Tracking Status")
                {
                    ApplicationArea = All;
                }

                field("Is Stopped"; Rec."Is Stopped")
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
            action(ViewDetails)
            {
                Caption = 'View Details';
                Image = View;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('Open Card Page or Details Page here.');
                end;
            }
        }
    }
}
