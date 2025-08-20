pageextension 70104 "General Ledger setup extens" extends "General Ledger Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter("Bank Account Nos.")
        {

            field("LC No. Series"; Rec."LC No. Series")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the LC No. Series field.', Comment = '%';
            }
            field("BL No. Series"; Rec."BL No. Series")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the BL No. Series field.', Comment = '%';
            }
            field("SP ID No. Series"; Rec."SP ID No. Series")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SP ID No. Series field.', Comment = '%';
            }
            field("AWB No. Series"; Rec."AWB No. Series")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the AWB No. Series field.', Comment = '%';
            }
            field("Batch No. series"; Rec."Batch No. series")//for batch posting
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Batch No. series field.', Comment = '%';
            }
            field("Job No. series"; Rec."Job No. series")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Job No. series field.', Comment = '%';
            }
            field("Insurance No. series"; Rec."Insurance No. series")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Insurance No. series field.', Comment = '%';
            }
            field("Transitory No. series"; Rec."Transitory No. series")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Transitory No. series field.', Comment = '%';
            }
            field("Restrict Budget Edit for Users"; Rec."Restrict Budget Edit for Users")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Restrict Budget Edit for Users field.', Comment = '%';
            }
            field("Truck WayBill No. Series"; Rec."Truck WayBill No. Series")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Truckwaybell No. Series field.', Comment = '%';
            }

        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}