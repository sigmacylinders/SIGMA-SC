table 70103 "AWB Details"
//Created on 28/10/2024 with Nathalie


{
    DataClassification = ToBeClassified;

    fields
    {
        field(70100; "Airline"; Code[50])
        {
            Caption = 'Airline';
            // Set up a lookup to your airline master table here
            TableRelation = "SIGMA Lookup".Code where(Type = const(Airline));
        }
        field(70101; "Free Demurrage Days"; Integer)
        {
            Caption = 'Free Demurrage Days';
            // Set up a lookup to your vessel/airline master table here
        }
        field(70102; "Voyage Number"; Text[50])
        {
            Caption = 'Voyage Number';
        }
        field(70103; "Cargo Description"; Code[50])
        {
            Caption = 'Cargo Description';
        }
        field(70104; "Origin"; Code[50])
        {
            Caption = 'Origin';
            // Set up a lookup to your origin master table here   
            TableRelation = "SIGMA Lookup".Code where(Type = const(Origin));
        }
        field(70105; "Airport of Loading"; Code[50])
        {
            Caption = 'Airport of Loading';
            // Set up a lookup to your Airport master table here    
            TableRelation = "SIGMA Lookup".Code where(Type = const("Air Port"), ORIGINS = field(Origin));
        }
        field(70106; "Airport of Discharge"; Code[50])
        {
            Caption = 'Airport of Discharge';
            // Set up a lookup to your Airport master table here    
            TableRelation = "SIGMA Lookup".Code where(Type = const("Air Port"));
        }
        field(70107; "AWB"; Date)
        {
            Caption = 'AWB';
        }
        field(70108; "Clearing Agent"; Code[50])
        {
            Caption = 'Clearing Agent';// Drop down can be handled with lookupr
                                       //  TableRelation = "SIGMA Lookup".Code where(Type = const("Clearing Agent"));
                                       //      TableRelation = Vendor where(Category = const("SHIPPING & CLEARING"));
        }
        field(70109; "Docs Sent to Entity Date"; Date)
        {
            Caption = 'Docs Sent to Entity Date';
        }
        field(70110; "Docs Received in Entity Date"; Date)
        {
            Caption = 'Docs Received in Entity Date';
        }
        field(70111; "Docs AWB No"; Text[50])
        {
            Caption = 'Docs AWB No';
        }
        field(70112; "Copy Docs Sent to Agent Date"; Date)
        {
            Caption = 'Copy Docs Sent to Agent Date';
        }
        field(70113; "Docs Delivered to Clearing Agent"; Date)
        {
            Caption = 'Docs Delivered to Clearing Agent';
        }
        field(70114; "Assessment Date"; Date)
        {
            Caption = 'Assessment Date';
        }
        field(70115; "Duty Paid Date"; Date)
        {
            Caption = 'Duty Paid Date';
        }
        field(70116; "Duty Receipt sent to agent"; Date)
        {
            Caption = 'Duty Receipt sent to agent';
        }
        field(70117; "Remarks"; Text[500])
        {
            Caption = 'Remarks';
        }
        field(70118; "Final ETR"; Date)
        {
            Caption = 'Final ETR';

            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                // IF Rec."Final ETR" <> 0D then begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("BL/AWB ID", Rec."AWB ID");
                PurchaseLine.SetRange("Container ID", '');
                //   PurchaseLine.ModifyAll("Final ETR", REc."Final ETR");


                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec.ATA <> 0D) AND (Rec."Final ETA" <> 0D) AND (Rec."Final ETAW" <> 0D) AND (Rec."Final ETD" <> 0D) AND (Rec."Final ETR" <> 0D) then begin
                            Clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := Rec."AWB ID";
                            ShippingDateLOG."Container Number" := '';
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."Final ETR" := Rec."Final ETR";
                            ShippingDateLOG."Final ETD" := Rec."Final ETD";
                            ShippingDateLOG."Final ETA" := Rec."Final ETA";
                            ShippingDateLOG."Final ETAW" := Rec."Final ETAW";
                            ShippingDateLOG.ATA := Rec.ATA;
                            ShippingDateLOG.Insert(true);
                        end;


                        PurchaseLine."Final ETR" := rec."Final ETR";
                        PurchaseLine.Modify();


                    until PurchaseLine.Next() = 0;

                // end;

            end;
        }
        field(70119; "Final ETD"; Date)
        {
            Caption = 'Final ETD';
            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                // IF Rec."Final ETR" <> 0D then begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("BL/AWB ID", Rec."AWB ID");
                PurchaseLine.SetRange("Container ID", '');
                //   PurchaseLine.ModifyAll("Final ETR", REc."Final ETR");


                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec.ATA <> 0D) AND (Rec."Final ETA" <> 0D) AND (Rec."Final ETAW" <> 0D) AND (Rec."Final ETD" <> 0D) AND (Rec."Final ETR" <> 0D) then begin
                            Clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := Rec."AWB ID";
                            ShippingDateLOG."Container Number" := '';
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."Final ETR" := Rec."Final ETR";
                            ShippingDateLOG."Final ETD" := Rec."Final ETD";
                            ShippingDateLOG."Final ETA" := Rec."Final ETA";
                            ShippingDateLOG."Final ETAW" := Rec."Final ETAW";
                            ShippingDateLOG.ATA := Rec.ATA;
                            ShippingDateLOG.Insert(true);
                        end;


                        PurchaseLine."Final ETD" := rec."Final ETD";
                        PurchaseLine.Modify();


                    until PurchaseLine.Next() = 0;

                // end;

            end;
        }
        field(70120; "Final ETA"; Date)
        {
            Caption = 'Final ETA';

            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                //  IF Rec."Final ETR" <> 0D then begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("BL/AWB ID", Rec."AWB ID");
                PurchaseLine.SetRange("Container ID", '');
                //   PurchaseLine.ModifyAll("Final ETR", REc."Final ETR");


                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec.ATA <> 0D) AND (Rec."Final ETA" <> 0D) AND (Rec."Final ETAW" <> 0D) AND (Rec."Final ETD" <> 0D) AND (Rec."Final ETR" <> 0D) then begin
                            Clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := Rec."AWB ID";
                            ShippingDateLOG."Container Number" := '';
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."Final ETR" := Rec."Final ETR";
                            ShippingDateLOG."Final ETD" := Rec."Final ETD";
                            ShippingDateLOG."Final ETA" := Rec."Final ETA";
                            ShippingDateLOG."Final ETAW" := Rec."Final ETAW";
                            ShippingDateLOG.ATA := Rec.ATA;
                            ShippingDateLOG.Insert(true);
                        end;


                        PurchaseLine."Final ETA" := rec."Final ETA";
                        PurchaseLine.Modify();


                    until PurchaseLine.Next() = 0;

                //  end;

            end;
        }
        field(70121; "ATA"; Date)
        {
            Caption = 'ATA';
            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                //  IF Rec."Final ETR" <> 0D then begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("BL/AWB ID", Rec."AWB ID");
                PurchaseLine.SetRange("Container ID", '');
                //   PurchaseLine.ModifyAll("Final ETR", REc."Final ETR");


                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec.ATA <> 0D) AND (Rec."Final ETA" <> 0D) AND (Rec."Final ETAW" <> 0D) AND (Rec."Final ETD" <> 0D) AND (Rec."Final ETR" <> 0D) then begin
                            Clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := Rec."AWB ID";
                            ShippingDateLOG."Container Number" := '';
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."Final ETR" := Rec."Final ETR";
                            ShippingDateLOG."Final ETD" := Rec."Final ETD";
                            ShippingDateLOG."Final ETA" := Rec."Final ETA";
                            ShippingDateLOG."Final ETAW" := Rec."Final ETAW";
                            ShippingDateLOG.ATA := Rec.ATA;
                            ShippingDateLOG.Insert(true);
                        end;


                        PurchaseLine.ATA := rec.ATA;
                        PurchaseLine.Modify();


                    until PurchaseLine.Next() = 0;

                //  end;

            end;
        }
        field(70122; "Final ETAW"; Date)
        {
            Caption = 'Final ETAW';

            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                // IF Rec."Final ETR" <> 0D then begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("BL/AWB ID", Rec."AWB ID");
                PurchaseLine.SetRange("Container ID", '');
                //   PurchaseLine.ModifyAll("Final ETR", REc."Final ETR");


                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec.ATA <> 0D) AND (Rec."Final ETA" <> 0D) AND (Rec."Final ETAW" <> 0D) AND (Rec."Final ETD" <> 0D) AND (Rec."Final ETR" <> 0D) then begin
                            Clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := Rec."AWB ID";
                            ShippingDateLOG."Container Number" := '';
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."Final ETR" := Rec."Final ETR";
                            ShippingDateLOG."Final ETD" := Rec."Final ETD";
                            ShippingDateLOG."Final ETA" := Rec."Final ETA";
                            ShippingDateLOG."Final ETAW" := Rec."Final ETAW";
                            ShippingDateLOG.ATA := Rec.ATA;
                            ShippingDateLOG.Insert(true);
                        end;


                        PurchaseLine."Final ETAW" := rec."Final ETAW";
                        PurchaseLine.Modify();


                    until PurchaseLine.Next() = 0;

                // end;

            end;
        }
        field(70123; "Net Weight in KG"; Decimal) { }//no need to add weight in BL since container is a container ma byetala3o b weights mmesh metil airwabel
        // field(70124; "Document Type"; Enum "Purchase Document Type")
        // {
        //     Caption = 'Document Type';
        // }
        // field(70125; "Document No."; Code[20])
        // {
        //     Caption = 'Document No.';
        //     TableRelation = "Purchase Header"."No." where("Document Type" = field("Document Type"));
        // }
        // field(70127; "Line No."; Integer)
        // {
        //     Caption = 'Line No.';
        // }
        field(70126; "AWB ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70128; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;


        }
        field(70129; "Attachment ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70130; "Document Attachment ID"; Integer)
        {

        }
        field(70131; "Document Attachment Table ID"; Integer)
        {

        }
        field(70132; "Document Attachment No."; Code[20])
        {

        }
        field(70133; "Document Attachment Doc. Type"; Enum "Attachment Document Type")
        {

        }
        field(70134; "Document Attachment Line No."; Integer)
        {
        }
        field(70135; "AWB Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70136; "Gross Weight in KG"; Decimal) { }
        field(70137; "Volumetric Weight in KG"; Decimal) { }

        field(70138; "Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "","Express","Cargo";
        }
        field(70139; "Chargable Weight in KG"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70140; "Transshipment"; Option)
        {
            OptionMembers = "Yes","No"; // Add more options if needed
        }
        field(70141; "Transshipment Airport"; Code[50]
        )
        {

            Caption = 'Transshipment Airport';
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const("Air Port"));

            trigger OnLookup()
            var
                TransshipmentAirport: Record "SIGMA Lookup";
                TransshipmentAirports: Page "SIGMA Lookup";
            begin
                Rec."Transshipment Airport" := '';


                Clear(TransshipmentAirport);
                TransshipmentAirport.SetRange(Type, TransshipmentAirport.Type::"Air Port");
                TransshipmentAirports.SetTableView(TransshipmentAirport);
                TransshipmentAirports.LookupMode(true);
                IF TransshipmentAirports.RunModal() = Action::LookupOK then begin
                    TransshipmentAirports.SetSelectionFilter(TransshipmentAirport);
                    if TransshipmentAirport.FindSet() then
                        repeat
                            Rec."Transshipment Airport" += TransshipmentAirport.Code + ' , ';
                        until TransshipmentAirport.Next() = 0;
                end;
                If Rec."Transshipment Airport" <> '' then
                    Rec."Transshipment Airport" := CopyStr(Rec."Transshipment Airport", 1, StrLen(Rec."Transshipment Airport") - 3);
            end;
        }

    }

    keys
    {
        key(Key1; "AWB ID")
        {
        }
        key(key2; "AWB Number")
        { }
    }


    trigger OnInsert()
    var


        NoSeries: Codeunit "No. Series";
        NoSeriesCode: Code[20];
        IsHandled: Boolean;
        GLSetup: Record "General Ledger Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
        "AWBDetails": Record "AWB Details";
        "No. Series": Codeunit "No. Series";
    begin
        if "AWB ID" = '' then begin
            GLSetup.Get();
            GLSetup.TestField("AWB No. Series");
            if NoSeries.AreRelated(GLSetup."AWB No. Series", xRec."No. Series") then
                Rec."No. Series" := xRec."No. Series"
            else
                Rec."No. Series" := GLSetup."AWB No. Series";

            Rec."AWB ID" := NoSeries.GetNextNo(Rec."No. Series");

            //   end;
        end;
    end;
}
