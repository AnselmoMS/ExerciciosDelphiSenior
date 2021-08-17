unit CalcularPreco.Helper;

interface

uses
  CalcularPreco.Tipos,
  CalcularPreco.Interfaces;

type
  TModalidadePrecoHelper = record Helper for TModalidadePreco
    function GetCalculadora : ICalculadoraDePreco;
  end;

implementation

uses
  CalcularPreco.Constantes;

{ TModalidadePrecoHelper }

function TModalidadePrecoHelper.GetCalculadora: ICalculadoraDePreco;
begin
  Result:= MODALIDADE_PRECO_CLASS[Self].Create(Self);
end;

end.
