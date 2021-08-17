unit CalcularPreco.Calculadora;

interface

uses
  CalcularPreco.Interfaces,
  CalcularPreco.Tipos;

type
  TModalidadePrecoCalculadora = class(TInterfacedObject, ICalculadoraDePreco)
  private
    FOperacoes: ICalculadoraDePrecoOperacoes;
    FParametros: ICalculadoraDePrecoParametros;
    FModalidade: TModalidadePreco;
  protected
    procedure InicializarParametros; virtual; Abstract;
  public
    constructor Create(_AModalidade: TModalidadePreco);
    class function New(_AModalidade: TModalidadePreco) : ICalculadoraDePreco;

    function Parametros: ICalculadoraDePrecoParametros;
    function Operacoes: ICalculadoraDePrecoOperacoes;
    function Modalidade: TModalidadePreco;
  end;
  TModalidadePrecoCalculadoraClass = class of TModalidadePrecoCalculadora;

implementation

uses
  CalcularPreco.Parametros,
  CalcularPreco.Operacoes;

constructor TModalidadePrecoCalculadora.Create(_AModalidade: TModalidadePreco);
begin
  inherited Create;
  FModalidade := _AModalidade;
  InicializarParametros;
end;

function TModalidadePrecoCalculadora.Modalidade: TModalidadePreco;
begin
  Result := FModalidade;
end;

class function TModalidadePrecoCalculadora.New(_AModalidade: TModalidadePreco): ICalculadoraDePreco;
begin
  Result := Self.Create(_AModalidade)
end;

function TModalidadePrecoCalculadora.Operacoes: ICalculadoraDePrecoOperacoes;
begin
  if not Assigned(FOperacoes) then
    FOperacoes := TCalculadoraDePrecoOperacoes.Create(FParametros);

  Result:= FOperacoes;
end;

function TModalidadePrecoCalculadora.Parametros: ICalculadoraDePrecoParametros;
begin
  if not Assigned(FParametros) then
    FParametros := TCalculadoraDePrecoParametros.Create(Self);

  Result:= FParametros;
end;

end.
