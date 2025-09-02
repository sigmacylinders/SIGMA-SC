table 70101 "BL Details"
//Created on 28/10/2024 with Nathalie


{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Liner"; Code[50])
        {
            Caption = 'Liner';
            // Set up a lookup to your master table here
            TableRelation = "SIGMA Lookup".Code where(Type = const(Liner));
        }
        field(2; "Free Demurrage Days"; Integer)
        {
            Caption = 'Free Demurrage Days';
            // Set up a lookup to your vessel/airline master table here
        }
        field(3; "Vessel"; Text[100])
        {
            Caption = 'Vessel';
        }
        field(4; "Voyage Number"; Text[50])
        {
            Caption = 'Voyage Number';
        }
        field(5; "Cargo Description"; Text[250])
        {
            Caption = 'Cargo Description';
        }
        field(6; "Origin"; Code[50])
        {
            Caption = 'Origin';
            // Set up a lookup to your origin master table here
            TableRelation = "SIGMA Lookup".Code where(Type = const(Origin));
        }
        field(7; "Port of Loading"; Code[50])
        {
            Caption = 'Port of Loading';
            // Set up a lookup to your port master table here
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port), ORIGINS = field(Origin));
        }
        field(8; "Port of Discharge"; Code[50])
        {
            Caption = 'Port of Discharge';
            // Set up a lookup to your port master table here
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port));
        }
        field(9; "BL"; Date)
        {
            Caption = 'BL';
        }
        field(10; "Clearing Agent"; Code[50])
        {
            Caption = 'Clearing Agent';
            //
            //Drop down can be handled with lookup
            // TableRelation = "SIGMA Lookup".Code where(Type = const("Clearing Agent")); 
            //    TableRelation = Vendor where(Category = const("SHIPPING & CLEARING"));
        }
        field(11; "Docs Sent to Entity Date"; Date)
        {
            Caption = 'Docs Sent to Entity Date';
        }
        field(12; "Docs Received in Entity Date"; Date)
        {
            Caption = 'Docs Received in Entity Date';
        }
        field(13; "Docs AWB No"; Text[50])
        {
            Caption = 'Docs AWB No';
        }
        field(14; "Copy Docs Sent to Agent Date"; Date)
        {
            Caption = 'Copy Docs Sent to Agent Date';
        }
        field(15; "Docs Delivered to Clearing Agent"; Date)
        {
            Caption = 'Docs Delivered to Clearing Agent';
        }
        field(16; "Assessment Date"; Date)
        {
            Caption = 'Assessment Date';
        }
        field(17; "Duty Paid Date"; Date)
        {
            Caption = 'Duty Paid Date';
        }
        field(18; "Duty Receipt sent to agent"; Date)
        {
            Caption = 'Duty Receipt sent to agent';
        }
        field(19; "Remarks"; Text[500])
        {
            Caption = 'Remarks';
        }

        field(20; "Loading Type"; Option)
        {
            OptionMembers = LCL,FCL; // Add more options if needed
        }
        field(21; "Transshipment"; Option)
        {
            OptionMembers = "Yes","No"; // Add more options if needed
        }
        field(22; "BL ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(23; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;


        }
        field(24; "Attachment ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(25; "Document Attachment ID"; Integer)
        {

        }
        field(26; "Document Attachment Table ID"; Integer)
        {

        }
        field(27; "Document Attachment No."; Code[20])
        {

        }
        field(28; "Document Attachment Doc. Type"; Enum "Attachment Document Type")
        {

        }
        field(29; "Document Attachment Line No."; Integer)
        {
        }
        field(30; "BL Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        // field(31; "Container ID"; Code[50])
        // {
        //     //  DataClassification = ToBeClassified;

        //     //    FieldClass = FlowField;
        //     //  CalcFormula = lookup("Container Details"."Container ID" where("BL ID" = field("BL ID"), Selected = const(true)));
        // }
        field(32; "Transshipment Port"; Code[50]
        )
        {
            Caption = 'Transshipment Port';
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port));

            trigger OnLookup()
            var
                TransshipmentPort: Record "SIGMA Lookup";
                TransshipmentPorts: Page "SIGMA Lookup";
            begin
                Rec."Transshipment Port" := '';


                Clear(TransshipmentPort);
                TransshipmentPort.SetRange(Type, TransshipmentPort.Type::Port);
                TransshipmentPorts.SetTableView(TransshipmentPort);
                TransshipmentPorts.LookupMode(true);
                IF TransshipmentPorts.RunModal() = Action::LookupOK then begin
                    TransshipmentPorts.SetSelectionFilter(TransshipmentPort);
                    if TransshipmentPort.FindSet() then
                        repeat
                            Rec."Transshipment Port" += TransshipmentPort.Code + ' , ';
                        until TransshipmentPort.Next() = 0;
                end;
                If Rec."Transshipment Port" <> '' then
                    Rec."Transshipment Port" := CopyStr(Rec."Transshipment Port", 1, StrLen(Rec."Transshipment Port") - 3);
            end;
        }
        field(33; "Incoterm"; Enum "Incoterm")
        {
            Caption = 'Incoterm';
            DataClassification = ToBeClassified;
        }



    }

    keys
    {
        key(Key1; "BL ID")
        {
        }
        key(key2; "BL Number")
        { }
    }


    trigger OnInsert()
    var


        NoSeries: Codeunit "No. Series";
        NoSeriesCode: Code[20];
        IsHandled: Boolean;
        GLSetup: Record "General Ledger Setup";
        // NoSeriesManagement: Codeunit NoSeriesManagement; // Removed as per deprecation notice
        "BL": Record "BL Details";
    begin
        if "BL ID" = '' then begin
            GLSetup.Get();
            GLSetup.TestField("BL No. Series");

            if NoSeries.AreRelated(GLSetup."BL No. Series", xRec."No. Series") then
                Rec."No. Series" := xRec."No. Series"
            else
                Rec."No. Series" := GLSetup."BL No. Series";

            Rec."BL ID" := NoSeries.GetNextNo(Rec."No. Series");

            //   end;
        end;
    end;
}
