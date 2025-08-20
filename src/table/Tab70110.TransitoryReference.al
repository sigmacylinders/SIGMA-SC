table 70110 "Transitory Reference"
{
    DataClassification = ToBeClassified;

    fields
    {
        // Transitory Reference Field (Primary Key)
        field(70100; "Transitory Reference"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(70101; "PO #"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Purchase Header"."No." WHERE("Document Type" = const(Order));

            trigger OnValidate()
            var
                PurchaseLine: Record "Purchase Line";
            begin
                IF (Rec."PO #" <> '') AND (Rec."Item #" <> '') then begin
                    Clear(PurchaseLine);
                    PurchaseLine.SetRange("Document Type", PurchaseLine."Document Type"::Order);
                    PurchaseLine.SetRange("Document No.", REc."PO #");
                    PurchaseLine.SetRange(Type, PurchaseLine.Type::Item);
                    PurchaseLine.SetRange("No.", Rec."Item #");
                    IF PurchaseLine.FindFirst() then begin
                        Rec.QTY := PurchaseLine.Quantity - PurchaseLine."Quantity Received";
                        Rec."Unit Price" := PurchaseLine."Direct Unit Cost";
                        Rec."Total Value" := PurchaseLine."Line Amount";
                    end;
                end;
            end;
        }

        field(70102; "Item #"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = IF ("PO #" = filter('<>''''')) "Purchase Line"."No." where("Document Type" = const(Order), type = const(item), "Document No." = field("PO #")) ELSE
            Item;
            ValidateTableRelation = false;
        }

        field(70103; "QTY"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70104; "Unit Price"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70105; "Total Value"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(70106; "Supplier Claim Reference"; Code[50])
        {
            DataClassification = ToBeClassified;
        }

        field(70107; "Supplier"; Code[50])
        {
            DataClassification = ToBeClassified;
            tablerelation = Vendor;
        }

        field(70108; "Status"; Option)
        {
            OptionCaption = 'Open,Accepted,Rejected';
            OptionMembers = Open,Accepted,Rejected;
            DataClassification = ToBeClassified;
        }
        field(70109; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Transitory Reference")
        {
            Clustered = true;
        }

        key(FK_JobLink; "PO #", "Item #")
        {
            Clustered = false;
        }
    }


    trigger OnInsert()
    var


        NoSeries: Codeunit "No. Series";
        GLSetup: Record "General Ledger Setup";

    //  NoSeries: Codeunit "No. Series";
    begin
        if Rec."Transitory Reference" = '' then begin
            GLSetup.Get();
            GLSetup.TestField("Transitory No. Series");
            if NoSeries.AreRelated(GLSetup."Transitory No. Series", xRec."No. Series") then
                Rec."No. Series" := xRec."No. Series"
            else
                Rec."No. Series" := GLSetup."Transitory No. Series";

            Rec."Transitory Reference" := NoSeries.GetNextNo(Rec."No. Series");


        end;
    end;
}
