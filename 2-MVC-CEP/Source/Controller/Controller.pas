unit Controller;

interface

uses
  Controller.Interfaces,
  Model.Validator.Interfaces,
  Model.Validator,
  Model.Services.Interfaces,
  Model.Services;

  type
    TController = class(TInterfacedObject, IController)
      private
        FServices: IModelServices;
        FValidator: IModelValidator;
      public
        class function New: IController;
        //
        function Validator: IModelValidator; virtual;
        function Services: IModelServices; virtual;
    end;

implementation

{ TController }

class function TController.New: IController;
begin
  Result := Self.Create
end;

function TController.Services: IModelServices;
begin
  if not Assigned(FServices) then
    FServices := TModelServices.New;
  Result := FServices;
end;

function TController.Validator: IModelValidator;
begin
  if not Assigned(FValidator) then
    FValidator := TValidator.New;
  Result := FValidator;
end;

end.
