table 70109 "Insurance/Claim"
{
    DataClassification = ToBeClassified;

    fields
    {
        // Fields for the Insurance table
        field(70100; "ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(70101; "Item #"; Code[20])
        {
            DataClassification = ToBeClassified;
            //  TableRelation = IF ("PO Number" = filter('<>''''')) "Purchase Line"."No." where("Document Type" = const(Order), type = const(item), "Document No." = field("PO Number")) ELSE
            TableRelation = Item;
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                ItemRec: Record Item;
            begin
                IF "Item #" <> '' then begin
                    Clear(ItemRec);
                    ItemRec.Get("Item #");
                    Rec.Cost := ItemRec."Unit Cost" * Rec.QTY;
                end;

            end;
        }

        field(70102; "QTY"; Decimal)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                ItemRec: Record Item;
            begin
                IF "Item #" <> '' then begin
                    Clear(ItemRec);
                    ItemRec.Get("Item #");
                    Rec.Cost := ItemRec."Unit Cost" * Rec.QTY;
                end;

            end;
        }

        field(70103; "Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }

        // Claimed as an Option field

        field(70104; "Insurance Company"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const(InsuranceCompany));
        }

        field(70105; "Claimed Value"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70106; "Insurance Claim Ref"; Code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70107; "Insurance Claim Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(70108; "Claim Description"; Text[250]) { DataClassification = ToBeClassified; }

        field(70109; "Claim Type"; Option)
        {
            OptionCaption = 'Theft,Damage,Loss,Accident,Fire,Flood';
            OptionMembers = Theft,Damage,Loss,Accident,Fire,Flood;
            DataClassification = ToBeClassified;
        }
        field(70110; "Claim Status"; Option)
        {
            OptionCaption = 'Pending,Claimed,Unclaimed';
            OptionMembers = Pending,Claimed,Unclaimed;
            DataClassification = ToBeClassified;
        }
        field(70111; "Policy No."; Text[30])
        {
            Caption = 'Policy No.';
        }
        field(70112; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
        }
        field(70113; "Reference Number"; code[20])
        {
            DataClassification = ToBeClassified;
            // TableRelation = "Purchase Header"."No." where("Document Type" = const(Order));
        }
        field(70114; "Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Insurance,,UnInsured,Warranty,Bad;
        }

        //Bad List Fields 


        field(70115; "Damage Type"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70116; "Damage Location"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }

        field(70117; "Extent of Damage"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70118; "Date of Damage"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(70119; "Cause of Damage"; Text[200])
        {
            DataClassification = ToBeClassified;
        }


        field(70120; "Condition of Packaging"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70121; "Reported By"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = User;
        }

        field(70122; "Action Taken"; Text[200])
        {
            DataClassification = ToBeClassified;
        }


        field(70123; "Replacement Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Pending","In Progress","Completed","Cancelled";
        }


        field(70124; "Supplier / Vendor"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70125; "Warranty Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Active,Expired,Claimed,"Under Repair","Replacement Pending";
        }

        field(70126; "Notes / Comments"; Text[500])
        {
            DataClassification = ToBeClassified;
        }
        //Uninsured ITems
        field(70127; "Condition"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70128; "Reason for Non-Insurance"; Text[200])
        {
            DataClassification = ToBeClassified;
        }

        field(70129; "Owner"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70130; "Storage Location"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(70131; "Date Added"; date)
        {
            DataClassification = ToBeClassified;
        }
        //warramty fields needed
        field(70132; "Warranty Start Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(70133; "Warranty End Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(70134; "Warranty Provider"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70135; "Warranty Type"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70136; "Item Condition"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(70137; "Repair Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Pending","In Progress",Completed,Failed,"Cancelled";
        }




    }




    keys
    {
        key(PK; "ID", Type)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var


        NoSeries: Codeunit "No. Series";
        GLSetup: Record "General Ledger Setup";

    //  NoSeries: Codeunit "No. Series";
    begin
        if Rec.ID = '' then begin
            GLSetup.Get();
            GLSetup.TestField("Insurance No. Series");
            if NoSeries.AreRelated(GLSetup."Insurance No. Series", xRec."No. Series") then
                Rec."No. Series" := xRec."No. Series"
            else
                Rec."No. Series" := GLSetup."Insurance No. Series";

            Rec.ID := NoSeries.GetNextNo(Rec."No. Series");


        end;
    end;
}
