tableextension 70220 SalesLineExt extends "Sales Line"
{
    fields
    {
        field(70233; "BL Number"; Code[50])
        {
            Caption = 'BL Number';
            DataClassification = CustomerContent;
        }
        field(70204; "BL/AWB ID"; Code[20])
        {
            Caption = 'BL/AWB ID';
            DataClassification = CustomerContent;
        }
        field(70205; "Container ID"; Code[50])
        {
            Caption = 'Container ID';
            DataClassification = CustomerContent;
        }
        field(70211; "Container Line No."; Integer)
        {
            Caption = 'Container Line No.';
            DataClassification = CustomerContent;
        }
        field(70212; "Truck WayBill ID"; Code[20])
        {
            Caption = 'Truck WayBill ID';
            DataClassification = CustomerContent;
        }
        field(70213; "Truck Details ID"; Code[50])
        {
            Caption = 'Truck Details ID';
            DataClassification = CustomerContent;
        }
        field(70214; "Truck Details Line No."; Integer)
        {
            Caption = 'Truck Details Line No.';
            DataClassification = CustomerContent;
        }
        field(70215; "Shipping By"; Option)
        {
            Caption = 'Shipping By';
            DataClassification = CustomerContent;
            OptionMembers = " ",Sea,Air,InLand;
            OptionCaption = ' ,Sea,Air,InLand';
        }
        field(70216; "Container Size"; Code[20])
        {
            Caption = 'Container Size';
            DataClassification = CustomerContent;
        }
        field(70217; "Lock Number"; Code[20])
        {
            Caption = 'Lock Number';
            DataClassification = CustomerContent;
        }
    }
}
