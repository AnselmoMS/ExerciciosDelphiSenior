unit Model.Conections.Rest.CEP.Providers;

interface

uses
  System.JSON,
  RESTRequest4D,
  System.SysUtils,
  Model.Services.Interfaces,
  Model.Conections.Rest.Interfaces,
  Model.Conections.Rest;

  type
    TRestConnectionViaCEP = class(TInterfacedObject, IRestProvider)
    public
      class function New: IRestProvider;
      function GetURLBase: String;
    end;

    TRestConnectionAPICEP = class(TInterfacedObject, IRestProvider)
    public
      class function New: IRestProvider;
      function GetURLBase: String;
    end;

implementation

{ TRestConnectionViaCEP }

function TRestConnectionViaCEP.GetURLBase: String;
begin
  Result := 'http://viacep.com.br/ws/%s/json/';
end;

class function TRestConnectionViaCEP.New: IRestProvider;
begin
  Result:= Self.Create;
end;

{ TRestConnectionAPICEP }

function TRestConnectionAPICEP.GetURLBase: String;
begin
  Result := 'https://ws.apicep.com/cep/%s.json'
end;

class function TRestConnectionAPICEP.New: IRestProvider;
begin
  Result:= Self.Create;
end;

end.
