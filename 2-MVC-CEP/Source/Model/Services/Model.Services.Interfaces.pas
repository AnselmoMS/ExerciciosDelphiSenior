unit Model.Services.Interfaces;

interface

uses
  System.JSON,
  Model.Services.Types,
  Model.Conections.Rest.Interfaces,
  System.SysUtils;

type
  ICEPBuscador = interface;

  IModelServices = interface
    ['{EF446D2F-1FFA-4EF1-A68C-7806941EDC03}']
    function CEP: ICEPBuscador;
    function &End: IModelServices;
  end;

  ICEPBuscador = interface
    ['{FB8262DE-1C3C-4289-9EDA-D57A92617097}']
    procedure Consultar(UmCEP: string = '');
    //
    function ObterUltimaConsulta: TJsonValue;
    function ObterConsulta(UmCEP: string): TJsonValue;
    function AoObterResultado(_Evento: TMethodPointer): ICEPBuscador;
    function &End: IModelServices;
  end;

implementation

end.
