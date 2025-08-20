page 70160 SIGMALookupAPI
{

    Caption = 'SIGMALookupAPI';
    APIGroup = 'SIGMA';
    APIPublisher = 'SIGMA';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'SIGMALookupAPI';
    EntitySetName = 'SIGMALookupAPI';
    PageType = API;
    SourceTable = "SIGMA Lookup";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Type; Rec."Type")
                {
                    ApplicationArea = All;
                    Caption = 'Type';
                }
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                }


            }
        }
    }

}