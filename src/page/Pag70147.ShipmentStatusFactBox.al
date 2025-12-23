page 70147 "Shipment Status FactBox"
{
    PageType = CardPart;
    Caption = 'Shipment Status';
    SourceTable = "Shipment Status Notifications";
    SourceTableTemporary = true;
    ApplicationArea = All;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(GroupName)
            {
                Caption = 'Shipment';
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
        }
    }

    procedure SetTempData(var TempData: Record "Shipment Status Notifications" temporary)
    begin
        Rec.Reset();
        Rec.DeleteAll();

        if TempData.FindSet() then
            repeat
                Rec := TempData;
                Rec.Insert();
            until TempData.Next() = 0;
    end;
}
