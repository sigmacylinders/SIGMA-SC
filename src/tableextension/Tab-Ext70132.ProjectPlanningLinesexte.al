tableextension 70132 "Project Planning Lines exte" extends "Job Planning Line"
{
    fields
    {

        // Add changes to table fields here
        field(70100; "Shortcut Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1),
                                                          Blocked = const(false));
        }

        field(70101; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,2';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2),
                                                          Blocked = const(false));
        }
        field(70102; "Shortcut Dimension 3 Code"; Code[20])
        {
            CaptionClass = '1,2,3';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(3),
                                                          Blocked = const(false));
        }
        field(70103; "Shortcut Dimension 4 Code"; Code[20])
        {
            CaptionClass = '1,2,4';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(4),
                                                          Blocked = const(false));
        }
        field(70104; "Shortcut Dimension 5 Code"; Code[20])
        {
            CaptionClass = '1,2,5';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(5),
                                                          Blocked = const(false));
        }
        field(70105; "Shortcut Dimension 6 Code"; Code[20])
        {
            CaptionClass = '1,2,6';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(6),
                                                          Blocked = const(false));
        }
        field(70106; "Shortcut Dimension 7 Code"; Code[20])
        {
            CaptionClass = '1,2,7';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(7),
                                                          Blocked = const(false));
        }
        field(70107; "Shortcut Dimension 8 Code"; Code[20])
        {
            CaptionClass = '1,2,8';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(8),
                                                          Blocked = const(false));
        }
        field(70108; "Freight Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70109; "Custom & Clearance Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                CalcCustomandClearance();
            end;
        }
        field(70110; "COF"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70111; "VO Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70113; "Usage (Total Cost) Freight"; Decimal)//added on 05022025
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = sum("Job Ledger Entry"."Actual (Total Cost) Freight" where("Job No." = field("Job No."),
                                                                           "Job Task No." = field("Job Task No."),
                                                                           Type = field(Type),
                                                                           "No." = field("No."),

                                                                           "Entry Type" = const(Usage),
                                                                           "Project Plannig Line No." = field("Line No.")
                                                                          ));
            Caption = 'Actual (Total Cost) Freight';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70114; "Usage (Total Cost) Customs"; Decimal)//added on 05022025
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = sum("Job Ledger Entry"."Actual (Total Cost) Custom" where("Job No." = field("Job No."),
                                                                           "Job Task No." = field("Job Task No."),
                                                                           Type = field(Type),
                                                                           "No." = field("No."),
                                                                           "Entry Type" = const(Usage),
                                                                            "Project Plannig Line No." = field("Line No.")));
            Caption = 'Actual (Total Cost) Customs';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70115; "Usage (Total Cost) Clearance"; Decimal)//added on 05022025
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = sum("Job Ledger Entry"."Actual (Total Cost) Clearance" where("Job No." = field("Job No."),
                                                                           "Job Task No." = field("Job Task No."),
                                                                            Type = field(Type),
                                                                           "No." = field("No."),
                                                                           "Entry Type" = const(Usage),
                                                                            "Project Plannig Line No." = field("Line No.")));
            Caption = 'Actual (Total Cost) Clearance';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70116; "Usage (Total Cost) Others"; Decimal)//added on 05022025
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = sum("Job Ledger Entry"."Actual (Total Cost) Others" where("Job No." = field("Job No."),
                                                                           "Job Task No." = field("Job Task No."),
                                                                            Type = field(Type),
                                                                           "No." = field("No."),
                                                                           "Entry Type" = const(Usage),
                                                                            "Project Plannig Line No." = field("Line No.")
                                                                          ));
            Caption = 'Actual (Total Cost) Others';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70117; "Usage (Total Landed Cost)"; Decimal)//added on 05022025
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Actual (Landed Cost)';
            Editable = false;

        }
        field(70118; "Usage (Total Cost)"; Decimal)//added on 05022025
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = sum("Job Ledger Entry"."Total Cost (LCY)" where("Job No." = field("Job No."),
                                                                           "Job Task No." = field("Job Task No."),
                                                                            Type = field(Type),
                                                                           "No." = field("No."),
                                                                           "Entry Type" = const(Usage),
                                                                            "Project Plannig Line No." = field("Line No.")
                                                                           ));
            Caption = 'Actual (Total Cost)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70119; "Usage (Total Cost) Insurance"; Decimal)//added on 10022025
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = sum("Job Ledger Entry"."Actual (Total Cost) Insurance" where("Job No." = field("Job No."),
                                                                           "Job Task No." = field("Job Task No."),
                                                                           Type = field(Type),
                                                                           "No." = field("No."),
                                                                           "Entry Type" = const(Usage),
                                                                            "Project Plannig Line No." = field("Line No.")
                                                                          ));
            Caption = 'Actual (Total Cost) Insurance';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70120; "Insurance"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(70121; "Schedule (Total Landed Cost)"; Decimal)//added on 10022025
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Budget (Total Landed Cost)';
            Editable = false;

        }
        field(70122; "Vendor No."; Code[20])//added on 04/03/2025
        {
            //   DataClassification = ToBeClassified;
            TableRelation = Vendor;
            FieldClass = FlowField;
            CalcFormula = lookup(Item."Vendor No." where("No." = field("No.")));

        }

        field(70124; "Unit Cost in Vendor Currency"; Decimal)//added on 18/03/2025
        {
            DataClassification = ToBeClassified;
        }


        field(70125; "Item_Code_Suffix"; Text[150])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Code Suffix';
        }
        field(70126; "OrderNumber"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Order Number';
        }

        field(70127; "CC_Percentage"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Custom & Clearance Cost Percentage';
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                CalcCustomandClearance();
            end;
        }
        field(70128; "Custom Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(70129; "Clearance Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(70130; "Email Sent"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Sent Email';
            Editable = false;
        }
        field(70131; "Vendor Name"; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field("Vendor No.")));
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
    trigger OnModify()
    var
    begin
        //updated to Validate  on 09/05/2025 by AI
        // IF (rec."Unit Price" = 0) AND (xRec."Unit Price" <> 0) then begin//transfer fields after validating fields that has impact on other fields
        //     rec.Validate("Unit Price", xRec."Unit Price");
        // end;



    end;

    local procedure CalcCustomandClearance()
    var
        perc: Decimal;
        customvalue: Decimal;
        clearancevalue: Decimal;
    begin
        customvalue := 0;
        perc := 0;
        clearancevalue := 3;
        perc := rec."CC_Percentage" * 100;
        customvalue := perc - clearancevalue;

        if perc <> 0 then begin
            Rec."Clearance Cost" := (clearancevalue / perc) * Rec."Custom & Clearance Cost";
            Rec."Custom Cost" := (customvalue / perc) * Rec."Custom & Clearance Cost";
        end else begin
            Rec."Clearance Cost" := 0;
            Rec."Custom Cost" := 0;
        end;
    end;



    var
        myInt: Integer;
}