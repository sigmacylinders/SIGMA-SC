tableextension 70107 "Purchase Header extension" extends "Purchase Header"
{
    fields
    {
        // Add changes to table fields here

        field(70100; "ETR"; Date)//Created on 28/10/2024 with Nathalie
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
        field(70101;
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
        field(70102; "ETA"; Date)
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
        field(70103; "ETAW"; Date)
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
        field(70104; "Attachment ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70105; "Document Attachment ID"; Integer)
        {

        }
        field(70106; "Document Attachment Table ID"; Integer)
        {

        }
        field(70107; "Document Attachment No."; Code[20])
        {

        }
        field(70108; "Document Attachment Doc. Type"; Enum "Attachment Document Type")
        {

        }
        field(70109; "Document Attachment Line No."; Integer)
        {
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