unit Model.Conections.Rest.RR4D;

interface
uses
  Model.Conections.Rest,
  Model.Conections.Rest.Interfaces,
  RESTRequest4D,
  System.SysUtils,
  System.JSON;

type
  TRestConnectorRR4D = class(TinterfacedObject, IRestConnector)
  private
    FResponse: IResponse;
    FRequest: IRequest;
    FBaseURL: String;
    FParamValues: array of string;
  public
    constructor Create;
    class function New: IRestConnector;
    function URLBase(_URL: string): IRestConnector;
    function ParamValues(_Values: array of string): IRestConnector;
    function Get: IRestConnector;
    function GetResponseJson: TJsonValue;
  end;

implementation

constructor TRestConnectorRR4D.Create;
begin
  FRequest := TRequest
                .New
                  .Accept('application/json');
end;

function TRestConnectorRR4D.Get: IRestConnector;
  var
  LURLFinal: string;
begin
  FRequest.BaseURL(FBaseURL);
  LURLFinal:= Format(FBaseURL, [FParamValues[0]]);

  FResponse := FRequest
                   .BaseURL(LURLFinal)
                   .Get;

  Result := Self;
end;

function TRestConnectorRR4D.GetResponseJson: TJsonValue;
begin
  Result := TJSonObject.ParseJSONValue('');

  if FResponse.StatusCode = 200 then
    //Result:= := TJSonObject.ParseJSONValue(LResponse.Content);
    Result:= FResponse.JSONValue;
end;

class function TRestConnectorRR4D.New: IRestConnector;
begin
  Result := Self.Create;
end;

function TRestConnectorRR4D.ParamValues(_Values: array of string): IRestConnector;
var
  I: Integer;
begin
  SetLength(FParamValues, Length(_Values));
  for I := 0 to Pred(Length(_Values)) do
    FParamValues[I] := _Values[I];

  Result := Self;
end;

function TRestConnectorRR4D.URLBase(_URL: string): IRestConnector;
begin
  FBaseURL := _URL;
  Result := Self;
end;

end.
