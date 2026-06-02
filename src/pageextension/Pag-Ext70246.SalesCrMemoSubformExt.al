pageextension 70246 SalesCrMemoSubformExt extends "Sales Cr. Memo Subform"
{
    layout
    {
        addafter("Unit Price")
        {
            field("BL Number"; Rec."BL Number")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the BL Number.';
            }
            field("BL/AWB ID"; Rec."BL/AWB ID")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the BL/AWB ID.';
            }
            field("Container ID"; Rec."Container ID")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the Container ID.';
            }
            field("Container Line No."; Rec."Container Line No.")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the Container Line No.';
            }
            field("Truck WayBill ID"; Rec."Truck WayBill ID")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the Truck WayBill ID.';
            }
            field("Truck Details ID"; Rec."Truck Details ID")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the Truck Details ID.';
            }
            field("Truck Details Line No."; Rec."Truck Details Line No.")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the Truck Details Line No.';
            }
            field("Shipping By"; Rec."Shipping By")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the shipping method.';
            }
            field("Container Size"; Rec."Container Size")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Container Size.';
            }
            field("Lock Number"; Rec."Lock Number")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Lock Number.';
            }
        }
    }
}
