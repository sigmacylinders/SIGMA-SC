tableextension 70100 "Purchase Line Exttension" extends "Purchase Line"
{
    fields
    {
        // Add changes to table fields here       



        field(70100; "Initial ETR"; Date)//Created on 28/10/2024 with Nathalie
        {
            Caption = 'Initial ETR';

            trigger OnValidate()
            var
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                IF (Rec."Initial ETA" <> 0D) AND (Rec."Initial ETAW" <> 0D) AND (Rec."Initial ETR" <> 0D) AND (Rec."Initial ETD" <> 0D) then begin
                    ShippingDateLOG.Init();
                    ShippingDateLOG."BL/AWB ID" := Rec."BL/AWB ID";
                    ShippingDateLOG."Container Number" := Rec."Container ID";
                    ShippingDateLOG."PO Number" := Rec."Document No.";
                    ShippingDateLOG."PO Line Number" := Rec."Line No.";
                    ShippingDateLOG."Initial ETR" := Rec."Initial ETR";
                    ShippingDateLOG."Initial ETD" := Rec."Initial ETD";
                    ShippingDateLOG."Initial ETA" := Rec."Initial ETA";
                    ShippingDateLOG."Initial ETAW" := Rec."Initial ETAW";
                    ShippingDateLOG.Insert(true);

                end;


            end;
        }
        field(70101; "Initial ETD"; Date)
        {
            Caption = 'Initial ETD';
            trigger OnValidate()
            var
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                IF (Rec."Initial ETA" <> 0D) AND (Rec."Initial ETAW" <> 0D) AND (Rec."Initial ETR" <> 0D) AND (Rec."Initial ETD" <> 0D) then begin
                    ShippingDateLOG.Init();
                    ShippingDateLOG."BL/AWB ID" := Rec."BL/AWB ID";
                    ShippingDateLOG."Container Number" := Rec."Container ID";
                    ShippingDateLOG."PO Number" := Rec."Document No.";
                    ShippingDateLOG."PO Line Number" := Rec."Line No.";
                    ShippingDateLOG."Initial ETR" := Rec."Initial ETR";
                    ShippingDateLOG."Initial ETD" := Rec."Initial ETD";
                    ShippingDateLOG."Initial ETA" := Rec."Initial ETA";
                    ShippingDateLOG."Initial ETAW" := Rec."Initial ETAW";
                    ShippingDateLOG.Insert(true);

                end;


            end;
        }
        field(70102; "Initial ETA"; Date)
        {
            Caption = 'Initial ETA';
            trigger OnValidate()
            var
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                IF (Rec."Initial ETA" <> 0D) AND (Rec."Initial ETAW" <> 0D) AND (Rec."Initial ETR" <> 0D) AND (Rec."Initial ETD" <> 0D) then begin
                    ShippingDateLOG.Init();
                    ShippingDateLOG."BL/AWB ID" := Rec."BL/AWB ID";
                    ShippingDateLOG."Container Number" := Rec."Container ID";
                    ShippingDateLOG."PO Number" := Rec."Document No.";
                    ShippingDateLOG."PO Line Number" := Rec."Line No.";
                    ShippingDateLOG."Initial ETR" := Rec."Initial ETR";
                    ShippingDateLOG."Initial ETD" := Rec."Initial ETD";
                    ShippingDateLOG."Initial ETA" := Rec."Initial ETA";
                    ShippingDateLOG."Initial ETAW" := Rec."Initial ETAW";
                    ShippingDateLOG.Insert(true);

                end;


            end;
        }
        field(70103; "Initial ETAW"; Date)
        {
            Caption = 'Initial ETAW';
            trigger OnValidate()
            var
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                IF (Rec."Initial ETA" <> 0D) AND (Rec."Initial ETAW" <> 0D) AND (Rec."Initial ETR" <> 0D) AND (Rec."Initial ETD" <> 0D) then begin
                    ShippingDateLOG.Init();
                    ShippingDateLOG."BL/AWB ID" := Rec."BL/AWB ID";
                    ShippingDateLOG."Container Number" := Rec."Container ID";
                    ShippingDateLOG."PO Number" := Rec."Document No.";
                    ShippingDateLOG."PO Line Number" := Rec."Line No.";
                    ShippingDateLOG."Initial ETR" := Rec."Initial ETR";
                    ShippingDateLOG."Initial ETD" := Rec."Initial ETD";
                    ShippingDateLOG."Initial ETA" := Rec."Initial ETA";
                    ShippingDateLOG."Initial ETAW" := Rec."Initial ETAW";
                    ShippingDateLOG.Insert(true);

                end;


            end;
        }
        field(70104; "BL/AWB ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70105; "Container ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70106; "Final ETR"; Date)
        {
            Caption = 'Final ETR';

            trigger OnValidate()
            var
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                IF (Rec.ATA <> 0D) AND (Rec."Final ETA" <> 0D) AND (Rec."Final ETAW" <> 0D) AND (Rec."Final ETD" <> 0D) AND (Rec."Final ETR" <> 0D) then begin
                    ShippingDateLOG.Init();
                    ShippingDateLOG."BL/AWB ID" := Rec."BL/AWB ID";
                    ShippingDateLOG."Container Number" := Rec."Container ID";
                    ShippingDateLOG."PO Number" := Rec."Document No.";
                    ShippingDateLOG."PO Line Number" := Rec."Line No.";
                    ShippingDateLOG."Final ETR" := Rec."Final ETR";
                    ShippingDateLOG."Final ETD" := Rec."Final ETD";
                    ShippingDateLOG."Final ETA" := Rec."Final ETA";
                    ShippingDateLOG."Final ETAW" := Rec."Final ETAW";
                    ShippingDateLOG.ATA := Rec.ATA;
                    ShippingDateLOG.Insert(true);
                end;
            end;
        }
        field(70107; "Final ETD"; Date)
        {
            Caption = 'Final ETD';
            trigger OnValidate()
            var
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                IF (Rec.ATA <> 0D) AND (Rec."Final ETA" <> 0D) AND (Rec."Final ETAW" <> 0D) AND (Rec."Final ETD" <> 0D) AND (Rec."Final ETR" <> 0D) then begin
                    ShippingDateLOG.Init();
                    ShippingDateLOG."BL/AWB ID" := Rec."BL/AWB ID";
                    ShippingDateLOG."Container Number" := Rec."Container ID";
                    ShippingDateLOG."PO Number" := Rec."Document No.";
                    ShippingDateLOG."PO Line Number" := Rec."Line No.";
                    ShippingDateLOG."Final ETR" := Rec."Final ETR";
                    ShippingDateLOG."Final ETD" := Rec."Final ETD";
                    ShippingDateLOG."Final ETA" := Rec."Final ETA";
                    ShippingDateLOG."Final ETAW" := Rec."Final ETAW";
                    ShippingDateLOG.ATA := Rec.ATA;
                    ShippingDateLOG.Insert(true);
                end;
            end;
        }
        field(70108; "Final ETA"; Date)
        {
            Caption = 'Final ETA';
            trigger OnValidate()
            var
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                IF (Rec.ATA <> 0D) AND (Rec."Final ETA" <> 0D) AND (Rec."Final ETAW" <> 0D) AND (Rec."Final ETD" <> 0D) AND (Rec."Final ETR" <> 0D) then begin
                    ShippingDateLOG.Init();
                    ShippingDateLOG."BL/AWB ID" := Rec."BL/AWB ID";
                    ShippingDateLOG."Container Number" := Rec."Container ID";
                    ShippingDateLOG."PO Number" := Rec."Document No.";
                    ShippingDateLOG."PO Line Number" := Rec."Line No.";
                    ShippingDateLOG."Final ETR" := Rec."Final ETR";
                    ShippingDateLOG."Final ETD" := Rec."Final ETD";
                    ShippingDateLOG."Final ETA" := Rec."Final ETA";
                    ShippingDateLOG."Final ETAW" := Rec."Final ETAW";
                    ShippingDateLOG.ATA := Rec.ATA;
                    ShippingDateLOG.Insert(true);
                end;
            end;
        }
        field(70109; "ATA"; Date)
        {
            Caption = 'ATA';
            trigger OnValidate()
            var
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                IF (Rec.ATA <> 0D) AND (Rec."Final ETA" <> 0D) AND (Rec."Final ETAW" <> 0D) AND (Rec."Final ETD" <> 0D) AND (Rec."Final ETR" <> 0D) then begin
                    ShippingDateLOG.Init();
                    ShippingDateLOG."BL/AWB ID" := Rec."BL/AWB ID";
                    ShippingDateLOG."Container Number" := Rec."Container ID";
                    ShippingDateLOG."PO Number" := Rec."Document No.";
                    ShippingDateLOG."PO Line Number" := Rec."Line No.";
                    ShippingDateLOG."Final ETR" := Rec."Final ETR";
                    ShippingDateLOG."Final ETD" := Rec."Final ETD";
                    ShippingDateLOG."Final ETA" := Rec."Final ETA";
                    ShippingDateLOG."Final ETAW" := Rec."Final ETAW";
                    ShippingDateLOG.ATA := Rec.ATA;
                    ShippingDateLOG.Insert(true);
                end;
            end;
        }
        field(70110; "Final ETAW"; Date)
        {
            Caption = 'Final ETAW';
            trigger OnValidate()
            var
                ShippingDateLOG: Record "Supply Chain LOG";
                SalesLine: Record "Sales Line";
            begin
                //AN 06/11/2024: Check if the Final ETAW is greater than the Shipment Date on Sales Order
                // if SalesLine.Get(SalesLine."Document Type"::Order, Rec."SIGMA Sales Order No.", Rec."SIGMA Sales Order Line No.") then
                //     if SalesLine."Shipment Date" <> 0D then
                //         if Rec."Final ETAW" > SalesLine."Shipment Date" then
                //             Message('Final ETAW cannot be greater than Shipment Date on Sales Order %1 Line %2', Rec."SIGMA Sales Order No.", Rec."SIGMA Sales Order Line No.");

                IF (Rec.ATA <> 0D) AND (Rec."Final ETA" <> 0D) AND (Rec."Final ETAW" <> 0D) AND (Rec."Final ETD" <> 0D) AND (Rec."Final ETR" <> 0D) then begin
                    ShippingDateLOG.Init();
                    ShippingDateLOG."BL/AWB ID" := Rec."BL/AWB ID";
                    ShippingDateLOG."Container Number" := Rec."Container ID";
                    ShippingDateLOG."PO Number" := Rec."Document No.";
                    ShippingDateLOG."PO Line Number" := Rec."Line No.";
                    ShippingDateLOG."Final ETR" := Rec."Final ETR";
                    ShippingDateLOG."Final ETD" := Rec."Final ETD";
                    ShippingDateLOG."Final ETA" := Rec."Final ETA";
                    ShippingDateLOG."Final ETAW" := Rec."Final ETAW";
                    ShippingDateLOG.ATA := Rec.ATA;
                    ShippingDateLOG.Insert(true);
                end;
            end;
        }
        field(70111; "Container Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(70112; "Truck WayBill ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70113; "Truck Details ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70114; "Truck Details Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70115; "Shipping By"; Option)//added on 27/01/2025
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Sea,Air,InLand;
        }
        field(70116; "Port of Loading"; Code[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("BL Details"."Port of Loading" where("BL ID" = field("BL/AWB ID")));
        }
        field(70117; "Quantity to Split"; Decimal)
        {
            DataClassification = ToBeClassified;
            BlankZero = true;
        }
        field(70118; "Remaining Quantity to Split"; Decimal)
        {
            DataClassification = ToBeClassified;
            BlankZero = true;
        }
        field(70119; "Line is Splitted"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70120; "Splitted Line No."; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70121; "Original Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70122; "Original Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }


        /* modify("No.")
         {
             trigger OnAfterValidate()
             var

                 SalesLine: Record "Sales Line";
                 ProjectLine: Record "Job Planning Line";
                 ProjectLineunitCost: Decimal;
                 PurchLineunitCost: Decimal;
                 ProjectLocationCode: code[20];//added on 07/05/2025
                 ProjectDim1: Code[20];
                 ProjectDim2: Code[20];
                 ProjectDim3: Code[20];
                 ProjectDim4: Code[20];
                 ProjectDim5: Code[20];
                 ProjectDim6: Code[20];
                 CostVariationLOG: Record "Cost Variation LOG";
             begin
                 ProjectLineunitCost := 0;
                 PurchLineunitCost := 0;
                 ProjectLocationCode := '';//added on 07/05/2025
                 ProjectDim1 := '';
                 ;
                 ProjectDim2 := '';
                 ;
                 ProjectDim3 := '';
                 ;
                 ProjectDim4 := '';
                 ;
                 ProjectDim5 := '';
                 ;
                 ProjectDim6 := '';
                 ;
                 Clear(SalesLine);
                 clear(ProjectLine);
                 IF rec."SIGMA Sales Order No." = '' then begin
                     rec."SIGMA Sales Order No." := xRec."SIGMA Sales Order No.";
                 end;

                 IF rec."SIGMA Sales Order Line No." = 0 then begin//below get return empty record if the line is not found in the sales line table
                     rec."SIGMA Sales Order Line No." := xRec."SIGMA Sales Order Line No.";
                 end;
                 IF SalesLine.get(SalesLine."Document Type"::Order, Rec."SIGMA Sales Order No.", Rec."SIGMA Sales Order Line No.") then begin
                     IF Rec."No." <> '' then begin
                         IF Rec."No." <> SalesLine."No." then begin
                             IF Confirm(StrSubstNo('Warninig! the Item Number in the sales %1 line %2 is different from the purchase line. Do you want to update the item Number on the Sales Line too?', Rec."SIGMA Sales Order No.", Rec."SIGMA Sales Order Line No.")) then begin
                                 IF ProjectLine.Get(SalesLine."Job No.", SalesLine."Job Task No.", SalesLine."Job Planning Line No.") then begin
                                     ProjectLineunitCost := ProjectLine."Unit Cost";//added on 07/05/2025
                                     ProjectLocationCode := ProjectLine."Location Code";//added on 07/05/2025
                                     ProjectDim1 := ProjectLine."Shortcut Dimension 1 Code";
                                     ProjectDim2 := ProjectLine."Shortcut Dimension 2 Code";
                                     ProjectDim3 := ProjectLine."Shortcut Dimension 3 Code";
                                     ProjectDim4 := ProjectLine."Shortcut Dimension 4 Code";
                                     ProjectDim5 := ProjectLine."Shortcut Dimension 5 Code";
                                     ProjectDim6 := ProjectLine."Shortcut Dimension 6 Code";

                                     ProjectLine.Validate("No.", Rec."No.");
                                     ProjectLine.Validate("Unit Price", SalesLine."Unit Price");//added on 07/05/2025

                                     IF (ProjectLocationCode <> '') and (ProjectLine."Location Code" = '') then//added on 07/05/2025
                                         ProjectLine.Validate("Location Code", ProjectLocationCode);

                                     IF (ProjectDim1 <> '') and (ProjectLine."Shortcut Dimension 1 Code" = '') then
                                         ProjectLine.Validate("Shortcut Dimension 1 Code", ProjectDim1);

                                     IF (ProjectDim2 <> '') and (ProjectLine."Shortcut Dimension 2 Code" = '') then
                                         ProjectLine.Validate("Shortcut Dimension 2 Code", ProjectDim2);

                                     IF (ProjectDim3 <> '') and (ProjectLine."Shortcut Dimension 3 Code" = '') then
                                         ProjectLine.Validate("Shortcut Dimension 3 Code", ProjectDim3);

                                     IF (ProjectDim4 <> '') and (ProjectLine."Shortcut Dimension 4 Code" = '') then
                                         ProjectLine.Validate("Shortcut Dimension 4 Code", ProjectDim4);

                                     IF (ProjectDim5 <> '') and (ProjectLine."Shortcut Dimension 5 Code" = '') then
                                         ProjectLine.Validate("Shortcut Dimension 5 Code", ProjectDim5);

                                     IF (ProjectDim6 <> '') and (ProjectLine."Shortcut Dimension 6 Code" = '') then
                                         ProjectLine.Validate("Shortcut Dimension 6 Code", ProjectDim6);


                                     IF ProjectLineunitCost <> 0 then//added on 07/05/2025
                                         ProjectLine.Validate("Unit Cost", ProjectLineunitCost);//added on 07/05/2025

                                     ProjectLine.Modify();

                                 end;

                                 SalesLine.Validate("No.", Rec."No.");
                                 SalesLine.Modify();

                                 CostVariationLOG.Init();
                                 CostVariationLOG."Item Number" := Rec."No.";
                                 CostVariationLOG."old Item number" := xRec."No.";
                                 CostVariationLOG."new Item number" := Rec."No.";
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


                 IF rec."BL/AWB ID" = '' then begin//transfer fields after validating fields that has impact on other fields
                     rec."BL/AWB ID" := xRec."BL/AWB ID";
                 end;

                 IF rec."Container ID" = '' then begin//transfer fields after validating fields that has impact on other fields
                     rec."Container ID" := xRec."Container ID";
                 end;

                 IF rec."SIGMA Sales Order No." = '' then begin//transfer fields after validating fields that has impact on other fields
                     rec."SIGMA Sales Order No." := xRec."SIGMA Sales Order No.";
                 end;

                 IF rec."SIGMA Sales Order Line No." = 0 then begin//transfer fields after validating fields that has impact on other fields
                     rec."SIGMA Sales Order Line No." := xRec."SIGMA Sales Order Line No.";
                 end;

                 IF rec."Quantity Shipped" = 0 then begin//transfer fields after validating fields that has impact on other fields
                     rec."Quantity Shipped" := xRec."Quantity Shipped";
                 end;

                 IF rec."Remaining Quantity Shipped" = 0 then begin//transfer fields after validating fields that has impact on other fields
                     rec."Remaining Quantity Shipped" := xRec."Remaining Quantity Shipped";
                 end;

                 IF rec."Line is Splitted" = false then begin//transfer fields after validating fields that has impact on other fields
                     rec."Line is Splitted" := xRec."Line is Splitted";
                 end;
                 IF rec."Splitted Line No." = '' then begin//transfer fields after validating fields that has impact on other fields
                     rec."Splitted Line No." := xRec."Splitted Line No.";
                 end;
                 IF rec."Original Quantity" = 0 then begin//transfer fields after validating fields that has impact on other fields
                     rec."Original Quantity" := xRec."Original Quantity";
                 end;
                 IF rec."Original Line No." = 0 then begin//transfer fields after validating fields that has impact on other fields
                     rec."Original Line No." := xRec."Original Line No.";
                 end;
                 IF rec."Disable fields after Shipping" = false then begin//transfer fields after validating fields that has impact on other fields
                     rec."Disable fields after Shipping" := xRec."Disable fields after Shipping";
                 end;
                 IF rec."Container Line No." = 0 then begin//transfer fields after validating fields that has impact on other fields
                     rec."Container Line No." := xRec."Container Line No.";
                 end;
                 IF rec."Initial ETA" = 0D then begin//transfer fields after validating fields that has impact on other fields
                     rec."Initial ETA" := xRec."Initial ETA";
                 end;
                 IF rec."Initial ETD" = 0D then begin//transfer fields after validating fields that has impact on other fields
                     rec."Initial ETD" := xRec."Initial ETD";
                 end;
                 IF rec."Initial ETR" = 0D then begin//transfer fields after validating fields that has impact on other fields
                     rec."Initial ETR" := xRec."Initial ETR";
                 end;
                 IF rec."Initial ETAW" = 0D then begin//transfer fields after validating fields that has impact on other fields
                     rec."Initial ETAW" := xRec."Initial ETAW";
                 end;
                 IF rec."Initial ETA" = 0D then begin//transfer fields after validating fields that has impact on other fields
                     rec."Initial ETA" := xRec."Initial ETA";
                 end;

                 IF rec."Final ETA" = 0D then begin//transfer fields after validating fields that has impact on other fields
                     rec."Final ETA" := xRec."Final ETA";
                 end;
                 IF rec."Final ETD" = 0D then begin//transfer fields after validating fields that has impact on other fields
                     rec."Final ETD" := xRec."Final ETD";
                 end;
                 IF rec."Final ETR" = 0D then begin//transfer fields after validating fields that has impact on other fields
                     rec."Final ETR" := xRec."Final ETR";
                 end;
                 IF rec."Final ETAW" = 0D then begin//transfer fields after validating fields that has impact on other fields
                     rec."Final ETAW" := xRec."Final ETAW";
                 end;
                 IF rec.ATA = 0D then begin//transfer fields after validating fields that has impact on other fields
                     rec.ATA := xRec.ATA;
                 end;

                 IF Rec."VO Number" = '' then begin
                     Rec."VO Number" := xRec."VO Number";
                 end;




                 IF (rec."Job No." = '') AND (xRec."Job No." <> '') then//updated on 27/02/2025 since validating on job no. = '' is removing the dimensions on after validate on level purchase line
                     Rec.Validate("Job No.", xRec."Job No.");

                 IF (rec."Job Task No." = '') AND (xRec."Job Task No." <> '') then
                     Rec.Validate("Job Task No.", xRec."Job Task No.");

                 IF (rec."Job Planning Line No." = 0) AND (xRec."Job Planning Line No." <> 0) then
                     Rec.Validate("Job Planning Line No.", xRec."Job Planning Line No.");


                 //added on 25/02/2025
                 IF Rec."Job#" = '' then
                     Rec."Job#" := Xrec."Job#";

                 IF Rec."Subjob ID" = 0 then
                     Rec."Subjob ID" := xRec."Subjob ID";

                 IF Rec."Truck WayBill ID" = '' then
                     Rec."Truck WayBill ID" := xRec."Truck WayBill ID";

                 IF Rec."Truck Details ID" = '' then
                     Rec."Truck Details ID" := xRec."Truck Details ID";

                 IF Rec."Truck Details Line No." = 0 then
                     Rec."Truck Details Line No." := Xrec."Truck Details Line No.";



             end;






         }*/// abdallah19/08/2025

        // modify(Quantity)//moved to page subform
        // {
        //     trigger OnAfterValidate()
        //     var
        //     begin
        //         if "SIGMA Sales Order Line No." <> 0 then
        //             Error(Text002, FieldCaption(Quantity), "SIGMA Sales Order No.", "SIGMA Sales Order Line No.");
        //     end;

        // }

        //AN 04/22/2025
        /*modify("Direct Unit Cost")//moved to page by AI
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
        }*/
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    /*   trigger OnModify()
        var
        begin
            IF rec."BL/AWB ID" = '' then begin//transfer fields after validating fields that has impact on other fields
                rec."BL/AWB ID" := xRec."BL/AWB ID";
            end;

            IF rec."Container ID" = '' then begin//transfer fields after validating fields that has impact on other fields
                rec."Container ID" := xRec."Container ID";
            end;
            IF rec."SIGMA Sales Order No." = '' then begin//transfer fields after validating fields that has impact on other fields
                rec."SIGMA Sales Order No." := xRec."SIGMA Sales Order No.";
            end;
            IF rec."SIGMA Sales Order Line No." = 0 then begin//transfer fields after validating fields that has impact on other fields
                rec."SIGMA Sales Order Line No." := xRec."SIGMA Sales Order Line No.";
            end;

            IF rec."Quantity Shipped" = 0 then begin//transfer fields after validating fields that has impact on other fields
                rec."Quantity Shipped" := xRec."Quantity Shipped";
            end;

            IF rec."Remaining Quantity Shipped" = 0 then begin//transfer fields after validating fields that has impact on other fields
                rec."Remaining Quantity Shipped" := xRec."Remaining Quantity Shipped";
            end;

            IF rec."Line is Splitted" = false then begin//transfer fields after validating fields that has impact on other fields
                rec."Line is Splitted" := xRec."Line is Splitted";
            end;
            IF rec."Splitted Line No." = '' then begin//transfer fields after validating fields that has impact on other fields
                rec."Splitted Line No." := xRec."Splitted Line No.";
            end;
            IF rec."Original Quantity" = 0 then begin//transfer fields after validating fields that has impact on other fields
                rec."Original Quantity" := xRec."Original Quantity";
            end;
            IF rec."Original Line No." = 0 then begin//transfer fields after validating fields that has impact on other fields
                rec."Original Line No." := xRec."Original Line No.";
            end;
            IF rec."Disable fields after Shipping" = false then begin//transfer fields after validating fields that has impact on other fields
                rec."Disable fields after Shipping" := xRec."Disable fields after Shipping";
            end;
            IF rec."Container Line No." = 0 then begin//transfer fields after validating fields that has impact on other fields
                rec."Container Line No." := xRec."Container Line No.";
            end;
            IF rec."Initial ETA" = 0D then begin//transfer fields after validating fields that has impact on other fields
                rec."Initial ETA" := xRec."Initial ETA";
            end;
            IF rec."Initial ETD" = 0D then begin//transfer fields after validating fields that has impact on other fields
                rec."Initial ETD" := xRec."Initial ETD";
            end;
            IF rec."Initial ETR" = 0D then begin//transfer fields after validating fields that has impact on other fields
                rec."Initial ETR" := xRec."Initial ETR";
            end;
            IF rec."Initial ETAW" = 0D then begin//transfer fields after validating fields that has impact on other fields
                rec."Initial ETAW" := xRec."Initial ETAW";
            end;
            IF rec."Initial ETA" = 0D then begin//transfer fields after validating fields that has impact on other fields
                rec."Initial ETA" := xRec."Initial ETA";
            end;

            IF rec."Final ETA" = 0D then begin//transfer fields after validating fields that has impact on other fields
                rec."Final ETA" := xRec."Final ETA";
            end;
            IF rec."Final ETD" = 0D then begin//transfer fields after validating fields that has impact on other fields
                rec."Final ETD" := xRec."Final ETD";
            end;
            IF rec."Final ETR" = 0D then begin//transfer fields after validating fields that has impact on other fields
                rec."Final ETR" := xRec."Final ETR";
            end;
            IF rec."Final ETAW" = 0D then begin//transfer fields after validating fields that has impact on other fields
                rec."Final ETAW" := xRec."Final ETAW";
            end;
            IF rec.ATA = 0D then begin//transfer fields after validating fields that has impact on other fields
                rec.ATA := xRec.ATA;
            end;

            IF Rec."VO Number" = '' then begin
                Rec."VO Number" := xRec."VO Number";
            end;

            IF (Rec."Direct Unit Cost" = 0) AND (xRec."Direct Unit Cost" <> 0) then//may be removed case VO replace item//added on 27/03/2025
                Rec.Validate("Direct Unit Cost", xRec."Direct Unit Cost");

            IF (rec."Location Code" = '') and (xRec."Location Code" <> '') then//added on 27/03/2025
                Rec.Validate("Location Code", xRec."Location Code");

            IF (rec."Job No." = '') AND (xRec."Job No." <> '') then//updated on 27/02/2025 since validating on job no. = '' is removing the dimensions on after validate on level purchase line
                Rec.Validate("Job No.", xRec."Job No.");

            IF (rec."Job Task No." = '') AND (xRec."Job Task No." <> '') then
                Rec.Validate("Job Task No.", xRec."Job Task No.");

            IF (rec."Job Planning Line No." = 0) AND (xRec."Job Planning Line No." <> 0) then
                Rec.Validate("Job Planning Line No.", xRec."Job Planning Line No.");


            //added on 25/02/2025
            IF Rec."Job#" = '' then
                Rec."Job#" := Xrec."Job#";

            IF Rec."Subjob ID" = 0 then
                Rec."Subjob ID" := xRec."Subjob ID";

            IF Rec."Truck WayBill ID" = '' then
                Rec."Truck WayBill ID" := xRec."Truck WayBill ID";

            IF Rec."Truck Details ID" = '' then
                Rec."Truck Details ID" := xRec."Truck Details ID";

            IF Rec."Truck Details Line No." = 0 then
                Rec."Truck Details Line No." := Xrec."Truck Details Line No.";



        end;*/// abdallah19/08/2025


    trigger OnInsert()
    var
    begin
    end;


    //add on 27/08/2025
    procedure SplitPurchaseLine()
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
        Rec.TestField("Quantity to Split");
        IF Rec."Quantity to Split" > Rec.Quantity then
            Error('Quantity shipped must be less than Quantity');

        IF Rec."Line is Splitted" = false then begin
            Rec."Original Quantity" := Rec.Quantity;
            Rec."Original Line No." := Rec."Line No.";
            REc."Splitted Line No." := FORMAT(Rec."Line No.") + '0.1';
        end;
        //splitted line
        IF (Rec."Quantity to Split" <> Rec.Quantity) then begin
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


            PurchaseLine.Validate(Quantity, PurchaseLine.Quantity - Rec."Quantity to Split");
            PurchaseLine.Validate("Direct Unit Cost");
            PurchaseLine."Quantity to Split" := 0;
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
        PurchaseLine2.CalcSums("Quantity to Split");

        Clear(PurchaseLine3);
        PurchaseLine3.SetRange("Document Type", PurchaseLine3."Document Type"::Order);
        PurchaseLine3.SetRange("Document No.", Rec."Document No.");
        PurchaseLine3.SetRange("Original Line No.", Rec."Original Line No.");
        //    PurchaseLine3.CalcSums("Quantity Shipped");
        //   Message(Format(PurchaseLine2."Quantity Shipped"));



        //line being modified
        //   Rec."Remaining Quantity Shipped" := Rec."Original Quantity" - PurchaseLine2."Quantity Shipped";
        IF LinesSplitted then begin
            Rec.Validate(Quantity, Rec."Quantity to Split");
            Rec.Validate("Direct Unit Cost");
            Rec."Line is Splitted" := true;
            REc.Modify();
        end;

        Rec."Remaining Quantity to Split" := Rec."Original Quantity" - PurchaseLine2."Quantity to Split" - Rec."Quantity to Split";
        REc.Modify();


        PurchaseLine3.ModifyAll("Remaining Quantity to Split", Rec."Original Quantity" - PurchaseLine2."Quantity to Split" - Rec."Quantity to Split");

        //Rec is current line that will be splitted
        //Purchase line is the splitted line
        //SalesLine is the mirror of Rec the current line, that will be splitted
        //SalesLine2 is the splitted line

    end;


    var
        Text000: Label 'You cannot delete the order line because it is associated with Sales order %1 line %2.';
        Text002: Label 'You can''t change %1 because the order line is associated with Sales order %2 line %3.', Comment = '%1=field name, %2=Document No., %3=Line No.';

}