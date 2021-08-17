unit CalcularPreco.Operacoes;

interface

uses
  CalcularPreco.Interfaces, System.SysUtils;

type
  TCalculadoraDePrecoOperacoes = class(TInterfacedObject, ICalculadoraDePrecoOperacoes)
  private
    [weak]
    FParametros: ICalculadoraDePrecoParametros;
    FOnCalculated: TProc<Currency>;
    FExibirProcedure: TProc<string>;
  public
    constructor Create(_AParametros: ICalculadoraDePrecoParametros);
    function Calcular(_PrecoBase: Currency): ICalculadoraDePrecoOperacoes;
    function &End: ICalculadoraDePrecoParametros;
    function ExibirResultado(_AProcStr: TProc<string>): ICalculadoraDePrecoOperacoes;

    function OnCalculated(_AProc: TProc<Currency>): ICalculadoraDePrecoOperacoes;
    procedure DoCalculated(AResultValue: Currency);
  end;

implementation

{ TCalculadoraDePrecoOperacoes }

function TCalculadoraDePrecoOperacoes.Calcular(_PrecoBase: Currency): ICalculadoraDePrecoOperacoes;
var
  ResultValue: Currency;
begin
  ResultValue := _Precobase + (_PrecoBase * FParametros.GetPercent);
  DoCalculated(ResultValue);
  Result := Self;
end;

constructor TCalculadoraDePrecoOperacoes.Create(_AParametros: ICalculadoraDePrecoParametros);
begin
  inherited Create;
  FParametros := _AParametros;
end;

procedure TCalculadoraDePrecoOperacoes.DoCalculated(AResultValue: Currency);
begin
  if Assigned(FOnCalculated) then
    FOnCalculated(AResultValue);
end;

function TCalculadoraDePrecoOperacoes.&End: ICalculadoraDePrecoParametros;
begin
  Result := FParametros
end;

function TCalculadoraDePrecoOperacoes.ExibirResultado(_AProcStr: TProc<string>): ICalculadoraDePrecoOperacoes;
begin
  FExibirProcedure := _AProcStr;
  Result := Self;
end;

function TCalculadoraDePrecoOperacoes.OnCalculated(_AProc: TProc<Currency>): ICalculadoraDePrecoOperacoes;
begin
  FOnCalculated := _AProc;
  Result := Self;
end;

end.

