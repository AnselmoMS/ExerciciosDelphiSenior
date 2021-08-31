unit Model.Services.CEP;

interface

uses
  System.JSON,
  System.SysUtils,
  //
  Model.Services.Interfaces,
  Model.Services.Types,
  Model.Conections.Rest.Interfaces;

  type
  TCEPBuscadorRest = class(TinterfacedObject, ICEPBuscador)
  private
    [weak]
    FParent: IModelServices;
  protected
    FRestConnection : IRestConnection;
    function Buscador(_RestConnection: IRestConnection): ICEPBuscador; virtual;
  public
    constructor Create(_Parent: IModelServices);
    class function New(_Parent: IModelServices): ICEPBuscador;
    //
    procedure Consultar(UmCEP: string = '');
    //
    function ObterUltimaConsulta: TJsonValue;
    function ObterConsulta(UmCEP: string): TJsonValue;
    function AoObterResultado(_Evento: TMethodPointer): ICEPBuscador;
    function &End: IModelServices;
  end;

  TCEPBuscadorRestBuilder = class(TCEPBuscadorRest)
    constructor Create(_Parent: IModelServices);
    class function New(_Parent: IModelServices): ICEPBuscador;
  end;

implementation

uses
  System.Classes,
  Model.Conections.Rest,
  Model.Conections.Rest.RR4D, Model.Conections.Rest.CEP.Providers;

function TCEPBuscadorRest.AoObterResultado(_Evento: TMethodPointer): ICEPBuscador;
begin
  FRestConnection.OnAfterGet(_Evento);
end;

function TCEPBuscadorRest.Buscador(_RestConnection: IRestConnection): ICEPBuscador;
begin
  FRestConnection := _RestConnection;
  Result := Self;
end;

procedure TCEPBuscadorRest.Consultar(UmCEP: string);
begin
  FRestConnection.ParamValues([UmCEP]);
  FRestConnection.DoGet;
end;

function TCEPBuscadorRest.&End: IModelServices;
begin
  Result:= FParent;
end;

constructor TCEPBuscadorRest.Create(_Parent: IModelServices);
begin
  FParent:= _Parent;
end;

class function TCEPBuscadorRest.New(_Parent: IModelServices): ICEPBuscador;
begin
  Result := Self.Create(_Parent);
end;

function TCEPBuscadorRest.ObterConsulta(UmCEP: string): TJsonValue;
begin
  Consultar(UmCEP);
  Result := ObterUltimaConsulta;
end;

function TCEPBuscadorRest.ObterUltimaConsulta: TJsonValue;
begin
  Result := FRestConnection.GetLastValueJson;
end;

{ TCEPBuscadorBuilder }

constructor TCEPBuscadorRestBuilder.Create(_Parent: IModelServices);
begin
  inherited;
  Buscador(TRestConnection
            .New
              .Connector(TRestConnectorRR4D.New)
              .Providers([TRestConnectionViaCEP.New,
                          TRestConnectionAPICEP.New])
          );

end;

class function TCEPBuscadorRestBuilder.New(_Parent: IModelServices): ICEPBuscador;
begin
  Result := Self.Create(_Parent);
end;

end.
