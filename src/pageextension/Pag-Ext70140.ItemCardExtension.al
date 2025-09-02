pageextension 70140 "Item Card Extension" extends "Item Card"
{
    layout
    {
        addafter(Warehouse)
        {
            group(Logistics)//SC.AI 02/09/2025
            {
                Caption = 'Logistics';

                field("Packed Net Weight"; Rec."Packed Net Weight")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        PurchaseSetup: Record "Purchases & Payables Setup";
                    begin
                        if Rec."Packed Net Weight" <> 0 then begin
                            PurchaseSetup.Get();
                            Rec.SyncPackedWidthToAttribute(PurchaseSetup."Item Attr Packed Net W", Rec."Packed Net Weight", Rec);
                        end;
                        CurrPage.Update(false);
                    end;
                }

                field("Packed Gross Weight"; Rec."Packed Gross Weight")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        PurchaseSetup: Record "Purchases & Payables Setup";
                    begin
                        if Rec."Packed Gross Weight" <> 0 then begin
                            PurchaseSetup.Get();
                            Rec.SyncPackedWidthToAttribute(PurchaseSetup."Item Attr Packed Gross W", Rec."Packed Gross Weight", Rec);
                        end;
                        CurrPage.Update(false);
                    end;
                }

                field("Packed Volumetric Weight"; Rec."Packed Volumetric Weight")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        PurchaseSetup: Record "Purchases & Payables Setup";
                    begin
                        if Rec."Packed Volumetric Weight" <> 0 then begin
                            PurchaseSetup.Get();
                            Rec.SyncPackedWidthToAttribute(PurchaseSetup."Item Attr Packed Volumetric W", Rec."Packed Volumetric Weight", Rec);
                        end;
                        CurrPage.Update(false);
                    end;
                }

                field("Packed Length"; Rec."Packed Length")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        PurchaseSetup: Record "Purchases & Payables Setup";
                    begin
                        if Rec."Packed Length" <> 0 then begin
                            PurchaseSetup.Get();
                            Rec.SyncPackedWidthToAttribute(PurchaseSetup."Item Attr Packed Length", Rec."Packed Length", Rec);
                        end;
                        CurrPage.Update(false);
                    end;
                }

                field("Packed Height"; Rec."Packed Height")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        PurchaseSetup: Record "Purchases & Payables Setup";
                    begin
                        if Rec."Packed Height" <> 0 then begin
                            PurchaseSetup.Get();
                            Rec.SyncPackedWidthToAttribute(PurchaseSetup."Item Attr Packed Height", Rec."Packed Height", Rec);
                        end;
                        CurrPage.Update(false);
                    end;
                }

                field("Packed Width"; Rec."Packed Width")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        PurchaseSetup: Record "Purchases & Payables Setup";
                    begin
                        if Rec."Packed Width" <> 0 then begin
                            PurchaseSetup.Get();
                            Rec.SyncPackedWidthToAttribute(PurchaseSetup."Item Attr Packed Width", Rec."Packed Width", Rec);
                        end;
                        CurrPage.Update(false);
                    end;
                }
                field(CBM; Rec.CBM)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CBM field.', Comment = '%';
                    Editable = false;
                }


            }

        }
    }
    trigger OnAfterGetRecord()
    begin
        Rec.CBM := GetCBM();//SC.AI 02/09/2025
        FillPackedFieldinItemCard(Rec);//SC.AI 02/09/2025


    end;

    var
        CalcCBM: Decimal;

    local procedure FillPackedFieldinItemCard(var Item: Record Item)
    var
        PurchaseSetup: Record "Purchases & Payables Setup";
    begin
        PurchaseSetup.Get();
        IF GetAttributeValue(PurchaseSetup."Item Attr Packed Length", Item."Packed Length") then;
        IF GetAttributeValue(PurchaseSetup."Item Attr Packed Width", Item."Packed Width") then;
        IF GetAttributeValue(PurchaseSetup."Item Attr Packed Height", Item."Packed Height")
        then;
        IF GetAttributeValue(PurchaseSetup."Item Attr Packed Net W", Item."Packed Net Weight") then;
        IF GetAttributeValue(PurchaseSetup."Item Attr Packed Gross W", Item."Packed Gross Weight") then;
        IF GetAttributeValue(PurchaseSetup."Item Attr Packed Volumetric W", Item."Packed Volumetric Weight") then;

    end;


    local procedure GetCBM(): Decimal
    var
        AttributeMapping: Record "Item Attribute Value Mapping";
        Attribute: Record "Item Attribute";
        AttrValue: Record "Item Attribute Value";
        PackedHeight: Decimal;
        PackedWidth: Decimal;
        PackedLength: Decimal;
        PurchaseSetup: Record "Purchases & Payables Setup";
    begin
        PurchaseSetup.Get();
        // Get Height
        if GetAttributeValue(PurchaseSetup."Item Attr Packed Height", PackedHeight) and
           GetAttributeValue(PurchaseSetup."Item Attr Packed Width", PackedWidth) and
           GetAttributeValue(PurchaseSetup."Item Attr Packed Length", PackedLength) then begin
            exit(PackedHeight * PackedWidth * PackedLength); // Optional rounding
        end;

        exit(0);
    end;

    local procedure GetAttributeValue(AttributeID: Text; var OutValue: Decimal): Boolean
    var
        Attribute: Record "Item Attribute";
        AttrValue: Record "Item Attribute Value";
        Mapping: Record "Item Attribute Value Mapping";
    begin
        Clear(Mapping);
        IF mapping.Get(Database::Item, Rec."No.", AttributeID) then begin
            AttrValue.Reset();
            AttrValue.Get(AttributeID, mapping."Item Attribute Value ID");
            Evaluate(OutValue, AttrValue.Value);
            exit(true);

        end;

        exit(false);
    end;

}