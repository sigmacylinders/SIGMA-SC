tableextension 70214 "Purchase setup extension" extends "Purchases & Payables Setup"
{
    fields
    {
        // Add changes to table fields here
        field(70200; "Purchase Request Nos."; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        //AN 04/11/2025
        field(70201; "Local Vendor"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
        }
        field(70202; "Item Attr Packed Length"; Code[20])
        {
            Caption = 'Item Attr Packed Length code';
            TableRelation = "Item Attribute";

        }

        field(70203; "Item Attr Packed Width"; Code[20])
        {
            Caption = 'Item Attr Packed Width code';
            TableRelation = "Item Attribute";
        }

        field(70204; "Item Attr Packed Height"; Code[20])
        {
            Caption = 'Item Attr Packed Height code';
            TableRelation = "Item Attribute";
        }
        field(70205; "Item Attr Packed Net W"; Code[20])
        {
            Caption = 'Item Attr Packed Net Weight';
            DataClassification = SystemMetadata;
            TableRelation = "Item Attribute";
        }

        field(70206; "Item Attr Packed Gross W"; Code[20])
        {
            Caption = 'Item Attr Packed Gross Weight';
            DataClassification = SystemMetadata;
            TableRelation = "Item Attribute";
        }

        field(70207; "Item Attr Packed Volumetric W"; Code[20])
        {
            Caption = 'Item Attr Packed Volumetric Weight';
            DataClassification = SystemMetadata;
            TableRelation = "Item Attribute";
        }
        field(70208; "Booing No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(70209; "Quote No."; Code[10])
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