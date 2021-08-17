unit CalcularPreco.Parametros;

interface

uses
  CalcularPreco.Interfaces;

type
  TCalculadoraDePrecoParametros = class(TInterfacedObject, ICalculadoraDePrecoParametros)
  private
    [weak]
    FCalculadoraDePreco: ICalculadoraDePreco;
    FPercent: Currency;
  public
    constructor Create(_ACalculadoraDePreco: ICalculadoraDePreco);
    function Percent(_APercent: Currency): ICalculadoraDePrecoParametros;
    function GetPercent: Currency;
    function &End: ICalculadoraDePreco;
  end;

implementation

{ TCalculadoraDePrecoParametros }

constructor TCalculadoraDePrecoParametros.Create(_ACalculadoraDePreco: ICalculadoraDePreco);
begin
  inherited Create;
  FCalculadoraDePreco := _ACalculadoraDePreco;
end;

function TCalculadoraDePrecoParametros.&End: ICalculadoraDePreco;
begin
  Result := FCalculadoraDePreco
end;

function TCalculadoraDePrecoParametros.GetPercent: Currency;
begin
  Result := FPercent;
end;

function TCalculadoraDePrecoParametros.Percent(_APercent: Currency): ICalculadoraDePrecoParametros;
begin
  FPercent := _APercent;
  Result := Self;
end;

end.
