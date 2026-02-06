table 70221 "Logistics Activity"
{
    Caption = 'Logistics Activity';
    DataClassification = ToBeClassified;

    fields
    {
        // Primary Key
        field(70200; "Primary Key"; Code[10])
        {
            AllowInCustomizations = Never;
            Caption = 'Primary Key';
        }
        // FlowFields for Property Status
        field(70201; "Containers Arrived Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTA = field("Date Filter")));
        }
        field(70202; "Containers Departed Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTD = field("Date Filter")));
        }
        // field(70203; "Containers Arriving Soon"; Integer)
        // {
        //     FieldClass = FlowField;
        //     CalcFormula = Count("Container Details" where(FTA = field("Date Filter2")));
        // }
        field(70204; "Containers Arriving Warehouse Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTAW = field("Date Filter")));
        }
        field(70205; "Containers Arriving Warehouse This Week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTAW = field("Date Filter3")));
        }
        field(70206; "Containers Departed This week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTD = field("Date Filter3")));
        }
        field(70207; "Date Filter"; Date)
        {
            //   DataClassification = ToBeClassified;
            FieldClass = FlowFilter;
        }
        field(70208; "Date Filter2"; Date)
        {
            //   DataClassification = ToBeClassified;
            FieldClass = FlowFilter;
        }
        field(70209; "Date Filter3"; Date)
        {
            //   DataClassification = ToBeClassified;
            FieldClass = FlowFilter;
        }
        field(70210; "AWB Arrived Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTA = field("Date Filter")));
        }
        field(70211; "AWB Departed Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTD = field("Date Filter")));
        }
        // field(70212; "AWB Arriving Soon"; Integer)
        // {
        //     FieldClass = FlowField;
        //     CalcFormula = Count("AWB Details" where(FTA = field("Date Filter2")));
        // }
        field(70213; "AWB Arriving Warehouse Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTAW = field("Date Filter")));
        }
        field(70214; "AWB Arriving Warehouse This Week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTAW = field("Date Filter3")));
        }
        field(70215; "AWB Departed This week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTD = field("Date Filter3")));
        }
        field(70216; "TWB Arrived Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTA = field("Date Filter")));
        }
        field(70217; "TWB Departed Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTD = field("Date Filter")));
        }
        // field(70218; "TWB Arriving Soon"; Integer)
        // {
        //     FieldClass = FlowField;
        //     CalcFormula = Count("Truck Details" where(FTA = field("Date Filter2")));
        // }
        field(70219; "TWB Arriving Warehouse Today"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTAW = field("Date Filter")));
        }
        field(70220; "TWB Arriving Warehouse This Week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTAW = field("Date Filter3")));
        }
        field(70221; "TWB Departed This week"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTD = field("Date Filter3")));
        }
        field(70223; "Containers already Arrived"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where(FTA = field("Date Filter4")));
        }
        field(70224; "AWB already Arrived"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("AWB Details" where(FTA = field("Date Filter4")));
        }
        field(70225; "TWB already Arrived"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Truck Details" where(FTA = field("Date Filter4")));
        }
        field(70226; "Date Filter4"; Date)
        {
            //   DataClassification = ToBeClassified;
            FieldClass = FlowFilter;
        }
        field(70227; "Delayed Containers"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Container Details" where("Current Status" = const('DELAY')));

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