table 70126 "Shipment Status Notifications"
{
    Caption = 'Temp Shipment Status';
    DataClassification = ToBeClassified;
    TableType = Temporary;

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
            //  AutoIncrement = true;
        }

        field(2; "BL ID"; Code[20])
        {
            Caption = 'BL Number';
        }

        field(3; "Container ID"; Code[20])
        {
            Caption = 'Container Number';
        }

        field(4; "Current Status"; Text[50])
        {
            Caption = 'Current Status';
        }
        field(5; "Description"; Text[2048])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
