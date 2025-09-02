tableextension 70117 "ItemExt" extends Item
{
    fields
    {
        field(70100; "Packed Net Weight"; Decimal)
        {
            Caption = 'Packed Net Weight';
        }

        field(70101; "Packed Gross Weight"; Decimal)
        {
            Caption = 'Packed Gross Weight';

        }

        field(70102; "Packed Volumetric Weight"; Decimal)
        {
            Caption = 'Packed Volumetric Weight';
        }

        field(70103; "Packed Length"; Decimal)
        {
            Caption = 'Packed Length';
        }

        field(70104; "Packed Height"; Decimal)
        {
            Caption = 'Packed Height';



        }

        field(70105; "Packed Width"; Decimal)
        {
            Caption = 'Packed Width';

        }
        field(70106; "CBM"; Decimal)
        {
            Caption = 'CBM';
            Description = 'Cubic Meters';
        }
    }


    procedure SyncPackedWidthToAttribute(AttributeID: Code[20]; Fieldvalue: Decimal; ItemRec: Record Item)//SC.AI 02/09/2025
    var
        Attribute: Record "Item Attribute";
        AttrValue: Record "Item Attribute Value";
        AttrMapping: Record "Item Attribute Value Mapping";
        ExistingValueID: Integer;
        PackedWidthTxt: Text[50];
    begin
        // 1. Get the "Packed Width" attribute
        if not Attribute.Get(AttributeID) then
            Error('Attribute does not exist.');

        // 2. Convert Packed Width from Decimal to Text
        PackedWidthTxt := Format(Fieldvalue); // Adjust format if needed

        // 3. Check if this exact value already exists as an attribute value
        AttrValue.Reset();
        AttrValue.SetRange("Attribute ID", Attribute.ID);
        AttrValue.SetRange(Value, PackedWidthTxt);
        if not AttrValue.FindFirst() then begin
            // Create new attribute value
            AttrValue.Init();
            AttrValue."Attribute ID" := Attribute.ID;
            AttrValue.Value := PackedWidthTxt;
            AttrValue."Numeric Value" := Fieldvalue;
            AttrValue.Insert(true); // true = run triggers
        end;

        // 4. Now check if mapping exists
        AttrMapping.Reset();
        IF AttrMapping.Get(Database::Item, ItemRec."No.", Attribute.ID) THEN BEGIN
            // Update existing mapping
            AttrMapping."Item Attribute Value ID" := AttrValue.ID;
            AttrMapping.Modify(true);
        end else begin
            // Create new mapping
            AttrMapping.Init();
            AttrMapping."Table ID" := Database::Item;
            AttrMapping."No." := ItemRec."No.";
            AttrMapping."Item Attribute ID" := Attribute.ID;
            AttrMapping."Item Attribute Value ID" := AttrValue.ID;
            AttrMapping.Insert(true);
        end;
    end;
}
