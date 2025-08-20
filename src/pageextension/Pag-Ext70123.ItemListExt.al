pageextension 70123 ItemListExt extends "Item List"
{
    layout
    {
        addafter(Description)
        {

            field(SystemCreatedAt; Rec.SystemCreatedAt)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
            }
            field(UserName; UserName)
            { ApplicationArea = All; }
        }

    }


    actions
    {

    }


    trigger OnAfterGetRecord()
    var
    begin
        IF user.Get(Rec.SystemCreatedBy) then begin
            UserName := User."User Name";
        end;
    end;

    var
        User: Record User;
        UserName: Code[20];
}