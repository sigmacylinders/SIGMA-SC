table 70120 "Cargo Booking Header"
{
    DataClassification = ToBeClassified;
    //SC.AI 02/09/2025
    fields
    {
        field(1; "Booking No."; Code[20]) { Caption = 'Booking No.'; }
        field(2; "Mode"; Enum "Cargo Mode") { Caption = 'Mode'; }
        field(3; "Total Quantity"; Decimal) { Caption = 'Total Quantity'; }
        field(4; "Gross Weight"; Decimal) { Caption = 'Gross Weight (kg)'; }
        field(5; "Volumetric Weight"; Decimal) { Caption = 'Volumetric Weight (kg)'; }
        field(6; "Chargeable Weight"; Decimal) { Caption = 'Chargeable Weight (kg)'; }
        field(7; "Total CBM"; Decimal) { Caption = 'Total CBM'; }

        // Bill of Lading / Airwaybill / Truckwaybill
        field(8; "Shipper"; Text[100])
        {
            TableRelation = Vendor;
        }
        field(9; "Consignee"; Text[100]) { TableRelation = Vendor; }
        field(10; "Notify Party"; Text[100]) { }
        field(11; "Incoterms"; enum Incoterm) { }
        field(12; "Freight Terms"; Enum "Freight Terms") { }
        field(13; "Goods Type"; Enum "Goods Type") { }
        field(14; "Special Instructions"; Text[250]) { }

        // Cargo Shipping
        field(15; "Port of Loading"; Text[50])
        {
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port));
        }
        field(16; "Port of Discharge"; Text[50])
        {
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port));
        }
        field(17; "ETD"; Date) { Caption = 'Estimated Departure'; }
        field(18; "ETA"; Date) { Caption = 'Estimated Arrival'; }

        field(19; "Container Type Summary"; Text[250]) { Editable = false; }

        // Confirmation
        field(20; "Selected Vendor"; Code[20]) { TableRelation = Vendor; }
        field(21; "Prepared By"; Text[50]) { Editable = false; }
        field(22; "Booking Date"; Date) { }
        field(23; "Booking Reference No."; Text[100]) { Editable = false; }
        field(24; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;


        }
        field(25; "Booking"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Booking No.") { Clustered = true; }
    }


    trigger OnInsert()
    var


        NoSeries: Codeunit "No. Series";
        NoSeriesCode: Code[20];
        IsHandled: Boolean;

        // NoSeriesManagement: Codeunit NoSeriesManagement; // Removed as per deprecation notice
        "BL": Record "BL Details";
        purchasesetup: Record "Purchases & Payables Setup";
    begin
        if "Booking No." = '' then begin
            purchasesetup.Get();
            purchasesetup.TestField("Booing No.");

            if NoSeries.AreRelated(purchasesetup."Booing No.", xRec."No. Series") then
                Rec."No. Series" := xRec."No. Series"
            else
                Rec."No. Series" := purchasesetup."Booing No.";

            Rec."Booking No." := NoSeries.GetNextNo(Rec."No. Series");

        end;
        Rec."Prepared By" := USERID;
        Rec."Booking Date" := TODAY;
        Rec."Booking Reference No." := Rec."Booking No.";
    end;
}
