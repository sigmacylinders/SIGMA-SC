page 70116 "AWB Card"
{
    PageType = Card;
    ApplicationArea = All;
    // UsageCategory = Administration;
    SourceTable = "AWB Details";


    layout
    {
        area(Content)
        {
            group("Air waybill")
            {
                field("AWB ID"; Rec."AWB ID")
                {
                    ToolTip = 'Specifies the value of the AWB Number field.', Comment = '%';
                    Enabled = false;
                }
                field("AWB Number"; Rec."AWB Number")
                {
                    ToolTip = 'Specifies the value of the AWB Number field.', Comment = '%';
                    ShowMandatory
                     = true;

                    trigger OnValidate()
                    var
                        AWBDetails: Record "AWB Details";
                    begin
                        Clear(AWBDetails);
                        AWBDetails.SetRange("AWB Number", REc."AWB Number");
                        AWBDetails.SetFilter("AWB ID", '<> %1', Rec."AWB ID");
                        IF AWBDetails.FindFirst() then
                            Error('AWB Number must be unique for each AWB');
                    end;
                }
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field.', Comment = '%';
                }
                field(Airline; Rec.Airline)
                {
                    ToolTip = 'Specifies the value of the Airline field.', Comment = '%';
                }
                field("Free Demurrage Days"; Rec."Free Demurrage Days")
                {
                    ToolTip = 'Specifies the value of the Free Demurrage Days field.', Comment = '%';
                }
                field("Gross Weight in KG"; Rec."Gross Weight in KG")
                {
                    ToolTip = 'Specifies the value of the GROSS Weight in KG field.', Comment = '%';

                    trigger OnValidate()
                    begin
                        IF (Rec."Gross Weight in KG" <> 0) and (Rec."Volumetric Weight in KG" <> 0) then begin
                            IF Rec."Gross Weight in KG" >= Rec."Volumetric Weight in KG" then
                                Rec."Chargable Weight in KG" := Rec."Gross Weight in KG" else
                                Rec."Chargable Weight in KG" := Rec."Volumetric Weight in KG";
                        end;
                    end;
                }
                field("Volumetric Weight in KG"; Rec."Volumetric Weight in KG")
                {
                    ToolTip = 'Specifies the value of the VOLUMETRIC Weight in KG field.', Comment = '%';
                    trigger OnValidate()
                    begin
                        IF (Rec."Gross Weight in KG" <> 0) and (Rec."Volumetric Weight in KG" <> 0) then begin
                            IF Rec."Gross Weight in KG" >= Rec."Volumetric Weight in KG" then
                                Rec."Chargable Weight in KG" := Rec."Gross Weight in KG" else
                                Rec."Chargable Weight in KG" := Rec."Volumetric Weight in KG";
                        end;
                    end;
                }
                field("Chargable Weight in KG"; Rec."Chargable Weight in KG")
                {
                    ToolTip = 'Specifies the value of the CHARGABLE Weight in KG field.', Comment = '%';
                }
                field("Net Weight in KG"; Rec."Net Weight in KG")
                {
                    //   Editable = false;
                    ToolTip = 'Specifies the value of the Weight in KG field.', Comment = '%';
                }
                field("Voyage Number"; Rec."Voyage Number")
                {
                    ToolTip = 'Specifies the value of the Voyage Number field.', Comment = '%';
                }
                field("Cargo Description"; Rec."Cargo Description")
                {
                    ToolTip = 'Specifies the value of the Cargo Description field.', Comment = '%';
                }
                field(Origin; Rec.Origin)
                {
                    ToolTip = 'Specifies the value of the Origin field.', Comment = '%';
                }
                field("Airport of Loading"; Rec."Airport of Loading")
                {
                    ToolTip = 'Specifies the value of the Airport of Loading field.', Comment = '%';
                }

                field(Transshipment; Rec.Transshipment)
                {
                    ToolTip = 'Specifies the value of the Transshipment field.', Comment = '%';
                }
                field("Transshipment Airport"; Rec."Transshipment Airport")
                {
                    ToolTip = 'Specifies the value of the Transshipment Airport field.', Comment = '%';
                }
                field("Airport of Discharge"; Rec."Airport of Discharge")
                {
                    ToolTip = 'Specifies the value of the Airport of Discharge field.', Comment = '%';
                }

                field(AWB; Rec.AWB)
                {
                    ToolTip = 'Specifies the value of the AWB field.', Comment = '%';
                }
                field("Clearing Agent"; Rec."Clearing Agent")
                {
                    ToolTip = 'Specifies the value of the Clearing Agent field.', Comment = '%';
                }
                field("Docs Sent to Entity Date"; Rec."Docs Sent to Entity Date")
                {
                    ToolTip = 'Specifies the value of the Docs Sent to Entity Date field.', Comment = '%';
                }
                field("Docs Received in Entity Date"; Rec."Docs Received in Entity Date")
                {
                    ToolTip = 'Specifies the value of the Docs Received in Entity Date field.', Comment = '%';
                }
                field("Docs AWB No"; Rec."Docs AWB No")
                {
                    ToolTip = 'Specifies the value of the Docs AWB No field.', Comment = '%';
                }
                field("Copy Docs Sent to Agent Date"; Rec."Copy Docs Sent to Agent Date")
                {
                    ToolTip = 'Specifies the value of the Copy Docs Sent to Agent Date field.', Comment = '%';
                }
                field("Docs Delivered to Clearing Agent"; Rec."Docs Delivered to Clearing Agent")
                {
                    ToolTip = 'Specifies the value of the Docs Delivered to Clearing Agent field.', Comment = '%';
                }
                field("Assessment Date"; Rec."Assessment Date")
                {
                    ToolTip = 'Specifies the value of the Assessment Date field.', Comment = '%';
                }
                field("Duty Paid Date"; Rec."Duty Paid Date")
                {
                    ToolTip = 'Specifies the value of the Duty Paid Date field.', Comment = '%';
                }
                field("Duty Receipt sent to agent"; Rec."Duty Receipt sent to agent")
                {
                    ToolTip = 'Specifies the value of the Duty Receipt sent to agent field.', Comment = '%';
                }
                field(Remarks; Rec.Remarks)
                {
                    ToolTip = 'Specifies the value of the Remarks field.', Comment = '%';
                    MultiLine = true;
                }
                field("Final ETR"; Rec."Final ETR")
                {
                    ToolTip = 'Specifies the value of the Final ETR field.', Comment = '%';
                }
                field("Final ETD"; Rec."Final ETD")
                {
                    ToolTip = 'Specifies the value of the Final ETD field.', Comment = '%';
                }

                field("Final ETA"; Rec."Final ETA")
                {
                    ToolTip = 'Specifies the value of the Final ETA field.', Comment = '%';
                }
                field("Final ETAW"; Rec."Final ETAW")
                {
                    ToolTip = 'Specifies the value of the Final ETAW field.', Comment = '%';
                }
                field(ATA; Rec.ATA)
                {
                    ToolTip = 'Specifies the value of the ATA field.', Comment = '%';
                }
            }

            part(PurchLines; "Purchase Order Subform")
            {
                ApplicationArea = Suite;
                // Editable = IsPurchaseLinesEditable;
                // Enabled = IsPurchaseLinesEditable;
                ShowFilter = true;

                SubPageLink = "BL/AWB ID" = field("AWB ID");
                UpdatePropagation = Both;
                Editable = false;
                Enabled = false;

            }

            part(PurchInvLines; "Posted Purch. Invoice Subform")
            {
                Caption = 'Posted Lines';
                ApplicationArea = Basic, Suite;
                Editable = false;
                Enabled = false;
                // Editable = IsPurchaseLinesEditable;
                // Enabled = IsPurchaseLinesEditable;
                ShowFilter = true;
                SubPageLink = "BL/AWB ID" = field("AWB ID");
                UpdatePropagation = Both;
            }
        }
        area(Factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = const(Database::"AWB Details"),
                              "No." = field("AWB ID");
                // "Document Type" = field("Document Type");
            }
            part("Shipping Dates"; "Shipping Dates LOG Factbox")
            {
                ApplicationArea = All;
                Caption = 'Shipping Dates Log';
                Provider = PurchLines;
                SubPageLink = "PO Number" = field("Document No."), "PO Line Number" = field("Line No."), "BL/AWB ID" = field("BL/AWB ID");//BL and AWB filter case 3emel 7ada remove la line from AWB to other AWB  ta tbayen bas log ha hayda AWB same for BL and container
                // "Document Type" = field("Document Type");
            }
        }
    }

    actions
    {
        area(Processing)
        {
        }
    }

    var
        myInt: Integer;
}