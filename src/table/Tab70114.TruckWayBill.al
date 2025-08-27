
table 70114 "Truck WayBill"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(70100; "Truck WayBill"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70101; "Line"; Code[50])
        {
            TableRelation = "SIGMA Lookup".Code where(Type = const(Liner));
        }
        field(70102; "Free Demurrage Days"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(70103; "Voyage Number"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70104; "Cargo Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(70105; "Origin"; code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const(Origin));
        }
        field(70106; "Port of Loading"; code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port));
        }
        field(70107; "Port of Discharge"; code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port));
        }
        field(70108; "Waybill Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70109; "Clearing Agent"; code[50])
        {
            DataClassification = ToBeClassified;
            // TableRelation = Vendor where(Category = const('SHIPPING&CLEARING'));
        }
        field(70110; "Docs Sent to Entity Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70111; "Docs Received in Entity Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70112; "Docs AWB No"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70113; "Copy Docs Sent to Agent Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70114; "Docs Delivered to Clearing Agent"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70115; "Assessment Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70116; "Duty Paid Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70117; "Duty Receipt sent to agent"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70118; "Remarks"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(70119; "Truck WayBill ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70120; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;

        }
        field(70121; "Attachment ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70122; "Document Attachment ID"; Integer)
        {

        }
        field(70123; "Document Attachment Table ID"; Integer)
        {

        }
        field(70124; "Document Attachment No."; Code[20])
        {

        }
        field(70125; "Document Attachment Doc. Type"; Enum "Attachment Document Type")
        {

        }
        field(70126; "Document Attachment Line No."; Integer)
        {
        }


    }

    keys
    {
        key(PK; "Truck WayBill ID")
        { }
    }
}
