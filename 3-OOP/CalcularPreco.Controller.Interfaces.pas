unit CalcularPreco.Controller.Interfaces;

interface

uses
  System.Classes;

type
  ICalculadoraDePrecoController = interface
    ['{A5F34C7D-237A-4ECA-923C-2DC2879FA995}']
    function CarregarModalidadesNomes(_AStrings: TStrings): ICalculadoraDePrecoController;
  end;

implementation

end.
