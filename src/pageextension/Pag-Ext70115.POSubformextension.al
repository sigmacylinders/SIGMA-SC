pageextension 70115 "PO Subform e xtension" extends "Purchase Order Subform"
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

        }

        addbefore(Type)
        {

            field("Document Type"; Rec."Document Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the type of document that you are about to create.';
                Editable = false;
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
        modify(Quantity)
        {
            editable = (Rec."Line is Splitted" = false) and (not IsBlankNumber);
        }
        addafter(Quantity)
        {
            field("Quantity to Split"; Rec."Quantity to Split")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Quantity Shipped field.', Comment = '%';
                // Editable = false;
                // Enabled = false;     
                DecimalPlaces = 0 : 5;
                Editable = (Rec."Quantity to Split" = 0);

                trigger OnValidate()
                begin
                    Rec.SplitPurchaseLine();
                    CurrPage.Update(false);
                end;
            }
            field("Remaining Quantity to Split"; Rec."Remaining Quantity to Split")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Remaining Quantity Shipped field.', Comment = '%';
                Editable = false;
                Enabled = false;
                DecimalPlaces = 0 : 5;
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
                DecimalPlaces = 0 : 5;
            }
            field("Original Line No."; Rec."Original Line No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Original Line No. field.', Comment = '%';
                Editable = false;
                Enabled = false;
            }
        }
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


                    Clear(PurchaseOrderLine);
                    PurchaseOrderLine.SetRange("Document Type", PurchaseOrderLine."Document Type"::Order);
                    if InLandID = '' then begin
                        PurchaseOrderLine.SetRange("BL/AWB ID", '');
                        PurchaseOrderLine.SetRange("Truck WayBill ID", '');
                    end;


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