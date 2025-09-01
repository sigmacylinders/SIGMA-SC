table 70102 "Container Details"
{//Created on 28/10/2024 with Nathalie


    DataClassification = ToBeClassified;

    fields
    {
        field(70100; "Type of Goods"; Option)
        {
            Caption = 'Type of Goods';
            OptionMembers = CKD,Other; // Define the options here
        }
        field(70101; "Seal Number"; Text[50])
        {
            Caption = 'Seal Number';
        }
        field(70102; "Fitting"; code[50])
        {
            Caption = 'Fitting';
            // Set up a lookup to your fitting master table here 
            TableRelation = "SIGMA Lookup".Code where(Type = const(Fitting));
        }
        field(70103; "Loaded On Board"; Date)
        {
            Caption = 'Loaded On Board';
        }
        field(70104; "Terminal Delivery Order Date"; Date)
        {
            Caption = 'Terminal Delivery Order Date';
        }
        field(70105; "Remarks"; Text[500])
        {
            Caption = 'Remarks';
        }
        field(70106; "FTR"; Date)
        {
            Caption = 'Final ETR';

            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                // IF Rec."FTR" <> 0D then begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("BL/AWB ID", Rec."BL ID");
                PurchaseLine.SetRange("Container ID", Rec."Container ID");
                //   PurchaseLine.ModifyAll("FTR", REc."FTR");


                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec.ATA <> 0D) AND (Rec."FTA" <> 0D) AND (Rec."FTAW" <> 0D) AND (Rec."FTD" <> 0D) AND (Rec."FTR" <> 0D) then begin
                            Clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := Rec."BL ID";
                            ShippingDateLOG."Container Number" := Rec."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."FTR" := Rec."FTR";
                            ShippingDateLOG."FTD" := Rec."FTD";
                            ShippingDateLOG."FTA" := Rec."FTA";
                            ShippingDateLOG."FTAW" := Rec."FTAW";
                            ShippingDateLOG.ATA := Rec.ATA;
                            ShippingDateLOG.Insert(true);
                        end;


                        PurchaseLine."FTR" := rec."FTR";
                        PurchaseLine.Modify();


                    until PurchaseLine.Next() = 0;

                // end;

            end;
        }
        field(70107; "FTD"; Date)
        {
            Caption = 'Final ETD';
            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                // IF Rec."FTR" <> 0D then begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("BL/AWB ID", Rec."BL ID");
                PurchaseLine.SetRange("Container ID", Rec."Container ID");
                //   PurchaseLine.ModifyAll("FTR", REc."FTR");


                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec.ATA <> 0D) AND (Rec."FTA" <> 0D) AND (Rec."FTAW" <> 0D) AND (Rec."FTD" <> 0D) AND (Rec."FTR" <> 0D) then begin
                            Clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := Rec."BL ID";
                            ShippingDateLOG."Container Number" := Rec."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."FTR" := Rec."FTR";
                            ShippingDateLOG."FTD" := Rec."FTD";
                            ShippingDateLOG."FTA" := Rec."FTA";
                            ShippingDateLOG."FTAW" := Rec."FTAW";
                            ShippingDateLOG.ATA := Rec.ATA;
                            ShippingDateLOG.Insert(true);
                        end;


                        PurchaseLine."FTD" := rec."FTD";
                        PurchaseLine.Modify();


                    until PurchaseLine.Next() = 0;

                // end;

            end;
        }
        field(70108; "FTA"; Date)
        {
            Caption = 'Final ETA';

            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                //  IF Rec."FTR" <> 0D then begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("BL/AWB ID", Rec."BL ID");
                PurchaseLine.SetRange("Container ID", Rec."Container ID");
                //   PurchaseLine.ModifyAll("FTR", REc."FTR");


                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec.ATA <> 0D) AND (Rec."FTA" <> 0D) AND (Rec."FTAW" <> 0D) AND (Rec."FTD" <> 0D) AND (Rec."FTR" <> 0D) then begin
                            Clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := Rec."BL ID";
                            ShippingDateLOG."Container Number" := Rec."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."FTR" := Rec."FTR";
                            ShippingDateLOG."FTD" := Rec."FTD";
                            ShippingDateLOG."FTA" := Rec."FTA";
                            ShippingDateLOG."FTAW" := Rec."FTAW";
                            ShippingDateLOG.ATA := Rec.ATA;
                            ShippingDateLOG.Insert(true);
                        end;


                        PurchaseLine."FTA" := rec."FTA";
                        PurchaseLine.Modify();


                    until PurchaseLine.Next() = 0;

                //  end;

            end;
        }
        field(70109; "ATA"; Date)
        {
            Caption = 'ATA';
            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                //  IF Rec."FTR" <> 0D then begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("BL/AWB ID", Rec."BL ID");
                PurchaseLine.SetRange("Container ID", Rec."Container ID");
                //   PurchaseLine.ModifyAll("FTR", REc."FTR");


                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec.ATA <> 0D) AND (Rec."FTA" <> 0D) AND (Rec."FTAW" <> 0D) AND (Rec."FTD" <> 0D) AND (Rec."FTR" <> 0D) then begin
                            Clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := Rec."BL ID";
                            ShippingDateLOG."Container Number" := Rec."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."FTR" := Rec."FTR";
                            ShippingDateLOG."FTD" := Rec."FTD";
                            ShippingDateLOG."FTA" := Rec."FTA";
                            ShippingDateLOG."FTAW" := Rec."FTAW";
                            ShippingDateLOG.ATA := Rec.ATA;
                            ShippingDateLOG.Insert(true);
                        end;


                        PurchaseLine.ATA := rec.ATA;
                        PurchaseLine.Modify();


                    until PurchaseLine.Next() = 0;

                //  end;

            end;
        }
        field(70110; "FTAW"; Date)
        {
            Caption = 'Final ETAW';

            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                // IF Rec."FTR" <> 0D then begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("BL/AWB ID", Rec."BL ID");
                PurchaseLine.SetRange("Container ID", Rec."Container ID");
                //   PurchaseLine.ModifyAll("FTR", REc."FTR");


                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec.ATA <> 0D) AND (Rec."FTA" <> 0D) AND (Rec."FTAW" <> 0D) AND (Rec."FTD" <> 0D) AND (Rec."FTR" <> 0D) then begin
                            Clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := Rec."BL ID";
                            ShippingDateLOG."Container Number" := Rec."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."FTR" := Rec."FTR";
                            ShippingDateLOG."FTD" := Rec."FTD";
                            ShippingDateLOG."FTA" := Rec."FTA";
                            ShippingDateLOG."FTAW" := Rec."FTAW";
                            ShippingDateLOG.ATA := Rec.ATA;
                            ShippingDateLOG.Insert(true);
                        end;


                        PurchaseLine."FTAW" := rec."FTAW";
                        PurchaseLine.Modify();


                    until PurchaseLine.Next() = 0;

                // end;

            end;
        }
        // field(70111; "PO Type"; Enum "Purchase Document Type")
        // {
        //     Caption = 'Document Type';
        // }
        // field(70112; "PO No."; Code[20])
        // {
        //     Caption = 'Document No.';
        //     TableRelation = "Purchase Header"."No." where("Document Type" = field("PO Type"));
        // }
        // field(70113; "Line No."; Integer)
        // {
        //     Caption = 'Line No.';
        // }
        field(70114; "ROC Date"; Date) { }
        // field(70115; "BL Reference"; Code[20])
        // {
        //     DataClassification = ToBeClassified;
        // }
        field(70116; "SP ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70117; "Container ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70118; "BL ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70119; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;


        }
        field(70120; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70121; "Selected"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70122; "Transit Time"; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(70123; "Final Transit Time"; Text[10])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "BL ID", "Line No.")
        {
        }
        key(key2; "SP ID")
        { }
    }


    trigger OnInsert()
    var


        NoSeries: Codeunit "No. Series";
        NoSeriesCode: Code[20];
        IsHandled: Boolean;
        GLSetup: Record "General Ledger Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
        "ContainerDetails": Record "Container Details";
    begin
        if "SP ID" = '' then begin
            GLSetup.Get();
            GLSetup.TestField("SP ID No. Series");

            if NoSeries.AreRelated(GLSetup."SP ID No. Series", xRec."No. Series") then
                Rec."No. Series" := xRec."No. Series"
            else
                Rec."No. Series" := GLSetup."SP ID No. Series";

            Rec."SP ID" := NoSeries.GetNextNo(Rec."No. Series");
        end;
    end;
}
