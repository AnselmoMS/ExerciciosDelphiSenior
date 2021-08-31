unit Controller.Interfaces;

interface

uses
  Model.Services.Interfaces,
  Model.Validator.Interfaces;

type
  IController = interface
    ['{DF8EBBAA-ED41-476F-9BFE-AA24155C0D07}']
    function Services: IModelServices;
    function Validator: IModelValidator;
  end;

implementation

end.
