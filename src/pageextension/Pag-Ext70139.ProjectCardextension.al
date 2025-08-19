pageextension 70139 "Project Card extension" extends "Job Card"
{
    layout
    {
        modify(Description)
        {
            ShowMandatory = true;
        }
        // Add changes to page layout here
        addbefore("Job Details")
        {
        }
        addafter("Location Code")
        {
            field("Delivery Location Code"; Rec."Delivery Location Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Delivery Location Code field.', Comment = '%';
            }
        }


        modify("Sell-to Customer No.")
        {
            trigger OnAfterValidate()
            var
                ProjectTasks: Record "Job Task";
            begin
                Clear(ProjectTasks);
                IF NOT ProjectTasks.Get(Rec."No.", Rec."No." + '.1') then begin
                    Clear(ProjectTasks);
                    ProjectTasks.Init();
                    ProjectTasks.Validate("Job No.", Rec."No.");
                    ProjectTasks.Validate("Job Task No.", Rec."No." + '.1');
                    ProjectTasks.Insert(true);
                end;
            end;

        }
    }
    //AN 03/27/2025
    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        myInt: Integer;
    begin
        Rec.TestField(Description);
    end;

    var
        myInt: Integer;
}