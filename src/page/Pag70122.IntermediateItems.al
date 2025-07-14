page 70122 "Intermediate Items"
{
    PageType = List;
    SourceTable = "Intermediate Items"; // Replace with your actual table name
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }

                field("No. 2"; Rec."No. 2")
                {
                    ApplicationArea = All;
                }

                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;
                }

                field("Search Description"; Rec."Search Description")
                {
                    ApplicationArea = All;
                }

                field("Updated Date"; Rec."Updated Date")
                {
                    ApplicationArea = All;
                }

                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                    TableRelation = Vendor;
                }

                field("Supplier Currency"; Rec."Supplier Currency")
                {
                    Caption = 'Supplier Currency';
                    TableRelation = Currency;
                }

                field("Base Unit of Measure"; Rec."Base Unit of Measure")
                {
                    ApplicationArea = All;
                    TableRelation = "Unit of Measure";
                }

                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                }

                field("Inventory Posting Group"; Rec."Inventory Posting Group")
                {
                    ApplicationArea = All;
                    TableRelation = "Inventory Posting Group";
                }


                field("Length in mm"; Rec."Length in mm")
                {
                    ApplicationArea = All;
                }

                field("Width in mm"; Rec."Width in mm")
                {
                    ApplicationArea = All;
                }

                field("Height in mm"; Rec."Height in mm")
                {
                    ApplicationArea = All;
                }

                field("Unit Cost"; Rec."Unit Cost")
                {
                    ApplicationArea = All;
                }

                field("Costing Method"; Rec."Costing Method")
                {
                    ApplicationArea = All;
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }

                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                    TableRelation = "VAT Product Posting Group";
                }

                field("Brand"; Rec."Brand")
                {
                    ApplicationArea = All;
                    TableRelation = "Dimension Value".Code where("Dimension Code" = const('BRAND'));
                }
                field(LOB; Rec.LOB)
                {
                    ToolTip = 'Specifies the value of the LOB field.', Comment = '%';
                }

                field("Vendor Item No."; Rec."Vendor Item No.")
                {
                    ApplicationArea = All;
                }

                field("Family"; Rec."Family")
                {
                    ApplicationArea = All;
                }

                field("Sub Group"; Rec."Sub Group")
                {
                    ApplicationArea = All;
                }

                field("Main Group"; Rec."Main Group")
                {
                    ApplicationArea = All;
                }

                field("Item Category Code"; Rec."Item Category Code")
                {
                    Caption = 'Item Category Code';
                    TableRelation = "Item Category";
                }

                field("Gear / Ballast"; Rec."Gear / Ballast")
                {
                    ApplicationArea = All;
                }


                field("Installation"; Rec."Installation")
                {
                    ApplicationArea = All;
                }


                field("IP Rating"; Rec."IP Rating")
                {
                    ApplicationArea = All;
                }



                field("CRI"; Rec."CRI")
                {
                    ApplicationArea = All;
                }

                field("Beam Angle"; Rec."Beam Angle")
                {
                    ApplicationArea = All;
                }





                field("Lamps Count"; Rec."Lamps Count")
                {
                    ApplicationArea = All;
                }

                field("Wattage"; Rec."Wattage")
                {
                    ApplicationArea = All;
                }

                field("Total Wattage"; Rec."Total Wattage")
                {
                    ApplicationArea = All;
                }

                field("Voltage"; Rec."Voltage")
                {
                    ApplicationArea = All;
                }



                field("Diameter in mm"; Rec."Diameter in mm")
                {
                    ApplicationArea = All;
                }

                field("Cutout Length"; Rec."Cutout Length")
                {
                    ApplicationArea = All;
                }

                field("Cutout Width"; Rec."Cutout Width")
                {
                    ApplicationArea = All;
                }

                field("Cutout Height"; Rec."Cutout Height")
                {
                    ApplicationArea = All;
                }

                field("Cutout Diameter"; Rec."Cutout Diameter")
                {
                    ApplicationArea = All;
                }

                field("Cover Color"; Rec."Cover Color")
                {
                    ApplicationArea = All;
                }

                field("Luminous Flux (Lm)"; Rec."Luminous Flux (Lm)")
                {
                    ApplicationArea = All;
                }

                field("Viewing Distance"; Rec."Viewing Distance")
                {
                    ApplicationArea = All;
                }

                field("Lifespan"; Rec."Lifespan")
                {
                    ApplicationArea = All;
                }


                field("Project Number"; Rec."Project Number")
                {
                    ToolTip = 'Specifies the value of the Project Number field.', Comment = '%';
                }

                field("API Status"; Rec."API Status")
                {
                    ToolTip = 'Specifies the value of the API Status field.', Comment = '%';
                    Editable = false;
                }
                field("Dynamics Number"; Rec."Dynamics Number")
                {
                    ToolTip = 'Specifies the value of the Dynamics Number field.', Comment = '%';
                    Editable = InputDynamicsNumber;
                }
                // field(SIGMA_Picture; Rec.SIGMA_Picture)
                // {
                //     ApplicationArea = All;
                //     // trigger OnValidate() 
                //     // begin
                //     //     CurrPage.SaveRecord();
                //     // end;
                // }
            }
        }
        area(FactBoxes)
        {
            part("Media Factbox"; "Media Factbox")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "No." = field("No.");
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action(New)
            {
                ApplicationArea = All;
                Caption = 'Create New Item';
                Image = NewItem;
                trigger OnAction()
                begin
                    // Custom action for creating a new customer
                    //   PAGE.Run(PAGE::"Customer Card");
                    SendIntermediateItemstoItems(Rec);


                    SyncItemtoOtherCompanies(ItemsRec);//added on 05/03/2025

                    Rec.Processed := true;
                    Rec.Modify();
                end;

            }
            action("Reject the Item")
            {
                ApplicationArea = All;
                Caption = 'Reject the Item';
                Image = Reject;
                trigger OnAction()
                begin

                end;
            }

        }
    }

    local procedure SendIntermediateItemstoItems(IntVendor: Record "Intermediate Items")
    var
        InventorySetup: Record "Inventory Setup";
        NoSeries: Codeunit "No. Series";
        DefaultDimension: Record "Default Dimension";
        OldDefaultDimension: Record "Default Dimension";
    begin
        Clear(DefaultDimension);
        REc.TestField("Dynamics Number", '');
        Rec.TestField("API Status", '');
        rec.TestField(Brand);
        Rec.TestField(LOB);
        rec.TestField("Base Unit of Measure");
        rec.TestField(Description);
        //   Rec.TestField(Type);
        Rec.TestField("Vendor No.");

        Clear(ItemsRec);
        ItemsRec.Init();
        //ItemsRec.Validate("No.", NoSeries.GetNextNo(InventorySetup."Item Nos."));



        ItemsRec.Validate("No. 2", Rec."No. 2");
        ItemsRec.Validate("Description", Rec."Description");
        ItemsRec.Validate("Search Description", Rec."Search Description");

        ItemsRec.Insert(true);
        ItemsRec.Validate("Replenishment System", ItemsRec."Replenishment System"::Purchase);
        ItemsRec.Validate("Vendor No.", Rec."Vendor No.");

        ItemsRec.Validate("Base Unit of Measure", Rec."Base Unit of Measure");
        //AN 04/25/2025 +
        ItemsRec.Validate(Picture, Rec.SIGMA_Picture);
        //AN 04/25/2025 -
        IF Rec.Type = Rec.Type::Inventory then
            ItemsRec.Validate("Type", ItemsRec.Type::Inventory);

        IF Rec.Type = Rec.Type::"Non-Inventory" then
            ItemsRec.Validate("Type", ItemsRec.Type::"Non-Inventory");

        IF Rec.Type = Rec.Type::Service then
            ItemsRec.Validate("Type", ItemsRec.Type::Service);


        ItemsRec.Validate("Unit Cost", Rec."Unit Cost");
        ItemsRec.Validate("Costing Method", ItemsRec."Costing Method"::FIFO);//updated on 27/02/2025

        if Rec."Gen. Prod. Posting Group" <> '' then
            ItemsRec.Validate("Gen. Prod. Posting Group", Rec."Gen. Prod. Posting Group")
        else
            ItemsRec.Validate("Gen. Prod. Posting Group", 'GOODS');
        if Rec."VAT Prod. Posting Group" <> '' then
            ItemsRec.Validate("VAT Prod. Posting Group", Rec."VAT Prod. Posting Group")
        else
            ItemsRec.Validate("VAT Prod. Posting Group", 'GOODSVAT');

        IF Rec.Type = Rec.Type::Inventory then begin
            if Rec."Inventory Posting Group" <> '' then
                ItemsRec.Validate("Inventory Posting Group", Rec."Inventory Posting Group")
            else
                ItemsRec.Validate("Inventory Posting Group", 'GOODS');
        end;

        ItemsRec.Validate("Global Dimension 2 Code", rec.LOB);
        ItemsRec.ValidateShortcutDimCode(3, Rec.Brand);
        ItemsRec.Validate("Vendor Item No.", Rec."Vendor Item No.");

        ItemsRec.Validate("Item Category Code", Rec."Item Category Code");





        ItemsRec.Modify();
        Clear(OldDefaultDimension);
        if OldDefaultDimension.Get(ItemsRec.RecordId().TableNo(), ItemsRec."No.", 'LOB') then begin
            OldDefaultDimension.Validate("Value Posting", OldDefaultDimension."Value Posting"::"Code Mandatory");
            OldDefaultDimension.Modify();
        end;
        // VendorRec.Validate("Processed", Rec.Processed);

        Rec."Dynamics Number" := ItemsRec."No.";
        rec.Modify();
    end;

    Local procedure SyncItemtoOtherCompanies(ItemRec: Record Item)
    var
        OtherCompanyItemRec: Record Item;
        OtherCompanyItemUnitofMeasure: Record "Item Unit of Measure";
        DefaultDimension: Record "Default Dimension";
        GLSetup: Record "General Ledger Setup";
        TempBlob: Codeunit "Temp Blob";
        InStr: InStream;
        OutStr: OutStream;
        MediaID: Guid;
        TenantMedia: Record "Tenant Media";
        i: Integer;
    begin
        Clear(OtherCompanyItemRec);
        Clear(OtherCompanyItemUnitofMeasure);
        Clear(DefaultDimension);


        OtherCompanyItemRec.Init();
        OtherCompanyItemRec.Copy(ItemRec);
        OtherCompanyItemRec.Validate("Base Unit of Measure", Rec."Base Unit of Measure");
        OtherCompanyItemRec.Insert();
        //this section added on 25/03/2025
        OtherCompanyItemRec.Validate("Replenishment System", OtherCompanyItemRec."Replenishment System"::Purchase);
        OtherCompanyItemRec.Validate("Vendor No.", Rec."Vendor No.");

        //AN 04/25/2025 +
        // OtherCompanyItemRec.Validate(Picture, ItemsRec.Picture);
        // Loop through each image in the MediaSet
        for i := 1 to ItemRec.Picture.Count do begin
            MediaID := ItemRec.Picture.Item(i); // Get media GUID

            if TenantMedia.Get(MediaID) then begin
                // Get the content stream from Tenant Media
                TenantMedia.CalcFields(Content); // Ensure BLOB is loaded
                TenantMedia.Content.CreateInStream(InStr);

                // Copy to temp blob
                TempBlob.CreateOutStream(OutStr);
                CopyStream(OutStr, InStr);

                // Import into target MediaSet
                TempBlob.CreateInStream(InStr);
                OtherCompanyItemRec.Picture.ImportStream(InStr, 'CopiedImage_' + Format(i) + '.jpg');
            end;
        end;
        OtherCompanyItemRec.Modify();
        //AN 04/25/2025 -
        // OtherCompanyItemRec.Validate("Base Unit of Measure", Rec."Base Unit of Measure");
        IF Rec.Type = Rec.Type::Inventory then
            OtherCompanyItemRec.Validate("Type", OtherCompanyItemRec.Type::Inventory);

        IF Rec.Type = Rec.Type::"Non-Inventory" then
            OtherCompanyItemRec.Validate("Type", OtherCompanyItemRec.Type::"Non-Inventory");

        IF Rec.Type = Rec.Type::Service then
            OtherCompanyItemRec.Validate("Type", OtherCompanyItemRec.Type::Service);

        OtherCompanyItemRec.Validate("Unit Cost", Rec."Unit Cost");
        OtherCompanyItemRec.Validate("Costing Method", OtherCompanyItemRec."Costing Method"::FIFO);//updated on 27/02/2025

        if Rec."Gen. Prod. Posting Group" <> '' then
            OtherCompanyItemRec.Validate("Gen. Prod. Posting Group", Rec."Gen. Prod. Posting Group")
        else
            OtherCompanyItemRec.Validate("Gen. Prod. Posting Group", 'GOODS');

        if Rec."VAT Prod. Posting Group" <> '' then
            OtherCompanyItemRec.Validate("VAT Prod. Posting Group", Rec."VAT Prod. Posting Group")
        else
            OtherCompanyItemRec.Validate("VAT Prod. Posting Group", 'GOODSVAT');
        IF Rec.Type = Rec.Type::Inventory then begin
            if Rec."Inventory Posting Group" <> '' then
                OtherCompanyItemRec.Validate("Inventory Posting Group", Rec."Inventory Posting Group")
            else
                OtherCompanyItemRec.Validate("Inventory Posting Group", 'GOODS');
        end;


        OtherCompanyItemRec.Validate("Global Dimension 2 Code", Rec.LOB);
        OtherCompanyItemRec.ValidateShortcutDimCode(3, Rec.Brand);
        //   OtherCompanyItemRec.Validate("Vendor Item No.", Rec."Vendor Item No.");

        OtherCompanyItemRec.Modify();
        OtherCompanyItemUnitofMeasure.Init();
        OtherCompanyItemUnitofMeasure.Validate("Item No.", ItemRec."No.");
        OtherCompanyItemUnitofMeasure.Validate("Code", ItemRec."Base Unit of Measure");
        OtherCompanyItemUnitofMeasure.Validate("Qty. per Unit of Measure", 1);
        OtherCompanyItemUnitofMeasure.Insert();

        //AN 04/09/2025 
        //Brand
        // Clear(DefaultDimension);
        // DefaultDimension.RESET();
        DefaultDimension.SetRange("Table ID", OtherCompanyItemRec.RecordId().TableNo());
        DefaultDimension.SetRange("No.", OtherCompanyItemRec."No.");
        DefaultDimension.SetRange("Dimension Code", 'BRAND');
        if not DefaultDimension.FindFirst() then begin
            DefaultDimension.Init();
            DefaultDimension."Table ID" := OtherCompanyItemRec.RecordId().TableNo();
            DefaultDimension."No." := OtherCompanyItemRec."No.";
            DefaultDimension."Dimension Code" := 'BRAND';
            DefaultDimension.Insert();
        end;

        DefaultDimension.Validate("Value Posting", DefaultDimension."Value Posting"::"Code Mandatory");
        DefaultDimension.Modify();


        //LOB 
        if not HasGotGLSetup then begin
            GLSetup.Get();
            GLSetupShortcutDimCode[1] := GLSetup."Shortcut Dimension 1 Code";
            GLSetupShortcutDimCode[2] := GLSetup."Shortcut Dimension 2 Code";
            GLSetupShortcutDimCode[3] := GLSetup."Shortcut Dimension 3 Code";
            GLSetupShortcutDimCode[4] := GLSetup."Shortcut Dimension 4 Code";
            GLSetupShortcutDimCode[5] := GLSetup."Shortcut Dimension 5 Code";
            GLSetupShortcutDimCode[6] := GLSetup."Shortcut Dimension 6 Code";
            GLSetupShortcutDimCode[7] := GLSetup."Shortcut Dimension 7 Code";
            GLSetupShortcutDimCode[8] := GLSetup."Shortcut Dimension 8 Code";
            HasGotGLSetup := true;
        end;
        if OtherCompanyItemRec."Global Dimension 2 Code" <> '' then begin
            if DefaultDimension.Get(OtherCompanyItemRec.RecordId().TableNo(), OtherCompanyItemRec."No.", GLSetupShortcutDimCode[2])
            then begin
                DefaultDimension.Validate("Dimension Value Code", OtherCompanyItemRec."Global Dimension 2 Code");
                DefaultDimension.Validate("Value Posting", DefaultDimension."Value Posting"::"Code Mandatory");
                DefaultDimension.Modify();
            end else begin
                DefaultDimension.Init();
                DefaultDimension.Validate("Table ID", OtherCompanyItemRec.RecordId().TableNo());
                DefaultDimension.Validate("No.", OtherCompanyItemRec."No.");
                DefaultDimension.Validate("Dimension Code", GLSetupShortcutDimCode[2]);
                DefaultDimension.Validate("Dimension Value Code", OtherCompanyItemRec."Global Dimension 2 Code");
                DefaultDimension.Validate("Value Posting", DefaultDimension."Value Posting"::"Code Mandatory");
                DefaultDimension.Insert();
            end;
        end else
            if DefaultDimension.Get(OtherCompanyItemRec.RecordId().TableNo(), OtherCompanyItemRec."No.", GLSetupShortcutDimCode[2]) then
                DefaultDimension.Delete();
    end;

    procedure GetRecords(ApolloNumber: text; DynamicsNumber: text)
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        Request: HttpRequestMessage;
        OutputString: Text;
    begin
        Request.SetRequestUri(StrSubstNo('https://apollolightingapp.com/api/v1/Project/UpdateItemDyanmiscNumber/%1/%2', ApolloNumber, DynamicsNumber));
        Request.Method := 'GET';
        IF Client.Send(Request, Response) then begin
            IF Response.IsSuccessStatusCode then begin
                Response.Content.ReadAs(OutputString);
                Message('%1', OutputString);
            end else
                Error('Error: %1', Response.ReasonPhrase);
        end else
            Error('Error: %1', Response.ReasonPhrase);

        Rec."API Status" := OutputString + StrSubstNo('Response: %1', Response.ReasonPhrase);
    end;

    procedure PostRejectItem(ApolloNumber: text; DynamicsNumber: text; CommentstoApollo: Text)//added on 10/03/2025
    var
        Client: HttpClient;
        //  Response: HttpResponseMessage;
        //   Request: HttpRequestMessage;
        OutputString: Text;
        Content: HttpContent;
        postData: Text;
        RequestHeaders: HttpHeaders;
        ResponseHeader: HttpResponseMessage;
        HttpHeadersContent: HttpHeaders;
        ResponseMessage: HttpResponseMessage;
        RequestMessage: HttpRequestMessage;

    begin
        // postData := '{"useEnvironmentUpdateWindow": false,"targetVersion": "' + '4.0' + '","allowPreviewVersion": true,"installOrUpdateNeededDependencies":  true}';
        // postData := '{"ApolloNo": 1234,"Comments": "Reason for rejection","DynamicsNo": "5678"}';
        If DynamicsNumber = '' then
            DynamicsNumber := '0';

        postData := '{"ApolloNo": ' + ApolloNumber + ',"Comments":  "' + CommentstoApollo + '","DynamicsNo":  "' + DynamicsNumber + '"}';
        RequestMessage.GetHeaders(RequestHeaders);
        RequestHeaders.Clear();
        RequestHeaders.Add('Authorization', 'No Auth');
        RequestHeaders.Add('Accept', 'application/json');
        Content.WriteFrom(postData);

        //GET HEADERS
        Content.GetHeaders(HttpHeadersContent);
        HttpHeadersContent.Clear();
        HttpHeadersContent.Remove('Content-Type');
        HttpHeadersContent.Add('Content-Type', 'application/json; charset=UTF-8');


        //POST METHOD
        RequestMessage.Content := Content;
        RequestMessage.SetRequestUri('https://apollolightingapp.com/api/v1/project/RejectDyanmiscIntermediateItem');
        RequestMessage.Method := 'POST';

        IF Client.Send(RequestMessage, ResponseMessage) then begin
            IF ResponseMessage.IsSuccessStatusCode then begin
                ResponseMessage.Content.ReadAs(OutputString);
                Message('%1', OutputString + ' :  Item is Rejected and information is sent back to apollo');
            end else
                Error('Error: %1', ResponseMessage.ReasonPhrase);
        end else
            Error('Error: %1', ResponseMessage.ReasonPhrase);

        Rec."API Status" := OutputString + StrSubstNo('Response: %1', OutputString + ' :  Item is Rejected and information is sent back to apollo');

        IF Rec."Dynamics Number" <> '' then
            Rec.Processed := true;

        Rec.Modify();
    end;

    trigger OnOpenPage()
    var
    begin
        Clear(UserSetup);
        IF UserSetup.Get(UserId) then;
        InputDynamicsNumber := UserSetup."Input DynamicNum to Intermed.";
    end;

    var
        ItemsRec: Record Item;
        UserSetup: Record "User Setup";
        InputDynamicsNumber: Boolean;
        HasGotGLSetup: Boolean;
        GLSetupShortcutDimCode: array[8] of Code[20];
}
