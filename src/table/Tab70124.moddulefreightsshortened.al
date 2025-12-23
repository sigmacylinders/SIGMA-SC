table 70124 "moddule_freights_shortened"
{
    Caption = 'Module Freights Shortened';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID"; Integer)
        {
            Caption = 'ID';
            DataClassification = SystemMetadata;
        }

        field(2; "Customer ID"; Integer)
        {
            Caption = 'Customer ID';
            DataClassification = CustomerContent;
        }

        field(3; "Current Status"; Code[30])
        {
            Caption = 'Current Status';
            DataClassification = CustomerContent;
        }

        field(4; "Origin"; Code[10])
        {
            Caption = 'Origin';
            DataClassification = CustomerContent;
        }

        field(5; "Destination"; Code[10])
        {
            Caption = 'Destination';
            DataClassification = CustomerContent;
        }

        field(6; "Freight Type"; Code[20])
        {
            Caption = 'Freight Type';
            DataClassification = CustomerContent;
        }

        field(7; "Last Check"; BigInteger)
        {
            Caption = 'Last Check (Unix Timestamp)';
            DataClassification = SystemMetadata;
        }

        field(8; "Next Check"; BigInteger)
        {
            Caption = 'Next Check (Unix Timestamp)';
            DataClassification = SystemMetadata;
        }

        field(9; "Carrier Code"; Code[20])
        {
            Caption = 'Carrier Code';
            DataClassification = CustomerContent;
        }

        field(10; "Booking Code"; Code[30])
        {
            Caption = 'Booking Code';
            DataClassification = CustomerContent;
        }

        field(11; "Tracking Number"; Code[40])
        {
            Caption = 'Tracking Number';
            DataClassification = CustomerContent;
        }

        field(12; "Destination Airport"; Code[10])
        {
            Caption = 'Destination Airport';
            DataClassification = CustomerContent;
        }

        field(13; "Freight Forwarder"; Code[50])
        {
            Caption = 'Freight Forwarder';
            DataClassification = CustomerContent;
        }

        field(14; "Custom Label"; Text[100])
        {
            Caption = 'Custom Label';
            DataClassification = CustomerContent;
        }

        field(15; "Delay Hours"; Integer)
        {
            Caption = 'Delay Hours';
            DataClassification = CustomerContent;
        }

        field(16; "CO2e Result"; Decimal)
        {
            Caption = 'CO2e Result';
            DataClassification = CustomerContent;
        }

        field(17; "Departure Time"; DateTime)
        {
            Caption = 'Departure Time';
            DataClassification = CustomerContent;
        }

        field(18; "Arrival Time"; DateTime)
        {
            Caption = 'Arrival Time';
            DataClassification = CustomerContent;
        }

        field(19; "Latest Carrier ETD"; DateTime)
        {
            Caption = 'Latest Carrier ETD';
            DataClassification = CustomerContent;
        }

        field(20; "Initial Carrier ETA"; DateTime)
        {
            Caption = 'Initial Carrier ETA';
            DataClassification = CustomerContent;
        }

        field(21; "Latest Carrier ETA"; DateTime)
        {
            Caption = 'Latest Carrier ETA';
            DataClassification = CustomerContent;
        }

        field(22; "Predictive ETA"; DateTime)
        {
            Caption = 'Predictive ETA';
            DataClassification = CustomerContent;
        }

        field(23; "Additional Info"; Text[2048])
        {
            Caption = 'Additional Info (JSON)';
            DataClassification = CustomerContent;
        }

        field(24; "Created At"; DateTime)
        {
            Caption = 'Created At';
            DataClassification = SystemMetadata;
        }

        field(25; "Updated At"; DateTime)
        {
            Caption = 'Updated At';
            DataClassification = SystemMetadata;
        }

        field(26; "Carriage Type"; Code[30])
        {
            Caption = 'Carriage Type';
            DataClassification = CustomerContent;
        }

        field(27; "Tracking Status"; Code[30])
        {
            Caption = 'Tracking Status';
            DataClassification = CustomerContent;
        }

        field(28; "Is Stopped"; Boolean)
        {
            Caption = 'Is Stopped';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "ID")
        {
            Clustered = true;
        }
    }
}
