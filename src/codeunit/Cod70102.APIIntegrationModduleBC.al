codeunit 70102 "API Integration Moddule-BC"
{
    trigger OnRun()
    begin
        CreateRequest;
    end;


    procedure CreateRequest(): Text
    var
        TempBlob: Codeunit "Temp Blob";
        Client: HttpClient;
        RequestHeaders: HttpHeaders;
        MailContentHeaders: HttpHeaders;
        MailContent: HttpContent;
        ResponseMessage: HttpResponseMessage;
        RequestMessage: HttpRequestMessage;
        JObject: JsonObject;
        ResponseStream: InStream;
        APICallResponseMessage: Text;
        StatusCode: Text;
        IsSuccessful: Boolean;

        ResponseText: Text;
        //  Client: HttpClient;
        JsonArray: JsonArray;
        JsonToken: JsonToken;
        JsonObject: JsonObject;
        Cname: Text;
        i: Integer;
        RequestUrl: Text;
        AccessToken: Text;
    begin
        RequestUrl := 'https://backend.qa.platform.moddule.com/api/v2/freights_shortened?per_page=30';
        AccessToken := 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NjYsInRva2VuX3R5cGUiOiJhcGkiLCJ0b2tlbl9zaWduYXR1cmUiOiIzNTFkNGI0NzBmZjcwY2U3MjRjZDg2ZjcyODc4NGYwNSJ9.CQjGx0rLZT2bPAU--BScUzyrP-LOZ4q0ncPghX6ZK6I';
        RequestMessage.GetHeaders(RequestHeaders);
        RequestHeaders.Add('X-Auth-Token', AccessToken);  //BEARER + ACCESSTOKEN
        RequestMessage.SetRequestUri(RequestUrl);
        RequestMessage.Method('GET');

        Clear(TempBlob);
        TempBlob.CreateInStream(ResponseStream);
        IsSuccessful := Client.Send(RequestMessage, ResponseMessage);

        // if not IsSuccessful then exit('An API call with the provided header has failed.');

        // if not ResponseMessage.IsSuccessStatusCode() then begin
        //     StatusCode := Format(ResponseMessage.HttpStatusCode()) + ' - ' + ResponseMessage.ReasonPhrase;
        //     exit('The request has failed with status code ' + StatusCode);
        // end;

        // if not ResponseMessage.Content().ReadAs(ResponseStream) then exit('The response message cannot be processed.');
        // if not JObject.ReadFrom(ResponseStream) then exit('Cannot read JSON response.');

        JObject.WriteTo(APICallResponseMessage);

        APICallResponseMessage := APICallResponseMessage.Replace(',', '\');
        ResponseMessage.Content().ReadAs(ResponseText);

        JsonToken.ReadFrom(ResponseText);
        JsonObject := JsonToken.AsObject;
        JsonObject.SelectToken('records', JsonToken);
        JsonArray := JsonToken.AsArray;
        for i := 0 to JsonArray.Count - 1 do begin
            JsonArray.Get(i, JsonToken);

            JsonObject := JsonToken.AsObject;
            TransferFrieghtshipmentfrommodduletoBC(JsonObject);

            //   Cname := Cname + ' ' + SelectJsonText(JsonObject, 'tracking_number');
            //   Message(Cname);
        end;
        exit(Cname);

    end;


    local procedure SelectJsonText(JsonObject: JsonObject; Path: Text): Text;
    var
        JsonToken: JsonToken;
    begin
        if not JsonObject.SelectToken(Path, JsonToken) then
            exit('null');

        exit(JsonToken.AsValue.AsText());
    end;

    local procedure SelectJsonInteger(JsonObject: JsonObject; Path: Text): Integer;
    var
        JsonToken: JsonToken;
    begin
        if not JsonObject.SelectToken(Path, JsonToken) then
            exit(0);

        exit(JsonToken.AsValue.AsInteger());
    end;


    procedure TransferFrieghtshipmentfrommodduletoBC(JsonObject: JsonObject)
    var
        FreightRec: Record "moddule_freights_shortened";
        //  JsonObject: JsonObject;
        Token: JsonToken;
        UnixValue: BigInteger;
        DateTimeValue: DateTime;
        TextValue: Text;
        JsonValue: JsonValue;
        IsoString: Text;
    begin
        FreightRec.Init();
        // ID
        JsonObject.Get('id', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."ID" := Token.AsValue().AsInteger();

        // Customer ID
        JsonObject.Get('customer_id', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Customer ID" := Token.AsValue().AsInteger();

        // Current Status
        JsonObject.Get('current_status', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Current Status" := Token.AsValue().AsText();

        // Origin
        JsonObject.Get('origin', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Origin" := Token.AsValue().AsText();

        // Destination
        JsonObject.Get('destination', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Destination" := Token.AsValue().AsText();

        // Freight Type
        JsonObject.Get('freight_type', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Freight Type" := Token.AsValue().AsText();

        // Last Check (Unix Timestamp)
        JsonObject.Get('last_check', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Last Check" := Token.AsValue().AsBigInteger();

        // Next Check (Unix Timestamp)
        JsonObject.Get('next_check', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Next Check" := Token.AsValue().AsBigInteger();

        // Carrier Code
        JsonObject.Get('carrier_code', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Carrier Code" := Token.AsValue().AsText();

        // Booking Code
        JsonObject.Get('booking_code', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Booking Code" := Token.AsValue().AsText();

        // Tracking Number
        JsonObject.Get('tracking_number', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Tracking Number" := Token.AsValue().AsText();

        // Destination Airport (nullable)
        if JsonObject.Get('destination_airport', Token) and not Token.AsValue().IsNull() then
            FreightRec."Destination Airport" := Token.AsValue().AsText();

        // Freight Forwarder (nullable)
        if JsonObject.Get('freight_forwarder', Token) and not Token.AsValue().IsNull() then
            FreightRec."Freight Forwarder" := Token.AsValue().AsText();

        // Custom Label (nullable)
        if JsonObject.Get('custom_label', Token) and not Token.AsValue().IsNull() then
            FreightRec."Custom Label" := Token.AsValue().AsText();

        // Delay Hours
        JsonObject.Get('delay_hours', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Delay Hours" := Token.AsValue().AsInteger();

        // // CO2e Result (nullable)
        // if JsonObject.Get('co2e_result', Token) and not Token.AsValue().IsNull() then
        //     FreightRec."CO2e Result" := Token.AsValue().AsDecimal();

        // Departure Time (ISO DateTime)
        JsonObject.Get('departure_time', Token);
        IF NOT Token.AsValue().IsNull then
            Evaluate(FreightRec."Departure Time", Token.AsValue().AsText());

        // Arrival Time
        JsonObject.Get('arrival_time', Token);
        IF NOT Token.AsValue().IsNull then
            Evaluate(FreightRec."Arrival Time", Token.AsValue().AsText());

        // Latest Carrier ETD
        JsonObject.Get('latest_carrier_etd', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Latest Carrier ETD" := Token.AsValue().AsDateTime();

        // Initial Carrier ETA
        JsonObject.Get('initial_carrier_eta', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Initial Carrier ETA" := Token.AsValue().AsDateTime();
        //  FreightRec."Initial Carrier ETA" := IsoUtcTextToDateTime(format(Token.AsValue()));

        // Latest Carrier ETA
        JsonObject.Get('latest_carrier_eta', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Latest Carrier ETA" := Token.AsValue().AsDateTime();
        // FreightRec."Latest Carrier ETA" := IsoUtcTextToDateTime(format(Token.AsValue()));

        // Predictive ETA
        JsonObject.Get('predictive_eta', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Predictive ETA" := Token.AsValue().AsDateTime();
        //  FreightRec."Predictive ETA" := IsoUtcTextToDateTime(format(Token.AsValue()));

        // Created At
        JsonObject.Get('created_at', Token);
        IF NOT Token.AsValue().IsNull then
            Evaluate(FreightRec."Created At", Token.AsValue().AsText());

        // Updated At
        JsonObject.Get('updated_at', Token);
        IF NOT Token.AsValue().IsNull then
            Evaluate(FreightRec."Updated At", Token.AsValue().AsText());

        // Carriage Type
        JsonObject.Get('carriage_type', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Carriage Type" := Token.AsValue().AsText();

        // Tracking Status
        JsonObject.Get('tracking_status', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Tracking Status" := Token.AsValue().AsText();

        // Is Stopped
        JsonObject.Get('is_stopped', Token);
        IF NOT Token.AsValue().IsNull then
            FreightRec."Is Stopped" := Token.AsValue().AsBoolean();

        FreightRec.Insert();
    end;


    procedure CheckifBLExists(BLNumber: Code[50])
    var
        ModduleFreights: Record moddule_freights_shortened;
    begin
        IF BLNumber = '' then
            exit;
        Clear(ModduleFreights);
        ModduleFreights.SetRange("Booking Code", BLNumber);
        IF NOT ModduleFreights.FindSet() then
            Error('BL number doesnt exist!!!');
    end;


    procedure sendmodduleshipmenttoBLCard(BLNumber: Code[50]; var BLRecord: Record "BL Details")
    var

        ModduleFreights: Record moddule_freights_shortened;
        ContainerDetails: Record "Container Details";
        FillBLDetailsOnce: Boolean;
        Freighttimeline: Record FreightsTimeline;
    begin
        IF BLNumber = '' then
            exit;
        clear(ModduleFreights);
        FillBLDetailsOnce := true;
        ModduleFreights.SetRange("Booking Code", BLNumber);
        if ModduleFreights.FindSet() then
            repeat
                IF FillBLDetailsOnce then begin
                    BLRecord.Liner := ModduleFreights."Carrier Code";
                    BLRecord.Origin := CopyStr(ModduleFreights.Origin, 1, 2);
                    BLRecord."Port of Loading" := ModduleFreights.Origin;
                    BLRecord."Port of Discharge" := ModduleFreights.Destination;
                    BLRecord.Modify(false);

                    FillBLDetailsOnce := false;
                end;

                Clear(ContainerDetails);
                ContainerDetails.Init();
                ContainerDetails."BL ID" := BLRecord."BL ID";
                ContainerDetails."Line No." := ModduleFreights.ID;
                ContainerDetails."SP ID" := Format(ModduleFreights.ID);
                ContainerDetails."Container ID" := ModduleFreights."Tracking Number";
                Clear(Freighttimeline);
                Freighttimeline.SetRange("Container ID", ContainerDetails."Container ID");
                Freighttimeline.SetRange(Type, 'event');
                Freighttimeline.SetRange(Description, 'Empty to shipper');
                IF Freighttimeline.FindFirst() then begin
                    ContainerDetails.FTR := DT2Date(Freighttimeline."Date Time");
                end;

                ContainerDetails.FTD := DT2Date(ModduleFreights."Departure Time");
                ContainerDetails.FTA := DT2Date(ModduleFreights."Arrival Time");
                ContainerDetails."Current Status" := ModduleFreights."Current Status";
                ContainerDetails.Insert();
            until ModduleFreights.Next() = 0;

    end;

    procedure CreateRequestFreightstimeline(Containers: Record "Container Details"): Text
    var
        TempBlob: Codeunit "Temp Blob";
        Client: HttpClient;
        RequestHeaders: HttpHeaders;
        MailContentHeaders: HttpHeaders;
        MailContent: HttpContent;
        ResponseMessage: HttpResponseMessage;
        RequestMessage: HttpRequestMessage;
        JObject: JsonObject;
        ResponseStream: InStream;
        APICallResponseMessage: Text;
        StatusCode: Text;
        IsSuccessful: Boolean;

        ResponseText: Text;
        //  Client: HttpClient;
        JsonArray: JsonArray;
        JsonToken: JsonToken;
        JsonObject: JsonObject;
        Cname: Text;
        i: Integer;
        RequestUrl: Text;
        AccessToken: Text;
    begin
        RequestUrl := 'https://backend.qa.platform.moddule.com/api/v2/freights/' + Format(Containers."Line No.") + '/timeline';
        AccessToken := 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NjYsInRva2VuX3R5cGUiOiJhcGkiLCJ0b2tlbl9zaWduYXR1cmUiOiIzNTFkNGI0NzBmZjcwY2U3MjRjZDg2ZjcyODc4NGYwNSJ9.CQjGx0rLZT2bPAU--BScUzyrP-LOZ4q0ncPghX6ZK6I';
        RequestMessage.GetHeaders(RequestHeaders);
        RequestHeaders.Add('X-Auth-Token', AccessToken);  //BEARER + ACCESSTOKEN
        RequestMessage.SetRequestUri(RequestUrl);
        RequestMessage.Method('GET');

        Clear(TempBlob);
        TempBlob.CreateInStream(ResponseStream);
        IsSuccessful := Client.Send(RequestMessage, ResponseMessage);

        // if not IsSuccessful then exit('An API call with the provided header has failed.');

        // if not ResponseMessage.IsSuccessStatusCode() then begin
        //     StatusCode := Format(ResponseMessage.HttpStatusCode()) + ' - ' + ResponseMessage.ReasonPhrase;
        //     exit('The request has failed with status code ' + StatusCode);
        // end;

        // if not ResponseMessage.Content().ReadAs(ResponseStream) then exit('The response message cannot be processed.');
        // if not JObject.ReadFrom(ResponseStream) then exit('Cannot read JSON response.');

        JObject.WriteTo(APICallResponseMessage);

        APICallResponseMessage := APICallResponseMessage.Replace(',', '\');
        ResponseMessage.Content().ReadAs(ResponseText);

        JsonToken.ReadFrom(ResponseText);
        JsonObject := JsonToken.AsObject;
        JsonObject.SelectToken('events', JsonToken);
        JsonArray := JsonToken.AsArray;
        for i := 0 to JsonArray.Count - 1 do begin
            JsonArray.Get(i, JsonToken);

            JsonObject := JsonToken.AsObject;
            TransferFrieghtshipmenttimelinefrommodduletoBC(JsonObject, i, Containers);

            //  Cname := Cname + ' ' + SelectJsonText(JsonObject, 'location');
            // Message(Cname);
        end;
        exit(Cname);

    end;


    procedure TransferFrieghtshipmenttimelinefrommodduletoBC(JsonObject: JsonObject; i: Integer; Containers: Record "Container Details")
    var
        FreightsTimelineRec: Record FreightsTimeline;
        //  JsonObject: JsonObject;
        Token: JsonToken;
        UnixValue: BigInteger;
        DateTimeValue: DateTime;
        TextValue: Text;
        JsonValue: JsonValue;
        IsoString: Text;
        BLRecord: Record "BL Details";
    begin
        FreightsTimelineRec.Init();
        //  FreightsTimelineRec.ID := Format(Containers."Line No.") + '_' + Format(i);
        FreightsTimelineRec."freights ID" := Containers."Line No.";
        Clear(BLRecord);
        BLRecord.Get(Containers."BL ID");
        FreightsTimelineRec."BL Number" := BLRecord."BL Number";
        FreightsTimelineRec."Container ID" := Containers."Container ID";
        // Type
        JsonObject.Get('type', Token);
        if not Token.AsValue().IsNull then
            FreightsTimelineRec.Type := Token.AsValue().AsText();

        // Date Time
        JsonObject.Get('datetime', Token);
        if not Token.AsValue().IsNull then
            FreightsTimelineRec."Date Time" := Token.AsValue().AsDateTime();

        // Location
        JsonObject.Get('location', Token);
        if not Token.AsValue().IsNull then
            FreightsTimelineRec.Location := Token.AsValue().AsText();

        // Subevent
        JsonObject.Get('subevent', Token);
        if not Token.AsValue().IsNull then
            FreightsTimelineRec.Subevent := Token.AsValue().AsText();

        // Description
        JsonObject.Get('description', Token);
        if not Token.AsValue().IsNull then
            FreightsTimelineRec.Description := Token.AsValue().AsText();

        // Carriage Type
        JsonObject.Get('carriage_type', Token);
        if not Token.AsValue().IsNull then
            FreightsTimelineRec."Carriage Type" := Token.AsValue().AsText();

        if StrPos(UpperCase(FreightsTimelineRec.Description), 'T/S') > 0 then begin
            FreightsTimelineRec.Transhipment := true;
        end;

        FreightsTimelineRec.Insert(true);
    end;



    var
        myInt: Integer;
}