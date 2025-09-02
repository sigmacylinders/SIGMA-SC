
table 70114 "Truck WayBill"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Truck WayBill"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Line"; Code[50])
        {
            TableRelation = "SIGMA Lookup".Code where(Type = const(Liner));
        }
        field(3; "Free Demurrage Days"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Voyage Number"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Cargo Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Origin"; code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const(Origin));
        }
        field(7; "Port of Loading"; code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port));
        }
        field(8; "Port of Discharge"; code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port));
        }
        field(9; "Waybill Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Clearing Agent"; code[50])
        {
            DataClassification = ToBeClassified;
            // TableRelation = Vendor where(Category = const('SHIPPING&CLEARING'));
        }
        field(11; "Docs Sent to Entity Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Docs Received in Entity Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Docs AWB No"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Copy Docs Sent to Agent Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Docs Delivered to Clearing Agent"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Assessment Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Duty Paid Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Duty Receipt sent to agent"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(19; "Remarks"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(20; "Truck WayBill ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(21; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;

        }
        field(22; "Attachment ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(23; "Document Attachment ID"; Integer)
        {

        }
        field(24; "Document Attachment Table ID"; Integer)
        {

        }
        field(25; "Document Attachment No."; Code[20])
        {

        }
        field(26; "Document Attachment Doc. Type"; Enum "Attachment Document Type")
        {

        }
        field(27; "Document Attachment Line No."; Integer)
        {
        }


    }

    keys
    {
        key(PK; "Truck WayBill ID")
        { }
    }
}
