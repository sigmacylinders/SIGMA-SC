tableextension 70216 SalesPersonExt extends "Salesperson/Purchaser"
{
    fields
    {
        field(70200; Target; Decimal)
        {
            Caption = 'Target';
            DataClassification = ToBeClassified;
        }
        field(70201; "Target Start Date"; Date)
        {
            Caption = 'Target Start Date';
            DataClassification = ToBeClassified;
        }
        field(70202; "Target End Date"; Date)
        {
            Caption = 'Target End Date';
            DataClassification = ToBeClassified;
        }
    }
}
