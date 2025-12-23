table 70123 "Logistics Activity"
{
    Caption = 'Logistics Activity';
    DataClassification = ToBeClassified;

    fields
    {
        // Primary Key
        field(70100; "Primary Key"; Code[10])
        {
            AllowInCustomizations = Never;
            Caption = 'Primary Key';
        }
        // FlowFields for Property Status
        field(70101; "Containers Arrived Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTA = field("Date Filter")));
        }
        field(70102; "Containers Departed Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTD = field("Date Filter")));
        }
        // field(70103; "Containers Arriving Soon"; Integer)
        // {
        //     FieldClass = FlowField;
        //     CalcFormula = Count("Container Details" where(FTA = field("Date Filter2")));
        // }
        field(70104; "Containers Arriving Warehouse Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTAW = field("Date Filter")));
        }
        field(70105; "Containers Arriving Warehouse This Week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTAW = field("Date Filter3")));
        }
        field(70106; "Containers Departed This week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTD = field("Date Filter3")));
        }
        field(70107; "Date Filter"; Date)
        {
            //   DataClassification = ToBeClassified;
            FieldClass = FlowFilter;
        }
        field(70108; "Date Filter2"; Date)
        {
            //   DataClassification = ToBeClassified;
            FieldClass = FlowFilter;
        }
        field(70109; "Date Filter3"; Date)
        {
            //   DataClassification = ToBeClassified;
            FieldClass = FlowFilter;
        }
        field(70110; "AWB Arrived Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTA = field("Date Filter")));
        }
        field(70111; "AWB Departed Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTD = field("Date Filter")));
        }
        // field(70112; "AWB Arriving Soon"; Integer)
        // {
        //     FieldClass = FlowField;
        //     CalcFormula = Count("AWB Details" where(FTA = field("Date Filter2")));
        // }
        field(70113; "AWB Arriving Warehouse Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTAW = field("Date Filter")));
        }
        field(70114; "AWB Arriving Warehouse This Week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTAW = field("Date Filter3")));
        }
        field(70115; "AWB Departed This week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTD = field("Date Filter3")));
        }
        field(70116; "TWB Arrived Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTA = field("Date Filter")));
        }
        field(70117; "TWB Departed Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTD = field("Date Filter")));
        }
        // field(70118; "TWB Arriving Soon"; Integer)
        // {
        //     FieldClass = FlowField;
        //     CalcFormula = Count("Truck Details" where(FTA = field("Date Filter2")));
        // }
        field(70119; "TWB Arriving Warehouse Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTAW = field("Date Filter")));
        }
        field(70120; "TWB Arriving Warehouse This Week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTAW = field("Date Filter3")));
        }
        field(70121; "TWB Departed This week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTD = field("Date Filter3")));
        }
        field(70123; "Containers already Arrived"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTA = field("Date Filter4")));
        }
        field(70124; "AWB already Arrived"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTA = field("Date Filter4")));
        }
        field(70125; "TWB already Arrived"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTA = field("Date Filter4")));
        }
        field(70126; "Date Filter4"; Date)
        {
            //   DataClassification = ToBeClassified;
            FieldClass = FlowFilter;
        }





        // Add more fields as needed
    }


    keys
    {
        key(PK; "Primary Key") { Clustered = true; }
    }

    trigger OnInsert()
    begin
        // Initialize the primary key or any other necessary fields
        // "Primary Key" := 'REA' + Format(CurrentDateTime(), 0, 0);
    end;

    trigger OnModify()
    begin
        // Logic to handle modifications if needed
    end;

    trigger OnDelete()
    begin
        // Logic to handle deletions if needed
    end;

    trigger OnRename()
    begin
        // Logic to handle renaming if needed
    end;
}