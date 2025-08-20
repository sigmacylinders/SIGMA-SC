table 70101 "BL Details"
//Created on 28/10/2024 with Nathalie


{
    DataClassification = ToBeClassified;

    fields
    {
        field(70100; "Liner"; Code[50])
        {
            Caption = 'Liner';
            // Set up a lookup to your master table here
            TableRelation = "SIGMA Lookup".Code where(Type = const(Liner));
        }
        field(70101; "Free Demurrage Days"; Integer)
        {
            Caption = 'Free Demurrage Days';
            // Set up a lookup to your vessel/airline master table here
        }
        field(70102; "Vessel"; Text[100])
        {
            Caption = 'Vessel';
        }
        field(70103; "Voyage Number"; Text[50])
        {
            Caption = 'Voyage Number';
        }
        field(70104; "Cargo Description"; Text[250])
        {
            Caption = 'Cargo Description';
        }
        field(70105; "Origin"; Code[50])
        {
            Caption = 'Origin';
            // Set up a lookup to your origin master table here
            TableRelation = "SIGMA Lookup".Code where(Type = const(Origin));
        }
        field(70106; "Port of Loading"; Code[50])
        {
            Caption = 'Port of Loading';
            // Set up a lookup to your port master table here
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port), ORIGINS = field(Origin));
        }
        field(70107; "Port of Discharge"; Code[50])
        {
            Caption = 'Port of Discharge';
            // Set up a lookup to your port master table here
            TableRelation = "SIGMA Lookup".Code where(Type = const(Port));
        }
        field(70108; "BL"; Date)
        {
            Caption = 'BL';
        }
        field(70109; "Clearing Agent"; Code[50])
        {
            Caption = 'Clearing Agent';
            //
            //Drop down can be handled with lookup
            // TableRelation = "SIGMA Lookup".Code where(Type = const("Clearing Agent")); 
            //    TableRelation = Vendor where(Category = const("SHIPPING & CLEARING"));
        }
        field(70110; "Docs Sent to Entity Date"; Date)
        {
            Caption = 'Docs Sent to Entity Date';
        }
        field(70111; "Docs Received in Entity Date"; Date)
        {
            Caption = 'Docs Received in Entity Date';
        }
        field(70112; "Docs AWB No"; Text[50])
        {
            Caption = 'Docs AWB No';
        }
        field(70113; "Copy Docs Sent to Agent Date"; Date)
        {
            Caption = 'Copy Docs Sent to Agent Date';
        }
        field(70114; "Docs Delivered to Clearing Agent"; Date)
        {
            Caption = 'Docs Delivered to Clearing Agent';
        }
        field(70115; "Assessment Date"; Date)
        {
            Caption = 'Assessment Date';
        }
        field(70116; "Duty Paid Date"; Date)
        {
            Caption = 'Duty Paid Date';
        }
        field(70117; "Duty Receipt sent to agent"; Date)
        {
            Caption = 'Duty Receipt sent to agent';
        }
        field(70118; "Remarks"; Text[500])
        {
            Caption = 'Remarks';
        }

        field(70119; "Loading Type"; Option)
        {
            OptionMembers = LCL,FCL; // Add more options if needed
        }
        field(70120; "Transshipment"; Option)
        {
            OptionMembers = "Yes","No"; // Add more options if needed
        }
        field(70121; "BL ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70122; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;


        }
        field(70123; "Attachment ID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70124; "Document Attachment ID"; Integer)
        {

        }
        field(70125; "Document Attachment Table ID"; Integer)
        {

        }
        field(70126; "Document Attachment No."; Code[20])
        {

        }
        field(70127; "Document Attachment Doc. Type"; Enum "Attachment Document Type")
        {

        }
        field(70128; "Document Attachment Line No."; Integer)
        {
        }
        field(70129; "BL Number"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        // field(70130; "Container ID"; Code[50])
        // {
        //     //  DataClassification = ToBeClassified;

        //     //    FieldClass = FlowField;
        //     //  CalcFormula = lookup("Container Details"."Container ID" where("BL ID" = field("BL ID"), Selected = const(true)));
        // }
        field(70131; "Transshipment Port"; Code[50]
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
        field(70132; "Incoterm"; Enum "Incoterm")
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
        NoSeriesManagement: Codeunit NoSeriesManagement;
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
