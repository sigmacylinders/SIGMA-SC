page 70126 "Truck Details Subform"
{
    PageType = ListPart;
    SourceTable = "Truck Details";
    ApplicationArea = All;
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Seal Number"; Rec."Seal Number")
                {
                }
                field("Truck Type"; Rec."Truck Type")
                {
                }
                field("Truck Load CBM"; Rec."Truck Load CBM")
                {
                }
                field("Tonnage"; Rec."Tonnage")
                {
                }
                field("Loaded On Board"; Rec."Loaded On Board")
                {
                }
                field("Terminal Delivery Order Date"; Rec."Terminal Delivery Order Date")
                {
                }
                field("Remarks"; Rec."Remarks")
                {
                }
                field("FTR"; Rec."FTR")
                {
                }
                field("FTD"; Rec."FTD")
                {
                }
                field("FTA"; Rec."FTA")
                {
                }
                field("FTAW"; Rec."FTAW")
                {
                }
                field("ATA"; Rec."ATA")
                {
                }

            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Process")
            {
                ApplicationArea = All;
                Caption = 'Process';
            }
        }
    }
}