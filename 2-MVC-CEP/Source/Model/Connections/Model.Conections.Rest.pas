unit Model.Conections.Rest;

interface
uses
  System.JSON,
  System.SysUtils,
  Model.Conections.Rest.Interfaces;

type
  TRestConnection = class (TInterfacedObject, IRestConnection)
  private
  protected
    FParamsValues: array of String;
    FProviders: array of IRestProvider;
    FURLBase: String;
    FOnAfterGet: TProc;
    FConnector: IRestConnector;
  public
    class function New: IRestConnection;
    function Connector(_Connector: IRestConnector): IRestConnection;
    function Providers(_Providers: array of IRestProvider): IRestConnection;
    //
    function DoGet: IRestConnection; virtual;
    function GetLastValueJson: TJsonValue;
    function OnAfterGet(_Event: TProc): IRestConnection;
    function ParamValues(_ParamValues: array of string): IRestConnection;
    function URLBase(_URL: string): IRestConnection;
  end;

implementation

uses
  System.Classes;

{ TRestConnection }

function TRestConnection.Connector(_Connector: IRestConnector): IRestConnection;
begin
  FConnector := _Connector;
  Result := Self;
end;

function TRestConnection.DoGet: IRestConnection;
begin
  TThread.CreateAnonymousThread(
  procedure
  begin
    FConnector.URLBase(FProviders[0].GetURLBase);//fazer loop em todos
    FConnector.ParamValues(FParamsValues[0]);
    FConnector.Get;//

    TThread.Synchronize(TThread.CurrentThread,
                        procedure
                        begin
                          if Assigned(FOnAfterGet) then
                            FOnAfterGet();
                        end);
  end).Start;

  Result := Self;
end;

function TRestConnection.GetLastValueJson: TJsonValue;
begin
  Result := FConnector.GetResponseJson
end;

class function TRestConnection.New: IRestConnection;
begin
  Result := Self.Create;
end;

function TRestConnection.OnAfterGet(_Event: TProc): IRestConnection;
begin
  FOnAfterGet:= _Event;
  Result := Self;
end;

function TRestConnection.ParamValues(_ParamValues: array of string): IRestConnection;
var
  I: Integer;
begin
  SetLength(FParamsValues, Length(_ParamValues));
  for I := 0 to Pred(Length(_ParamValues)) do
    FParamsValues[I] := _ParamValues[I];

  Result := Self;
end;

function TRestConnection.Providers(_Providers: array of IRestProvider): IRestConnection;
var
  I: Integer;
begin
  SetLength(FProviders, length(_Providers));
  for I := 0 to Pred(Length(_Providers)) do
    FProviders[I] := _Providers[I];

  Result := Self;
end;

function TRestConnection.URLBase(_URL: string): IRestConnection;
begin
  FURLBase:= _URL;

  Result:= Self;
end;

end.
