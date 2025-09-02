page 70137 "Container Type Summary Subpage"
{
    PageType = ListPart;
    SourceTable = "Container Type Summary";
    ApplicationArea = All;
    Caption = 'Container Types';
    AutoSplitKey = true;
    //SC.AI 02/09/2025
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Container Type"; Rec."Container Type") { }
                field("QTY"; Rec.QTY) { }
            }
        }
    }
}
