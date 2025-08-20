tableextension 70107 "Purchase Header extensio9n" extends "Purchase Header"
{
    fields
    {
        // Add changes to table fields here

        field(70100; "Initial ETR"; Date)//Created on 28/10/2024 with Nathalie
        {
            Caption = 'Initial ETR';

            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("Document Type", Rec."Document Type");
                PurchaseLine.SetRange("Document No.", Rec."No.");
                //  PurchaseLine.ModifyAll("Initial ETR", REc."Initial ETR");
                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec."Initial ETA" <> 0D) AND (Rec."Initial ETAW" <> 0D) AND (Rec."Initial ETR" <> 0D) AND (Rec."Initial ETD" <> 0D) then begin
                            clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := PurchaseLine."BL/AWB ID";
                            ShippingDateLOG."Container Number" := PurchaseLine."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."Initial ETR" := Rec."Initial ETR";
                            ShippingDateLOG."Initial ETD" := Rec."Initial ETD";
                            ShippingDateLOG."Initial ETA" := Rec."Initial ETA";
                            ShippingDateLOG."Initial ETAW" := Rec."Initial ETAW";
                            ShippingDateLOG.Insert(true);


                        end;
                        PurchaseLine."Initial ETR" := REc."Initial ETR";
                        PurchaseLine.Modify();
                    until PurchaseLine.Next() = 0;


                //  end;
            end;
        }
        field(70101;
        "Initial ETD";
        Date)
        {
            Caption = 'Initial ETD';
            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("Document Type", Rec."Document Type");
                PurchaseLine.SetRange("Document No.", Rec."No.");
                //  PurchaseLine.ModifyAll("Initial ETR", REc."Initial ETR");
                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec."Initial ETA" <> 0D) AND (Rec."Initial ETAW" <> 0D) AND (Rec."Initial ETR" <> 0D) AND (Rec."Initial ETD" <> 0D) then begin
                            clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := PurchaseLine."BL/AWB ID";
                            ShippingDateLOG."Container Number" := PurchaseLine."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."Initial ETR" := Rec."Initial ETR";
                            ShippingDateLOG."Initial ETD" := Rec."Initial ETD";
                            ShippingDateLOG."Initial ETA" := Rec."Initial ETA";
                            ShippingDateLOG."Initial ETAW" := Rec."Initial ETAW";
                            ShippingDateLOG.Insert(true);


                        end;
                        PurchaseLine."Initial ETD" := REc."Initial ETD";
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
                  PurchaseLine.ModifyAll("Initial ETD", REc."Initial ETD");
              end;*/
        }
        field(70102; "Initial ETA"; Date)
        {
            Caption = 'Initial ETA';
            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("Document Type", Rec."Document Type");
                PurchaseLine.SetRange("Document No.", Rec."No.");
                //  PurchaseLine.ModifyAll("Initial ETR", REc."Initial ETR");
                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec."Initial ETA" <> 0D) AND (Rec."Initial ETAW" <> 0D) AND (Rec."Initial ETR" <> 0D) AND (Rec."Initial ETD" <> 0D) then begin
                            clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := PurchaseLine."BL/AWB ID";
                            ShippingDateLOG."Container Number" := PurchaseLine."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."Initial ETR" := Rec."Initial ETR";
                            ShippingDateLOG."Initial ETD" := Rec."Initial ETD";
                            ShippingDateLOG."Initial ETA" := Rec."Initial ETA";
                            ShippingDateLOG."Initial ETAW" := Rec."Initial ETAW";
                            ShippingDateLOG.Insert(true);


                        end;
                        PurchaseLine."Initial ETA" := REc."Initial ETA";
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
                   PurchaseLine.ModifyAll("Initial ETA", REc."Initial ETA");
               end;*/
        }
        field(70103; "Initial ETAW"; Date)
        {
            Caption = 'Initial ETAW';
            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
                ShippingDateLOG: Record "Supply Chain LOG";
            begin
                Clear(PurchaseLine);
                PurchaseLine.SetRange("Document Type", Rec."Document Type");
                PurchaseLine.SetRange("Document No.", Rec."No.");
                //  PurchaseLine.ModifyAll("Initial ETR", REc."Initial ETR");
                if PurchaseLine.FindSet() then
                    repeat
                        IF (Rec."Initial ETA" <> 0D) AND (Rec."Initial ETAW" <> 0D) AND (Rec."Initial ETR" <> 0D) AND (Rec."Initial ETD" <> 0D) then begin
                            clear(ShippingDateLOG);
                            ShippingDateLOG.Init();
                            ShippingDateLOG."BL/AWB ID" := PurchaseLine."BL/AWB ID";
                            ShippingDateLOG."Container Number" := PurchaseLine."Container ID";
                            ShippingDateLOG."PO Number" := PurchaseLine."Document No.";
                            ShippingDateLOG."PO Line Number" := PurchaseLine."Line No.";
                            ShippingDateLOG."Initial ETR" := Rec."Initial ETR";
                            ShippingDateLOG."Initial ETD" := Rec."Initial ETD";
                            ShippingDateLOG."Initial ETA" := Rec."Initial ETA";
                            ShippingDateLOG."Initial ETAW" := Rec."Initial ETAW";
                            ShippingDateLOG.Insert(true);


                        end;
                        PurchaseLine."Initial ETAW" := REc."Initial ETAW";
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
                   PurchaseLine.ModifyAll("Initial ETAW", REc."Initial ETAW");
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