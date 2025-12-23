page 70143 "Containers list"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Container Details";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("SP ID"; Rec."SP ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SP ID field.', Comment = '%';
                    Enabled = false;
                }
                field("Container ID"; Rec."Container ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Container ID field.', Comment = '%';


                    // trigger OnValidate()
                    // var
                    //     BLDetails: Record "BL Details";
                    // begin
                    //     Clear(BLDetails);
                    //     BLDetails.Get(Rec."BL ID");
                    //     BLDetails.Validate("Container ID", Rec."Container ID");
                    //     BLDetails.Modify();
                    //     //   CurrPage.Update(false);


                    // end;
                }
                field("BL ID"; Rec."BL ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BL Number field.', Comment = '%';
                    Enabled = false;
                }
                field("Seal Number"; Rec."Seal Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Seal Number field.', Comment = '%';
                }
                field(Fitting; Rec.Fitting)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fitting field.', Comment = '%';
                }
                field("Loaded On Board"; Rec."Loaded On Board")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loaded On Board field.', Comment = '%';
                }
                field("Terminal Delivery Order Date"; Rec."Terminal Delivery Order Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Terminal Delivery Order Date field.', Comment = '%';
                }
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remarks field.', Comment = '%';
                }
                field("FTR"; Rec."FTR")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Final ETR field.', Comment = '%';
                }
                field("FTD"; Rec."FTD")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Final ETD field.', Comment = '%';

                    trigger OnValidate()
                    var
                    begin
                        IF (Rec."FTA" <> 0D) AND (Rec."FTD" <> 0D) then
                            Rec."Transit Time" := FORMAT(Rec."FTA" - Rec."FTD");
                    end;
                }
                field("FTA"; Rec."FTA")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Final ETA field.', Comment = '%';
                    trigger OnValidate()
                    var
                    begin
                        IF (Rec."FTA" <> 0D) AND (Rec."FTD" <> 0D) then
                            Rec."Transit Time" := FORMAT(Rec."FTA" - Rec."FTD");
                    end;
                }
                field("FTAW"; Rec."FTAW")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Final ETAW field.', Comment = '%';
                }
                field(ATA; Rec.ATA)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ATA field.', Comment = '%';
                }

                field("ROC Date"; Rec."ROC Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ROC Date field.', Comment = '%';
                }
                field("Transit Time"; Rec."Transit Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transit Time field.', Comment = '%';
                }
                field("Final Transit Time"; Rec."Final Transit Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Final Transit Time field.', Comment = '%';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Open Bill of lading")
            {

                trigger OnAction()
                var
                    BL: Record "BL Details";
                begin
                    Clear(BL);
                    BL.Get(Rec."BL ID");
                    Page.Run(Page::"BL card", BL);
                end;
            }
        }
    }
}