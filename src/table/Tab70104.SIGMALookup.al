table 70104 "SIGMA Lookup"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "SIGMA Lookup";
    LookupPageId = "SIGMA Lookup";

    fields
    {
        field(70100; "Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ","Airline","Port","Air Port",Origin,"Clearing Agent",Fitting,Liner,Beneficiary,"LC Applicant","Agent","Vendor Category",Incoterm,InsuranceCompany,Shape,Reflector,Model,"Lamp Source",Lamp,"Ip Code",Installation,"Hs Code",Housing,Frame,"Fitting Color",Driver,Diffuser,"Company Subtype","Color Temp",Bracket,"Beam Type";

        }
        field(70101; "Code"; code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(70102; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(70103; "ORIGINS"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const(Origin));

        }
    }

    keys
    {
        key(Key1; Type, Code)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}