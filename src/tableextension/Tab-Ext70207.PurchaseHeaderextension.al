tableextension 70207 "Purchase Header extension" extends "Purchase Header"
{
    fields
    {
        // Add changes to table fields here

        field(70200; "ETR"; Date)//Created on 28/10/2024 with Nathalie
        {
            Caption = 'ETR';

            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("Document Type", Rec."Document Type");
                PurchaseLine.SetRange("Document No.", Rec."No.");
                //  PurchaseLine.ModifyAll("ETR", REc."ETR");
                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec."ETA" <> 0D) AND (Rec."ETAW" <> 0D) AND (Rec."ETR" <> 0D) AND (Rec."ETD" <> 0D) then begin
                            clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := PurchaseLine."BL/AWB ID";
                            ShippingDateLOG."Container Number" := PurchaseLine."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."ETR" := Rec."ETR";
                            ShippingDateLOG."ETD" := Rec."ETD";
                            ShippingDateLOG."ETA" := Rec."ETA";
                            ShippingDateLOG."ETAW" := Rec."ETAW";
                            ShippingDateLOG.Insert(true);


                        end;
                        PurchaseLine."ETR" := REc."ETR";
                        PurchaseLine.Modify();
                    until PurchaseLine.Next() = 0;


                //  end;
            end;
        }
        field(70201;
        "ETD";
        Date)
        {
            Caption = 'ETD';
            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("Document Type", Rec."Document Type");
                PurchaseLine.SetRange("Document No.", Rec."No.");
                //  PurchaseLine.ModifyAll("ETR", REc."ETR");
                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec."ETA" <> 0D) AND (Rec."ETAW" <> 0D) AND (Rec."ETR" <> 0D) AND (Rec."ETD" <> 0D) then begin
                            clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := PurchaseLine."BL/AWB ID";
                            ShippingDateLOG."Container Number" := PurchaseLine."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."ETR" := Rec."ETR";
                            ShippingDateLOG."ETD" := Rec."ETD";
                            ShippingDateLOG."ETA" := Rec."ETA";
                            ShippingDateLOG."ETAW" := Rec."ETAW";
                            ShippingDateLOG.Insert(true);


                        end;
                        PurchaseLine."ETD" := REc."ETD";
                        PurchaseLine.Modify();
                    until PurchaseLine.Next() = 0;


                //  end;
            end;
            /*  trigger OnValidate()
              var
                  PurchaseLine: Record "Purchase Line";
              begin
                  Clear(PurchaseLine);
                  PurchaseLine.SetRange("Document Type", Rec."Document Type");
                  PurchaseLine.SetRange("Document No.", Rec."No.");
                  PurchaseLine.ModifyAll("ETD", REc."ETD");
              end;*/
        }
        field(70202; "ETA"; Date)
        {
            Caption = 'ETA';
            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("Document Type", Rec."Document Type");
                PurchaseLine.SetRange("Document No.", Rec."No.");
                //  PurchaseLine.ModifyAll("ETR", REc."ETR");
                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec."ETA" <> 0D) AND (Rec."ETAW" <> 0D) AND (Rec."ETR" <> 0D) AND (Rec."ETD" <> 0D) then begin
                            clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := PurchaseLine."BL/AWB ID";
                            ShippingDateLOG."Container Number" := PurchaseLine."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."ETR" := Rec."ETR";
                            ShippingDateLOG."ETD" := Rec."ETD";
                            ShippingDateLOG."ETA" := Rec."ETA";
                            ShippingDateLOG."ETAW" := Rec."ETAW";
                            ShippingDateLOG.Insert(true);


                        end;
                        PurchaseLine."ETA" := REc."ETA";
                        PurchaseLine.Modify();
                    until PurchaseLine.Next() = 0;


                //  end;
            end;
            /*   trigger OnValidate()
               var
                   PurchaseLine: Record "Purchase Line";
               begin
                   Clear(PurchaseLine);
                   PurchaseLine.SetRange("Document Type", Rec."Document Type");
                   PurchaseLine.SetRange("Document No.", Rec."No.");
                   PurchaseLine.ModifyAll("ETA", REc."ETA");
               end;*/
        }
        field(70203; "ETAW"; Date)
        {
            Caption = 'ETAW';
            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("Document Type", Rec."Document Type");
                PurchaseLine.SetRange("Document No.", Rec."No.");
                //  PurchaseLine.ModifyAll("ETR", REc."ETR");
                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec."ETA" <> 0D) AND (Rec."ETAW" <> 0D) AND (Rec."ETR" <> 0D) AND (Rec."ETD" <> 0D) then begin
                            clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := PurchaseLine."BL/AWB ID";
                            ShippingDateLOG."Container Number" := PurchaseLine."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."ETR" := Rec."ETR";
                            ShippingDateLOG."ETD" := Rec."ETD";
                            ShippingDateLOG."ETA" := Rec."ETA";
                            ShippingDateLOG."ETAW" := Rec."ETAW";
                            ShippingDateLOG.Insert(true);


                        end;
                        PurchaseLine."ETAW" := REc."ETAW";
                        PurchaseLine.Modify();
                    until PurchaseLine.Next() = 0;


                //  end;
            end;
            /*   trigger OnValidate()
               var
                   PurchaseLine: Record "Purchase Line";
               begin
                   Clear(PurchaseLine);
                   PurchaseLine.SetRange("Document Type", Rec."Document Type");
                   PurchaseLine.SetRange("Document No.", Rec."No.");
                   PurchaseLine.ModifyAll("ETAW", REc."ETAW");
               end;*/
        }
        field(70204; "Attachment ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70205; "Document Attachment ID"; Integer)
        {

        }
        field(70206; "Document Attachment Table ID"; Integer)
        {

        }
        field(70207; "Document Attachment No."; Code[20])
        {

        }
        field(70208; "Document Attachment Doc. Type"; Enum "Attachment Document Type")
        {

        }
        field(70209; "Document Attachment Line No."; Integer)
        {
        }
        field(70210; "PI Reference"; Code[35])
        {
            Caption = 'PI Reference';
            DataClassification = CustomerContent;
            ToolTip = 'Specifies the Proforma Invoice (PI) reference. Flows to the Posted Purchase Invoice, Vendor Ledger Entry and G/L Entry on posting.';
        }

    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }




}