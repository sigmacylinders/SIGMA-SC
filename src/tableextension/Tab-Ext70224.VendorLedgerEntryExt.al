tableextension 70224 "Vendor Ledger Entry Ext" extends "Vendor Ledger Entry"
{
    fields
    {
        field(70210; "PI Reference"; Code[35])
        {
            Caption = 'PI Reference';
            DataClassification = CustomerContent;
            Editable = false;
            ToolTip = 'Specifies the Proforma Invoice (PI) reference copied from the Posted Purchase Invoice during posting.';
        }
    }
}
