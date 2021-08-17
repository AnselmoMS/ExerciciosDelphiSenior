unit CalcularPreco.CalculadoraDePrecoController;

interface

uses
  System.Classes, CalcularPreco.Controller.Interfaces;

type
  TCalculadoraDePrecoController = class//(TInterfacedObject, ICalculadoraDePrecoController)
  public
    class function CarregarModalidadesNomes(_AStrings: TStrings): ICalculadoraDePrecoController;
  end;

implementation

uses
  CalcularPreco.Tipos,
  CalcularPreco.Constantes;

{ TCalculadoraDePrecoController }

class function TCalculadoraDePrecoController.CarregarModalidadesNomes(_AStrings: TStrings): ICalculadoraDePrecoController;
var
  mp: TModalidadePreco;
begin
  _AStrings.Clear;
  for mp := Low(TModalidadePreco) to High(TModalidadePreco) do
    _AStrings.Add(MODALIDADE_PRECO_NOME[mp]);
end;

end.

