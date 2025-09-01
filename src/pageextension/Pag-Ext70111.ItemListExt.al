pageextension 70111 ItemListExt extends "Item List"
{
    layout
    {
        addafter(Description)
        {

            field(SystemCreatedAt; Rec.SystemCreatedAt)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
            }
            field(UserName; UserName)
            { ApplicationArea = All; }
        }

    }


    actions
    {
        addafter(Dimensions)
        {
            action("show Atrributes")
            {
                ApplicationArea = All;
                Caption = 'My Action';
                Image = New;
                trigger OnAction()
                var
                    Item: Record Item;
                begin
                    ReadItemAttributes(Rec."No.");
                end;
            }
        }
    }
    procedure ReadItemAttributes(ItemNo: Code[20])
    var
        Attribute: Record "Item Attribute";
        AttributeValue: Record "Item Attribute Value";
        ItemAttributeValueMapping: Record "Item Attribute Value Mapping";
    begin
        Clear(ItemAttributeValueMapping);
        ItemAttributeValueMapping.SetRange("Table ID", DATABASE::Item);
        ItemAttributeValueMapping.SetRange("No.", ItemNo);
        if ItemAttributeValueMapping.FindSet() then
            repeat
                if Attribute.Get(ItemAttributeValueMapping."Item Attribute ID") then begin
                    if AttributeValue.Get(ItemAttributeValueMapping."Item Attribute Value ID") then begin


                    end;
                end;
            until ItemAttributeValueMapping.Next() = 0;
    end;


    trigger OnAfterGetRecord()
    var
    begin
        IF user.Get(Rec.SystemCreatedBy) then begin
            UserName := User."User Name";
        end;
    end;

    var
        User: Record User;
        UserName: Code[20];
}