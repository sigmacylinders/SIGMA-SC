page 70111 "LC Lists"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Finance Details";
    CardPageId = "LC Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("LC Number"; Rec."LC Number")
                {
                    ToolTip = 'Specifies the value of the LC Number field.', Comment = '%';
                }
                field("LC Line"; Rec."LC Line")
                {
                    ToolTip = 'Specifies the value of the LC Line field.', Comment = '%';
                }
                field("LC Applicant"; Rec."LC Applicant")
                {
                    ToolTip = 'Specifies the value of the LC Applicant field.', Comment = '%';
                }
                field(Beneficiary; Rec.Beneficiary)
                {
                    ToolTip = 'Specifies the value of the Beneficiary field.', Comment = '%';
                }
                field("Issuing Bank LC #"; Rec."Issuing Bank LC #")
                {
                    ToolTip = 'Specifies the value of the Issuing Bank LC # field.', Comment = '%';
                }
                field("LC Value"; Rec."LC Value")
                {
                    ToolTip = 'Specifies the value of the LC Value field.', Comment = '%';
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ToolTip = 'Specifies the value of the Bank Name field.', Comment = '%';
                }
                field("Expiry Date"; Rec."Expiry Date")
                {
                    ToolTip = 'Specifies the value of the Expiry Date field.', Comment = '%';
                }
                field("Latest Date of Shipment"; Rec."Latest Date of Shipment")
                {
                    ToolTip = 'Specifies the value of the Latest Date of Shipment field.', Comment = '%';
                }
                field("Payment Terms"; Rec."Payment Terms")
                {
                    ToolTip = 'Specifies the value of the Payment Terms field.', Comment = '%';
                }
                field("LC Type"; Rec."LC Type")
                {
                    ToolTip = 'Specifies the value of the LC Type field.', Comment = '%';
                }
                field(Confirmation; Rec.Confirmation)
                {
                    ToolTip = 'Specifies the value of the Confirmation field.', Comment = '%';
                }
                field("Draw Down"; Rec."Draw Down")
                {
                    ToolTip = 'Specifies the value of the Draw Down field.', Comment = '%';
                }
                field("Docs sent to bank"; Rec."Docs sent to bank")
                {
                    ToolTip = 'Specifies the value of the Docs sent to bank field.', Comment = '%';
                }
                field("Docs Sent to Intermediary Bank"; Rec."Docs Sent to Intermediary Bank")
                {
                    ToolTip = 'Specifies the value of the Docs Sent to Intermediary Bank field.', Comment = '%';
                }
                field("Docs received in Bank"; Rec."Docs received in Bank")
                {
                    ToolTip = 'Specifies the value of the Docs received in Bank field.', Comment = '%';
                }
                field("Docs AWB"; Rec."Docs AWB")
                {
                    ToolTip = 'Specifies the value of the Docs AWB field.', Comment = '%';
                }
                field("# of Amendment"; Rec."# of Amendment")
                {
                    ToolTip = 'Specifies the value of the # of Amendment field.', Comment = '%';
                }
                field("Finance Rate"; Rec."Finance Rate")
                {
                    ToolTip = 'Specifies the value of the Finance Rate field.', Comment = '%';
                }

            }
        }
        area(factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = const(Database::"Finance Details"),
                              "No." = field("LC Number");
                // "Document Type" = field("Document Type");
            }
        }
    }

    actions
    {
        area(Processing)
        {

        }
    }
}