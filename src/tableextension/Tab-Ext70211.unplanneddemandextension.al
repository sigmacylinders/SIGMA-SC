tableextension 70211 "unplanned demand extension" extends "Unplanned Demand"
{
    fields
    {
        // Add changes to table fields here
        field(70200; "Job No."; Code[20])
        {
            Caption = 'Project No.';
            Editable = false;
            TableRelation = Job;
        }
        field(70201; "Job Task No."; Code[20])
        {
            Caption = 'Project Task No.';
            Editable = false;
            TableRelation = "Job Task"."Job Task No." where("Job No." = field("Job No."));
        }
        field(70202; "Job Planning Line No."; Integer)
        {
            AccessByPermission = TableData Job = R;
            BlankZero = true;
            Caption = 'Project Planning Line No.';
        }
        field(70203; "Shortcut Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1),
                                                          Blocked = const(false));
        }

        field(70204; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,2';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2),
                                                          Blocked = const(false));
        }
        field(70205; "Shortcut Dimension 3 Code"; Code[20])
        {
            CaptionClass = '1,2,3';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(3),
                                                          Blocked = const(false));
        }
        field(70206; "Shortcut Dimension 4 Code"; Code[20])
        {
            CaptionClass = '1,2,4';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(4),
                                                          Blocked = const(false));
        }
        field(70207; "Shortcut Dimension 5 Code"; Code[20])
        {
            CaptionClass = '1,2,5';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(5),
                                                          Blocked = const(false));
        }
        field(70208; "Shortcut Dimension 6 Code"; Code[20])
        {
            CaptionClass = '1,2,6';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(6),
                                                          Blocked = const(false));
        }
        field(70209; "Shortcut Dimension 7 Code"; Code[20])
        {
            CaptionClass = '1,2,7';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(7),
                                                          Blocked = const(false));
        }
        field(70210; "Shortcut Dimension 8 Code"; Code[20])
        {
            CaptionClass = '1,2,8';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(8),
                                                          Blocked = const(false));
        }

        field(70211; "PO No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "Purchase Header";
        }
        field(70212; "PO Line No"; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}