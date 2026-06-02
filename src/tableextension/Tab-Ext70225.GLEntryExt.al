tableextension 70225 "G/L Entry Ext" extends "G/L Entry"
{
    fields
    {
        field(70210; "PI Reference"; Code[35])
        {
            Caption = 'PI Reference';
            DataClassification = CustomerContent;
            Editable = false;
            ToolTip = 'Specifies the Proforma Invoice (PI) reference copied from the related Posted Purchase Invoice during posting.';
        }
    }
}
