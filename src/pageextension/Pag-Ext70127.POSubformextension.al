pageextension 70127 "PO Subform e xtension" extends "Purchase Order Subform"
{
    layout
    {

        // Add changes to page layout here
        addafter("Expected Receipt Date")
        {

            field("Initial ETR"; Rec."Initial ETR")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETR field.', Comment = '%';
                ShowMandatory = true;
            }
            field("Initial ETD"; Rec."Initial ETD")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETD field.', Comment = '%';
                ShowMandatory = true;
            }
            field("Initial ETA"; Rec."Initial ETA")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETA field.', Comment = '%';
                ShowMandatory = true;
            }
            field("Initial ETAW"; Rec."Initial ETAW")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Initial ETAW field.', Comment = '%';
                ShowMandatory = true;
            }
            field("Final ETR"; Rec."Final ETR")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETR field.', Comment = '%';
            }

            field("Final ETD"; Rec."Final ETD")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETD field.', Comment = '%';
            }
            field("Final ETA"; Rec."Final ETA")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETA field.', Comment = '%';
            }
            field("Final ETAW"; Rec."Final ETAW")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Final ETAW field.', Comment = '%';
            }
            field(ATA; Rec.ATA)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the ATA field.', Comment = '%';
            }
            field("Batch Number"; Rec."Batch Number")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Batch Number field.', Comment = '%';
                Editable = false;
            }
            field("BL/AWB ID"; Rec."BL/AWB ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the BL/AWB ID field.', Comment = '%';
                Editable = false;
            }
            field("Truck WayBill ID"; Rec."Truck WayBill ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Truck WayBill ID field.', Comment = '%';
                Editable = false;
            }
            field("Truck Details ID"; Rec."Truck Details ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Truck Details ID field.', Comment = '%';
                Editable = false;
            }
            field("InLand ID"; Rec."InLand ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the InLand ID field.', Comment = '%';
                Editable = false;
            }
            field("Inland Details Line No"; Rec."Inland Details Line No")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Inland Details Line No field.', Comment = '%';
                Editable = false;
            }
            field("GROSS Weight in KG"; Rec."GROSS Weight in KG")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the GROSS Weight in KG field.', Comment = '%';
                Editable = false;
            }
            field("NET Weight in KG"; Rec."NET Weight in KG")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the NET Weight in KG field.', Comment = '%';
                Editable = false;
            }
            field("VOLUMETRIC Weight in KG"; Rec."VOLUMETRIC Weight in KG")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the VOLUMETRIC Weight in KG field.', Comment = '%';
                Editable = false;
            }
            field("CHARGABLE Weight in KG"; Rec."CHARGABLE Weight in KG")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the CHARGABLE Weight in KG field.', Comment = '%';
                Editable = false;
            }
            field("Port of Loading"; Rec."Port of Loading")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Port of Loading field.', Comment = '%';
                Editable = false;
            }
            field("Port of Discharge"; Rec."Port of Discharge")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Port of Discharge field.', Comment = '%';
                Editable = false;
            }
            field("AirPort of Discharge"; Rec."AirPort of Discharge")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the AirPort of Discharge field.', Comment = '%';
                Editable = false;
            }
            field("AirPort of Loading"; Rec."AirPort of Loading")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the AirPort of Loading field.', Comment = '%';
                Editable = false;
            }
            // field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
            // {
            //     ApplicationArea = All;
            //     ToolTip = 'Specifies the value of the Buy-from Vendor Name field.', Comment = '%';
            //     Editable = false;
            // }
            field("Shipping By"; Rec."Shipping By")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Shipping By field.', Comment = '%';
                Editable = false;
            }
            field("Container ID"; Rec."Container ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Container ID field.', Comment = '%';
                Editable = false;
            }
            field("Container Line No."; Rec."Container Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Container Line No. field.', Comment = '%';
                Editable = false;
            }
            field(Liner; Rec.Liner)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Liner field.', Comment = '%';
            }
            field(Airline; Rec.Airline)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Airline field.', Comment = '%';
            }
            field("Line Amount LCY"; Rec."Line Amount LCY")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Line Amount field.', Comment = '%';
                Editable = false;
            }

        }


        /*     addafter(Quantity)
             {
                 field("Quantity Shipped"; Rec."Quantity Shipped")
                 {
                     ApplicationArea = All;
                     ToolTip = 'Specifies the value of the Quantity Shipped field.', Comment = '%';
                     // Editable = false;
                     // Enabled = false;
                     trigger OnValidate()
                     var
                         PurchaseLine: Record "Purchase Line";
                         PurchaseLine2: Record "Purchase Line";
                         PurchaseLine3: Record "Purchase Line";
                         SalesLine4: Record "Sales Line";//added by AI on 17/04/2025
                         LineSpacing: Integer;
                         PurchaseLine4: Record "Purchase Line";

                         LinesSplitted: Boolean;

                         SalesLine: Record "Sales Line";
                         SalesLine2: Record "Sales Line";
                     begin
                         Rec.TestField("Quantity Received", 0);
                         Rec.TestField("BL/AWB ID", '');//added on 25/02/2025
                         Rec.TestField("Truck WayBill ID", '');//added on 25/02/2025
                         LinesSplitted := false;
                         Rec.TestField("Quantity Shipped");
                         IF Rec."Quantity Shipped" > Rec.Quantity then
                             Error('Quantity shipped must be less than Quantity');

                         IF Rec."Line is Splitted" = false then begin
                             Rec."Original Quantity" := Rec.Quantity;
                             Rec."Original Line No." := Rec."Line No.";
                             REc."Splitted Line No." := FORMAT(Rec."Line No.") + '0.1';
                         end;
                         //splitted line
                         IF (Rec."Quantity Shipped" <> Rec.Quantity) then begin
                             PurchaseLine.Init();
                             PurchaseLine.Copy(Rec);
                             //   EVALUATE(PurchaseLine."Line No.", IncStr(FORMAT(Rec."Line No.")));// + 1;//commented by AI on 17/04/2025 reason adding only 1 to the split line is showing error 'There is not enough space to insert correction lines.' on undo shipment

                             //added by AI on 17/04/2025
                             LineSpacing := 0;
                             Clear(PurchaseLine4);
                             PurchaseLine4.SetRange("Document Type", PurchaseLine4."Document Type"::Order);
                             PurchaseLine4.SetRange("Document No.", Rec."Document No.");
                             PurchaseLine4."Document Type" := Rec."Document Type";
                             PurchaseLine4."Document No." := Rec."Document No.";
                             PurchaseLine4."Line No." := Rec."Line No.";
                             PurchaseLine4.Find('=');
                             if PurchaseLine4.Find('>') then begin
                                 LineSpacing := (PurchaseLine4."Line No." - Rec."Line No.") div 2;
                             end else
                                 LineSpacing := 10000;

                             PurchaseLine."Line No." := Rec."Line No." + LineSpacing;


                             PurchaseLine.Validate(Quantity, PurchaseLine.Quantity - Rec."Quantity Shipped");
                             PurchaseLine.Validate("Direct Unit Cost");
                             PurchaseLine."Quantity Shipped" := 0;
                             //AN 03/14/25 +
                             PurchaseLine."Initial ETA" := 0D;
                             PurchaseLine."Initial ETAW" := 0D;
                             PurchaseLine."Initial ETD" := 0D;
                             PurchaseLine."Initial ETR" := 0D;
                             //AN 03/14/25 -
                             //  PurchaseLine."Remaining Quantity Shipped" := PurchaseLine."Original Quantity" - PurchaseLine2."Quantity Shipped";
                             PurchaseLine."Line is Splitted" := true;
                             PurchaseLine."Splitted Line No." := IncStr(PurchaseLine."Splitted Line No.");
                             PurchaseLine.Insert();

                             LinesSplitted := true;
                         end;


                         Clear(PurchaseLine2);
                         PurchaseLine2.SetRange("Document Type", PurchaseLine2."Document Type"::Order);
                         PurchaseLine2.SetRange("Document No.", Rec."Document No.");
                         PurchaseLine2.SetRange("Original Line No.", Rec."Original Line No.");
                         PurchaseLine2.CalcSums("Quantity Shipped");

                         Clear(PurchaseLine3);
                         PurchaseLine3.SetRange("Document Type", PurchaseLine3."Document Type"::Order);
                         PurchaseLine3.SetRange("Document No.", Rec."Document No.");
                         PurchaseLine3.SetRange("Original Line No.", Rec."Original Line No.");
                         //    PurchaseLine3.CalcSums("Quantity Shipped");
                         //   Message(Format(PurchaseLine2."Quantity Shipped"));



                         //line being modified
                         //   Rec."Remaining Quantity Shipped" := Rec."Original Quantity" - PurchaseLine2."Quantity Shipped";
                         IF LinesSplitted then begin
                             Rec.Validate(Quantity, Rec."Quantity Shipped");
                             Rec.Validate("Direct Unit Cost");
                             rec."Line is Splitted" := true;
                             REc.Modify();
                         end;
                         Rec."Disable fields after Shipping" := true;
                         Rec."Remaining Quantity Shipped" := Rec."Original Quantity" - PurchaseLine2."Quantity Shipped" - Rec."Quantity Shipped";
                         REc.Modify();


                         PurchaseLine3.ModifyAll("Remaining Quantity Shipped", Rec."Original Quantity" - PurchaseLine2."Quantity Shipped" - Rec."Quantity Shipped");

                         CurrPage.Update();

                         //Rec is current line that will be splitted
                         //Purchase line is the splitted line
                         //SalesLine is the mirror of Rec the current line, that will be splitted
                         //SalesLine2 is the splitted line

                         //sales line splitting
                         Clear(SalesLine);
                         IF SalesLine.Get(SalesLine."Document Type"::Order, Rec."SIGMA Sales Order No.", Rec."SIGMA Sales Order Line No.") then begin
                             IF SalesLine."Line is Splitted" = false then begin
                                 SalesLine."Original Line No." := SalesLine."Line No.";
                                 SalesLine."Splitted Line No." := FORMAT(SalesLine."Line No.") + '0.1';
                                 SalesLine."Original PO Line No." := Rec."Line No.";
                                 SalesLine."SIGMA Purchase Order Line No." := Rec."Line No.";
                                 SalesLine.Modify();
                             end;
                             //splitted Sales line
                             IF LinesSplitted then begin

                                 SalesLine2.Init();

                                 SalesLine2.Copy(SalesLine);
                                 SalesLine2."Skip Line Checking " := true;
                                 //   EVALUATE(SalesLine2."Line No.", IncStr(FORMAT(SalesLine."Line No.")));// + 1;//commented by AI on 17/04/2025 reason adding only 1 to the split line is showing error 'There is not enough space to insert correction lines.' on undo shipment

                                 //added by AI on 17/04/2025
                                 LineSpacing := 0;
                                 Clear(SalesLine4);
                                 SalesLine4.SetRange("Document Type", SalesLine4."Document Type"::Order);
                                 SalesLine4.SetRange("Document No.", SalesLine."Document No.");
                                 SalesLine4."Document Type" := Rec."Document Type";
                                 SalesLine4."Document No." := SalesLine."Document No.";
                                 SalesLine4."Line No." := SalesLine."Line No.";
                                 SalesLine4.Find('=');
                                 if SalesLine4.Find('>') then begin
                                     LineSpacing := (SalesLine4."Line No." - SalesLine."Line No.") div 2;
                                 end else
                                     LineSpacing := 10000;

                                 SalesLine2."Line No." := SalesLine."Line No." + LineSpacing;


                                 SalesLine2.Validate(Quantity, PurchaseLine.Quantity);//mirror of the PO line
                                 //SalesLine2."Quantity Shipped" := 0;
                                 //  SalesLine2."Remaining Quantity Shipped" := SalesLine2."Original Quantity" - SalesLine22."Quantity Shipped";
                                 SalesLine2."Line is Splitted" := true;
                                 SalesLine2."Splitted Line No." := IncStr(SalesLine2."Splitted Line No.");
                                 SalesLine2."SIGMA Purchase Order Line No." := PurchaseLine."Line No.";
                                 SalesLine2."Skip Line Checking " := false;
                                 SalesLine2.Insert();

                                 LinesSplitted := true;
                             end;

                             IF LinesSplitted then begin
                                 SalesLine."Skip Line Checking " := true;
                                 SalesLine.Validate(Quantity, Rec.Quantity);//mirror of the PO line
                                 SalesLine."Line is Splitted" := true;
                                 SalesLine."SIGMA Purchase Order Line No." := Rec."Line No.";
                                 SalesLine."Skip Line Checking " := false;
                                 SalesLine.Modify();
                             end;

                             Rec."SIGMA Sales Order Line No." := SalesLine."Line No.";
                             Rec.Modify();

                             IF LinesSplitted then begin
                                 PurchaseLine."SIGMA Sales Order Line No." := SalesLine2."Line No.";
                                 PurchaseLine.Modify();
                             end;

                         end;
                     end;


                 }
                 field("Remaining Quantity Shipped"; Rec."Remaining Quantity Shipped")
                 {
                     ApplicationArea = All;
                     ToolTip = 'Specifies the value of the Remaining Quantity Shipped field.', Comment = '%';
                     Editable = false;
                     Enabled = false;
                 }
                 field("Splitted Line No."; Rec."Splitted Line No.")
                 {
                     ApplicationArea = All;
                     ToolTip = 'Specifies the value of the Splitted Line No. field.', Comment = '%';
                     Editable = false;
                     Enabled = false;
                 }
                 field("Line is Splitted"; Rec."Line is Splitted")
                 {
                     ApplicationArea = All;
                     ToolTip = 'Specifies the value of the Line is Splitted field.', Comment = '%';
                     Editable = false;
                     Enabled = false;
                 }
                 field("Original Quantity"; Rec."Original Quantity")
                 {
                     ApplicationArea = All;
                     ToolTip = 'Specifies the value of the Original Quantity field.', Comment = '%';
                     Editable = false;
                     Enabled = false;
                     BlankZero = true;
                 }
                 field("Original Line No."; Rec."Original Line No.")
                 {
                     ApplicationArea = All;
                     ToolTip = 'Specifies the value of the Original Line No. field.', Comment = '%';
                     Editable = false;
                     Enabled = false;
                 }
             }*/// abdallah19/08/2025

        // modify("Document No.")
        // {
        //     Visible = true;
        // }
        addbefore(Type)
        {

            field("Document Type"; Rec."Document Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the type of document that you are about to create.';
                Editable = false;
            }
            field("SIGMA Sales Order No."; Rec."SIGMA Sales Order No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SIGMA Sales Order No. field.', Comment = '%';
                Editable = false;

                trigger OnLookup(var Text: Text): Boolean
                var
                    SalesLine: Record "Sales Line";

                begin
                    Clear(SalesLine);
                    SalesLine.SetRange("Document No.", Rec."SIGMA Sales Order No.");
                    SalesLine.SetRange("Line No.", Rec."SIGMA Sales Order Line No.");
                    page.Run(page::"Sales Lines", SalesLine);

                end;
            }
            field("SIGMA Sales Order Line No."; Rec."SIGMA Sales Order Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SIGMA Sales Order Line No. field.', Comment = '%';
                Editable = false;

                trigger OnLookup(var Text: Text): Boolean
                var
                    SalesLine: Record "Sales Line";

                begin
                    Clear(SalesLine);
                    SalesLine.SetRange("Document No.", Rec."SIGMA Sales Order No.");
                    SalesLine.SetRange("Line No.", Rec."SIGMA Sales Order Line No.");
                    page.Run(page::"Sales Lines", SalesLine);

                end;
            }

        }

        modify("Direct Unit Cost")
        {

            trigger OnAfterValidate()
            var
                CostVariationLOG: Record "Cost Variation LOG";
            begin
                if xRec."Direct Unit Cost" <> 0 then begin
                    CostVariationLOG.Init();
                    CostVariationLOG."Item Number" := Rec."No.";
                    CostVariationLOG."New Cost" := Rec."Direct Unit Cost";
                    CostVariationLOG."Old Cost" := xRec."Direct Unit Cost";
                    CostVariationLOG."PO Number" := Rec."Document No.";
                    CostVariationLOG."PO Line Number" := Rec."Line No.";
                    CostVariationLOG."Project No." := Rec."Job No.";
                    CostVariationLOG."Project planning Line No." := Rec."Job Planning Line No.";
                    CostVariationLOG."Created By" := UserId;
                    CostVariationLOG.Insert(true);
                end;
            end;

        }


        /*  modify(Quantity)
          {
              Editable = (Rec."SIGMA Sales Order No." = '') OR (CanEditPO_SO_Lines);
              trigger OnAfterValidate()
              var
                  SalesLine: Record "Sales Line";
                  ProjectLine: Record "Job Planning Line";
                  JobPlanningLineInvoice: Record "Job Planning Line Invoice";
                  ProjectLineunitCost: Decimal;
                  CostVariationLOG: Record "Cost Variation LOG";
              begin
                  ProjectLineunitCost := 0;
                  IF (NOT CanEditPO_SO_Lines) then
                      if REc."SIGMA Sales Order Line No." <> 0 then
                          Error(Text002, Rec.FieldCaption(Quantity), Rec."SIGMA Sales Order No.", Rec."SIGMA Sales Order Line No.");

                  Clear(SalesLine);
                  IF SalesLine.get(SalesLine."Document Type"::Order, Rec."SIGMA Sales Order No.", Rec."SIGMA Sales Order Line No.") then begin
                      IF Rec.Quantity <> 0 then begin
                          IF Rec.Quantity <> SalesLine.Quantity then begin
                              IF Confirm(StrSubstNo('Warninig! the quantity in the sales %1 line %2 is different from the purchase line. Do you want to update the Quantity on the Purchase Line too?',
                                    Rec."SIGMA Sales Order No.", Rec."SIGMA Sales Order Line No.")) then begin
                                  //ADDED on 13/01/2025

                                  Clear(ProjectLine);
                                  ProjectLine.Get(SalesLine."Job No.", SalesLine."Job Task No.", SalesLine."Job Planning Line No.");
                                  ProjectLineunitCost := ProjectLine."Unit Cost";//added on 02/04/2025
                                  Clear(JobPlanningLineInvoice);
                                  JobPlanningLineInvoice.SetRange("Job No.", ProjectLine."Job No.");
                                  JobPlanningLineInvoice.SetRange("Job Task No.", ProjectLine."Job Task No.");
                                  JobPlanningLineInvoice.SetRange("Job Planning line No.", ProjectLine."Line No.");
                                  // JobPlanningLineInvoice.SetRange("Document Type", SalesLine."Document Type");
                                  // JobPlanningLineInvoice.SetRange("Document No.", SalesLine."Document No.");
                                  //JobPlanningLineInvoice.Get(ProjectLine."Job No.", ProjectLine."Job Task No.", ProjectLine."Line No.", SalesLine."Document Type", SalesLine."Document No.", SalesLine."Line No.");
                                  IF JobPlanningLineInvoice.FindFirst()
                                  then begin
                                      JobPlanningLineInvoice.Validate("Quantity Transferred", Rec.Quantity);
                                      JobPlanningLineInvoice.Modify();
                                  end;
                                  ProjectLine.Validate(Quantity, Rec.Quantity);
                                  ProjectLine.Validate("Unit Price", SalesLine."Unit Price");
                                  IF ProjectLineunitCost <> 0 then//added on 02/04/2025
                                      ProjectLine.Validate("Unit Cost", ProjectLineunitCost);//added on 02/04/2025
                                  ProjectLine.Validate("Remaining Qty.");
                                  ProjectLine.Modify();



                                  //

                                  SalesLine.Validate(Quantity, Rec.Quantity);
                                  SalesLine.Modify();

                                  CostVariationLOG.Init();
                                  CostVariationLOG."Item Number" := Rec."No.";
                                  CostVariationLOG."old Quantity" := xRec.Quantity;
                                  CostVariationLOG."new Quantity" := Rec.Quantity;
                                  CostVariationLOG."PO Number" := Rec."Document No.";
                                  CostVariationLOG."PO Line Number" := Rec."Line No.";
                                  CostVariationLOG."Project No." := Rec."Job No.";
                                  CostVariationLOG."Project planning Line No." := Rec."Job Planning Line No.";
                                  CostVariationLOG."Created By" := UserId;
                                  CostVariationLOG.Insert(true);

                              end;
                          end;
                      end;
                  end;
              end;

          }
          modify("Job No.")//commented on 29/11/2024 need to check
          { Editable = false; }
          modify("Job Task No.")
          { Editable = false; }
          modify("Job Planning Line No.")
          { Editable = false; }

          addafter("Job Planning Line No.")
          {
              field("Job#"; Rec."Job#")
              {
                  ApplicationArea = All;
                  ToolTip = 'Specifies the value of the Job ID field.', Comment = '%';
                  Editable = false;
              }
              field("Subjob ID"; Rec."Subjob ID")
              {
                  ApplicationArea = All;
                  ToolTip = 'Specifies the value of the Subjob ID field.', Comment = '%';
                  Editable = false;
              }
          }*/// abdallah19/08/2025
    }


    actions
    {
        // Add changes to page actions here
        addafter(SelectMultiItems)
        {
            action("Add Lines")
            {
                Image = Import;
                ApplicationArea = All;
                trigger OnAction()
                var
                    PurchaseOrderLinepage: page "Purchase Lines";
                    PurchaseOrderLine: Record "Purchase Line";
                    "AWB Card": Page "AWB Card";
                    BLAWBNumber: Code[20];
                    ContainerNumber: Code[50];
                    ContainerLineNumber: Integer;
                    ContainerDetails: Record "Container Details";
                    AWBDetails: Record "AWB Details";
                    TruckWayBillID: Code[20];
                    TruckDetailsLineNo: Integer;
                    TruckDetails: Record "Truck Details";
                    SQProjectFilter: Text;//added on 19/03/2025
                    AWBList: Record "AWB Details";
                    BLList: Record "BL Details";
                    TruckList: Record "Truck WayBill";
                    ShippingQuotationReference: Code[50];
                    DocumentAttachment: Record "Document Attachment";
                    InLandID: Code[20];//added on 06/04/2025
                    InLandDetailsLineNo: Integer;//added on 06/04/2025

                begin
                    rec.FilterGroup(4);

                    BLAWBNumber := Rec.GetFilter("BL/AWB ID");
                    ContainerNumber := Rec.GetFilter("Container ID");

                    IF rec.GetFilter("Container Line No.") <> '' then
                        EVALUATE(ContainerLineNumber, rec.GetFilter("Container Line No."));

                    //added 27/01/2025
                    TruckWayBillID := Rec.GetFilter("Truck WayBill ID");
                    IF rec.GetFilter("Truck Details Line No.") <> '' then
                        EVALUATE(TruckDetailsLineNo, rec.GetFilter("Truck Details Line No."));

                    InLandID := Rec.GetFilter("InLand ID");
                    IF rec.GetFilter("InLand ID") <> '' then
                        EVALUATE(InLandDetailsLineNo, rec.GetFilter("Inland Details Line No"));

                    Clear(PurchaseOrderLine);
                    PurchaseOrderLine.SetRange("Document Type", PurchaseOrderLine."Document Type"::Order);
                    if InLandID = '' then begin
                        PurchaseOrderLine.SetRange("BL/AWB ID", '');
                        PurchaseOrderLine.SetRange("Truck WayBill ID", '');
                    end;


                    //AN 6/4/2025 +
                    if InLandID <> '' then
                        PurchaseOrderLine.SetRange("InLand ID", '');
                    //AN 6/4/2025 
                    PurchaseOrderLine.SetRange("Quantity Received", 0);
                    PurchaseOrderLine.SetFilter("Initial ETA", '<> %1', 0D);//added on 28112024
                    PurchaseOrderLine.SetFilter("Initial ETR", '<> %1', 0D);
                    PurchaseOrderLine.SetFilter("Initial ETAW", '<> %1', 0D);
                    PurchaseOrderLine.SetFilter("Initial ETD", '<> %1', 0D);

                    Clear(PurchaseOrderLinepage);
                    PurchaseOrderLinepage.SetTableView(PurchaseOrderLine);
                    PurchaseOrderLinepage.LookupMode(true);
                    IF PurchaseOrderLinepage.RunModal() = Action::LookupOK then begin

                        //AN 04/03/2025
                        //AWB
                        Clear(AWBDetails);
                        If AWBDetails.Get(BLAWBNumber) then begin
                            DocumentAttachment.SetRange("No.", AWBDetails."AWB ID");
                            DocumentAttachment.SetRange("Attachment ID", 'AWB');
                            DocumentAttachment.SetRange("File Name", '');
                            if DocumentAttachment.FindFirst() then begin
                                Error('Please add AWB attachment first!');
                            end;
                        end;
                        //BL List
                        Clear(BLList);
                        If BLList.Get(BLAWBNumber) then begin
                            DocumentAttachment.SetRange("No.", BLList."BL ID");
                            DocumentAttachment.SetRange("Attachment ID", 'Bill of Lading');
                            DocumentAttachment.SetRange("File Name", '');
                            if DocumentAttachment.FindFirst() then begin
                                Error('Please add Bill of Lading attachment first!');
                            end;
                        end;

                        //TruckWayBill
                        Clear(TruckList);
                        If TruckList.Get(TruckWayBillID) then begin
                            DocumentAttachment.SetRange("No.", TruckList."Truck WayBill ID");
                            DocumentAttachment.SetRange("Attachment ID", 'Truck WayBill');
                            DocumentAttachment.SetRange("File Name", '');
                            if DocumentAttachment.FindFirst() then begin
                                Error('Please add TruckWayBill attachment first!');
                            end;
                        end;
                        PurchaseOrderLinepage.SetSelectionFilter(PurchaseOrderLine);
                        if PurchaseOrderLine.FindSet() then
                            repeat

                                PurchaseOrderLine."BL/AWB ID" := BLAWBNumber;
                                PurchaseOrderLine."Container ID" := ContainerNumber;
                                PurchaseOrderLine."Container Line No." := ContainerLineNumber;
                                PurchaseOrderLine."Truck WayBill ID" := TruckWayBillID;//added on 27/01/2025
                                PurchaseOrderLine."Truck Details Line No." := TruckDetailsLineNo;//added on 27/01/2025
                                PurchaseOrderLine."InLand ID" := InLandID;//added on 06/04/2025
                                PurchaseOrderLine."Inland Details Line No" := InLandDetailsLineNo;//added on 06/04/2025


                                Clear(ContainerDetails);//case BL
                                IF ContainerDetails.Get(BLAWBNumber, ContainerLineNumber) then begin
                                    PurchaseOrderLine.Validate("Shipping By", PurchaseOrderLine."Shipping By"::Sea);//added on 27/01/2025
                                    PurchaseOrderLine.Validate("Final ETA", ContainerDetails."Final ETA");

                                    PurchaseOrderLine.Validate("Final ETD", ContainerDetails."Final ETD");
                                    PurchaseOrderLine.Validate("Final ETAW", ContainerDetails."Final ETAW");
                                    PurchaseOrderLine.Validate("ATA", ContainerDetails."ATA");
                                    PurchaseOrderLine.Validate("Final ETR", ContainerDetails."Final ETR");
                                end;

                                Clear(AWBDetails);//case AWB
                                IF AWBDetails.Get(BLAWBNumber) then begin
                                    PurchaseOrderLine.Validate("Shipping By", PurchaseOrderLine."Shipping By"::Air);//added on 27/01/2025
                                    PurchaseOrderLine.Validate("Final ETA", AWBDetails."Final ETA");

                                    PurchaseOrderLine.Validate("Final ETD", AWBDetails."Final ETD");
                                    PurchaseOrderLine.Validate("Final ETAW", AWBDetails."Final ETAW");
                                    PurchaseOrderLine.Validate("ATA", AWBDetails."ATA");
                                    PurchaseOrderLine.Validate("Final ETR", AWBDetails."Final ETR");
                                end;

                                Clear(TruckDetails);//Case Truck Waybill //added on 27/01/2025
                                IF TruckDetails.Get(TruckWayBillID, TruckDetailsLineNo) then begin
                                    PurchaseOrderLine.Validate("Shipping By", PurchaseOrderLine."Shipping By"::InLand);//added on 27/01/2025
                                    PurchaseOrderLine.Validate("Final ETA", TruckDetails."Final ETA");

                                    PurchaseOrderLine.Validate("Final ETD", TruckDetails."Final ETD");
                                    PurchaseOrderLine.Validate("Final ETAW", TruckDetails."Final ETAW");
                                    PurchaseOrderLine.Validate("ATA", TruckDetails."ATA");
                                    PurchaseOrderLine.Validate("Final ETR", TruckDetails."Final ETR");
                                end;

                                PurchaseOrderLine.Modify();
                            until PurchaseOrderLine.Next() = 0;
                    end;
                end;
            }

            action("Remove Lines")//remove added lines to this container from the po lines
            {
                Image = Import;
                ApplicationArea = All;
                Enabled = CanRemovePOLinesfromContainer;

                trigger OnAction()
                var
                    PurchaseOrderLinepage: page "Purchase Lines";
                    PurchaseOrderLine: Record "Purchase Line";
                    "AWB Card": Page "AWB Card";
                    BLAWBNumber: Code[20];
                    ContainerNumber: Code[50];
                    ContainerLineNumber: Integer;
                    Usersetup: Record "User Setup";
                    TruckWayBillID: Code[20];
                    TruckDetailsLineNo: Integer;
                begin
                    Clear(Usersetup);
                    Usersetup.Get(UserId);
                    IF NOT Usersetup."Can Remove Line in BL/AWB" then
                        Error('No Permission');

                    rec.FilterGroup(4);

                    BLAWBNumber := Rec.GetFilter("BL/AWB ID");
                    ContainerNumber := Rec.GetFilter("Container ID");
                    if rec.GetFilter("Container Line No.") <> '' THEN
                        EVALUATE(ContainerLineNumber, rec.GetFilter("Container Line No."));

                    //added 27/01/2025
                    TruckWayBillID := Rec.GetFilter("Truck WayBill ID");
                    IF rec.GetFilter("Truck Details Line No.") <> '' then
                        EVALUATE(TruckDetailsLineNo, rec.GetFilter("Truck Details Line No."));

                    Clear(PurchaseOrderLine);
                    PurchaseOrderLine.SetRange("Document Type", PurchaseOrderLine."Document Type"::Order);
                    PurchaseOrderLine.SetRange("BL/AWB ID", BLAWBNumber);
                    PurchaseOrderLine.SetRange("Container ID", ContainerNumber);
                    PurchaseOrderLine.SetRange("Container Line No.", ContainerLineNumber);
                    PurchaseOrderLine.SetRange("Truck WayBill ID", TruckWayBillID);//added on 27/01/2025
                    PurchaseOrderLine.SetRange("Truck Details Line No.", TruckDetailsLineNo);//added on 27/01/2025
                    Clear(PurchaseOrderLinepage);
                    PurchaseOrderLinepage.SetTableView(PurchaseOrderLine);
                    PurchaseOrderLinepage.LookupMode(true);
                    IF PurchaseOrderLinepage.RunModal() = Action::LookupOK then begin

                        PurchaseOrderLinepage.SetSelectionFilter(PurchaseOrderLine);
                        if PurchaseOrderLine.FindSet() then
                            repeat

                                PurchaseOrderLine."BL/AWB ID" := '';
                                PurchaseOrderLine."Container ID" := '';
                                PurchaseOrderLine."Container Line No." := 0;
                                PurchaseOrderLine."Truck WayBill ID" := '';//added on 27/01/2025
                                PurchaseOrderLine."Truck Details Line No." := 0;//added on 27/01/2025       
                                PurchaseOrderLine.Validate("Shipping By", PurchaseOrderLine."Shipping By"::" ");//added on 27/01/2025
                                PurchaseOrderLine."Final ETA" := 0D;
                                PurchaseOrderLine."Final ETR" := 0D;
                                PurchaseOrderLine."Final ETD" := 0D;
                                PurchaseOrderLine."Final ETAW" := 0D;
                                PurchaseOrderLine."ATA" := 0D;


                                PurchaseOrderLine.Modify();
                            until PurchaseOrderLine.Next() = 0;
                    end;
                end;
            }
            action("Open PO")
            {
                Image = Purchase;
                ApplicationArea = All;
                trigger OnAction()
                var
                    PurchaseHeader: Record "Purchase Header";
                begin
                    PurchaseHeader.Get(Rec."Document Type", Rec."Document No.");
                    page.Run(page::"Purchase Order", PurchaseHeader);
                end;
            }

        }
    }
    //AN 03/27/2025
    // trigger OnQueryClosePage(CloseAction: Action): Boolean
    // var
    //     myInt: Integer;
    // begin
    //     MessagetoFillInitials();
    // end;

    local procedure MessagetoFillInitials()
    var
        myInt: Integer;
    begin
        if (Rec."Initial ETA" = 0D) or (Rec."Initial ETAW" = 0D) or (Rec."Initial ETD" = 0D) or (Rec."Initial ETR" = 0D) then
            Message('Please Fill the Initials!');
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        PO: Record "Purchase Header";
    begin
        Clear(PO);
        PO.Get(Rec."Document Type", Rec."Document No.");
        Rec."Initial ETA" := PO."Initial ETA";
        Rec."Initial ETD" := PO."Initial ETD";

        Rec."Initial ETR" := PO."Initial ETR";
        Rec."Initial ETAW" := PO."Initial ETAW";

    end;



    var
        myInt: Integer;
        UserSetup: Record "User Setup";
        CanRemovePOLinesfromContainer: Boolean;
        Text002: Label 'You can''t change %1 because the order line is associated with Sales order %2 line %3.', Comment = '%1=field name, %2=Document No., %3=Line No.';

}