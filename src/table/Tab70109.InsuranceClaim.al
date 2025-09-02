table 70109 "Insurance/Claim"
{
    DataClassification = ToBeClassified;

    fields
    {
        // Fields for the Insurance table
        field(1; "ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Item #"; Code[20])
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

        field(3; "QTY"; Decimal)
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

        field(4; "Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }

        // Claimed as an Option field

        field(5; "Insurance Company"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "SIGMA Lookup".Code where(Type = const(InsuranceCompany));
        }

        field(6; "Claimed Value"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(7; "Insurance Claim Ref"; Code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(8; "Insurance Claim Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Claim Description"; Text[250]) { DataClassification = ToBeClassified; }

        field(10; "Claim Type"; Option)
        {
            OptionCaption = 'Theft,Damage,Loss,Accident,Fire,Flood';
            OptionMembers = Theft,Damage,Loss,Accident,Fire,Flood;
            DataClassification = ToBeClassified;
        }
        field(11; "Claim Status"; Option)
        {
            OptionCaption = 'Pending,Claimed,Unclaimed';
            OptionMembers = Pending,Claimed,Unclaimed;
            DataClassification = ToBeClassified;
        }
        field(12; "Policy No."; Text[30])
        {
            Caption = 'Policy No.';
        }
        field(13; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
        }
        field(14; "Reference Number"; code[20])
        {
            DataClassification = ToBeClassified;
            // TableRelation = "Purchase Header"."No." where("Document Type" = const(Order));
        }
        field(15; "Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Insurance,,UnInsured,Warranty,Bad;
        }

        //Bad List Fields 


        field(16; "Damage Type"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(17; "Damage Location"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }

        field(18; "Extent of Damage"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(19; "Date of Damage"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(20; "Cause of Damage"; Text[200])
        {
            DataClassification = ToBeClassified;
        }


        field(21; "Condition of Packaging"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(22; "Reported By"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = User;
        }

        field(23; "Action Taken"; Text[200])
        {
            DataClassification = ToBeClassified;
        }


        field(24; "Replacement Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Pending","In Progress","Completed","Cancelled";
        }


        field(25; "Supplier / Vendor"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(26; "Warranty Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Active,Expired,Claimed,"Under Repair","Replacement Pending";
        }

        field(27; "Notes / Comments"; Text[500])
        {
            DataClassification = ToBeClassified;
        }
        //Uninsured ITems
        field(28; "Condition"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(29; "Reason for Non-Insurance"; Text[200])
        {
            DataClassification = ToBeClassified;
        }

        field(30; "Owner"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(31; "Storage Location"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(32; "Date Added"; date)
        {
            DataClassification = ToBeClassified;
        }
        //warramty fields needed
        field(33; "Warranty Start Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(34; "Warranty End Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(35; "Warranty Provider"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(36; "Warranty Type"; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(37; "Item Condition"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(38; "Repair Status"; Option)
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
