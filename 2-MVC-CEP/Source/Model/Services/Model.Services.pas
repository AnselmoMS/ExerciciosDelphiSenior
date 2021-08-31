unit Model.Services;

interface

uses
  Model.Services.Interfaces,
  Model.Services.CEP;

type
  TModelServices = class(TinterfacedObject, IModelServices)
  private
    FCEP: ICEPBuscador;
  public
    class function New: IModelServices;
    //
    function CEP: ICEPBuscador;
    function &End: IModelServices;
  end;

implementation

{ TModelServices }

function TModelServices.CEP: ICEPBuscador;
begin
  if not Assigned(FCEP) then
    FCEP := TCEPBuscadorRestBuilder.New(Self);

  Result := FCEP;
end;

function TModelServices.&End: IModelServices;
begin
  Result := Self;
end;

class function TModelServices.New: IModelServices;
begin
  Result := Self.Create;
end;

end.
