tableextension 70103 "Sales inv line extensi9on" extends "Sales Invoice Line"
{
    fields
    {
        // Add changes to table fields here


        field(70101; "Currency Code"; Code[10])
        {
            // DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Invoice Header"."Currency Code" where("No." = field("Document No.")));
        }
        field(70102; "Currency Factor"; Decimal)
        {
            // DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Invoice Header"."Currency Factor" where("No." = field("Document No.")));
        }
        field(70103; "Pre-Assigned No."; Code[20])
        {
            // DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Invoice Header"."Pre-Assigned No." where("No." = field("Document No.")));
        }

        field(70106; "Batch Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70107; "SIGMA Purchase Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70108; "SIGMA Purchase Order Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70109; "Line is Splitted"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70110; "Splitted Line No."; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70111; "Original PO Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70112; "Original Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70113; "VO Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70114; "Sent to PO"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(70115; "Job Planning Line No."; Integer)
        {
            AccessByPermission = TableData Job = R;
            BlankZero = true;
            Caption = 'Project Planning Line No.';
        }
   
        field(70133; "Sales Credit Memo No."; Code[20])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Cr.Memo Header"."No." where("Applies-to Doc. No." = field("Document No.")));
        }
        field(70134; "Sales Cr Memo Line No."; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Cr.Memo Line"."Line No." where("Document No." = field("Sales Credit Memo No."), "No." = field("No.")));
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