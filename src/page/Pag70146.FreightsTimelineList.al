page 70146 "Freights Timeline List"
{
    PageType = List;
    SourceTable = "FreightsTimeline";
    Caption = 'Freights Timeline';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("ID"; Rec."ID")
                {
                    ApplicationArea = All;
                }
                field("freights ID"; Rec."freights ID")
                {
                    ToolTip = 'Specifies the value of the freights ID field.', Comment = '%';
                }
                field("BL Number"; Rec."BL Number")
                {
                    ToolTip = 'Specifies the value of the BL ID field.', Comment = '%';
                }
                field("Container ID"; Rec."Container ID")
                {
                    ToolTip = 'Specifies the value of the Container ID field.', Comment = '%';
                }

                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                }

                field("Date Time"; Rec."Date Time")
                {
                    ApplicationArea = All;
                }

                field("Location"; Rec."Location")
                {
                    ApplicationArea = All;
                }

                field("Subevent"; Rec."Subevent")
                {
                    ApplicationArea = All;
                }

                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;
                }

                field("Carriage Type"; Rec."Carriage Type")
                {
                    ApplicationArea = All;
                }
                field(Transhipment; Rec.Transhipment)
                {
                    ToolTip = 'Specifies the value of the Transhipment field.', Comment = '%';
                }
            }
        }
    }
}
