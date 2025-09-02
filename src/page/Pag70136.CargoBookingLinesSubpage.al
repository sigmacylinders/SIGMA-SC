page 70136 "Cargo Booking Lines Subpage"
{
    PageType = ListPart;
    SourceTable = "Cargo Booking Line";
    ApplicationArea = All;
    AutoSplitKey = true;
    //SC.AI 02/09/2025
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("PO No."; Rec."PO No.") { }
                field("Vendor"; Rec.Vendor) { }
                field("POL"; Rec.POL) { }
                field("Readiness Date"; Rec."Readiness Date") { }
                field("Quantity"; Rec.Quantity) { }
                field("Weight (kg)"; Rec."Weight (kg)") { }
                field("CBM"; Rec.CBM) { }
                field("Dimensions"; Rec.Dimensions) { }
                field("HS Code / Description"; Rec."HS Code / Description") { }
            }

        }
    }
}
