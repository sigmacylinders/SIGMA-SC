page 70139 "Cargo Quotations List"
{
    PageType = List;
    SourceTable = "Cargo Booking Header";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Cargo Quotations';
    SourceTableView = SORTING("Booking No.") WHERE(Booking = CONST(false));
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Booking No."; Rec."Booking No.")
                {
                    ApplicationArea = All;
                    Caption = 'Quotation No.';
                }

                field("Port of Loading"; Rec."Port of Loading")
                {
                    ApplicationArea = All;
                }

                field("Port of Discharge"; Rec."Port of Discharge")
                {
                    ApplicationArea = All;
                }

                field("ETD"; Rec.ETD)
                {
                    ApplicationArea = All;
                }

                field("ETA"; Rec.ETA)
                {
                    ApplicationArea = All;
                }
                field("Select Vendor 1"; Rec."Select Vendor 1")
                {
                    ToolTip = 'Specifies the value of the Select Vendor 1 field.', Comment = '%';
                }
                field("Select Vendor 2"; Rec."Select Vendor 2")
                {
                    ToolTip = 'Specifies the value of the Select Vendor 2 field.', Comment = '%';
                }
                field("Select Vendor 3"; Rec."Select Vendor 3")
                {
                    ToolTip = 'Specifies the value of the Select Vendor 3 field.', Comment = '%';
                }
                field("Select Vendor 4"; Rec."Select Vendor 4")
                {
                    ToolTip = 'Specifies the value of the Select Vendor 4 field.', Comment = '%';
                }
                field("Select Vendor 5"; Rec."Select Vendor 5")
                {
                    ToolTip = 'Specifies the value of the Select Vendor 5 field.', Comment = '%';
                }

                field("Booking"; Rec.Booking)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Open Card")
            {
                Caption = 'Open Booking Card';
                ApplicationArea = All;
                Image = Navigate;

                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Cargo Booking Card", Rec);
                end;
            }
        }
    }
}
