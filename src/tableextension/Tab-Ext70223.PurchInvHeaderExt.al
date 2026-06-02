tableextension 70223 "Purch. Inv. Header Ext" extends "Purch. Inv. Header"
{
    fields
    {
        field(70210; "PI Reference"; Code[35])
        {
            Caption = 'PI Reference';
            DataClassification = CustomerContent;
            ToolTip = 'Specifies the Proforma Invoice (PI) reference copied from the originating Purchase Order at posting time.';
        }
    }
}
