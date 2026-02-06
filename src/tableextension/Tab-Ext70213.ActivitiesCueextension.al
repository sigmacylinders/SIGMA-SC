tableextension 70213 "Activities Cue extension" extends "Activities Cue"
{
    fields
    {
        field(70200; "Intermediate Items"; Integer)
        {
            CalcFormula = count("Intermediate Items" where(Processed = const(false)));
            //  Caption = 'Ongoing Sales Quotes';
            FieldClass = FlowField;
        }
        field(70201; "Intermediate Vendors"; Integer)
        {
            CalcFormula = count("Intermediate Vendors" where(Processed = const(false)));
            // Caption = 'Ongoing Sales Quotes';
            FieldClass = FlowField;
        }
        field(70202; "Intermediate Customers"; Integer)
        {
            CalcFormula = count("Intermediate Customers" where(Processed = const(false)));
            // Caption = 'Ongoing Sales Quotes';
            FieldClass = FlowField;
        }
    }
}
