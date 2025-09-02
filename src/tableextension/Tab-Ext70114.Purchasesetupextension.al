tableextension 70114 "Purchase setup extension" extends "Purchases & Payables Setup"
{
    fields
    {
        // Add changes to table fields here
        field(70100; "Purchase Request Nos."; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        //AN 04/11/2025
        field(70101; "Local Vendor"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
        }
        field(70102; "Item Attr Packed Length"; Code[20])
        {
            Caption = 'Item Attr Packed Length code';
            TableRelation = "Item Attribute";

        }

        field(70103; "Item Attr Packed Width"; Code[20])
        {
            Caption = 'Item Attr Packed Width code';
            TableRelation = "Item Attribute";
        }

        field(70104; "Item Attr Packed Height"; Code[20])
        {
            Caption = 'Item Attr Packed Height code';
            TableRelation = "Item Attribute";
        }
        field(70105; "Item Attr Packed Net W"; Code[20])
        {
            Caption = 'Item Attr Packed Net Weight';
            DataClassification = SystemMetadata;
            TableRelation = "Item Attribute";
        }

        field(70106; "Item Attr Packed Gross W"; Code[20])
        {
            Caption = 'Item Attr Packed Gross Weight';
            DataClassification = SystemMetadata;
            TableRelation = "Item Attribute";
        }

        field(70107; "Item Attr Packed Volumetric W"; Code[20])
        {
            Caption = 'Item Attr Packed Volumetric Weight';
            DataClassification = SystemMetadata;
            TableRelation = "Item Attribute";
        }
        field(70108; "Booing No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
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