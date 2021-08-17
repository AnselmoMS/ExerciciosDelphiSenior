unit CalcularPreco.Calculadora.Feriado;

interface

uses
  CalcularPreco.Calculadora;

type
  TModalidadePrecoCalculadoraFeriado = class(TModalidadePrecoCalculadora)
  private
  protected
    procedure InicializarParametros; override;
  public

  end;

implementation

{ TModalidadePrecoCalculadoraAtacado }

procedure TModalidadePrecoCalculadoraFeriado.InicializarParametros;
begin
  inherited;
  Parametros.Percent(0.2);
end;

end.

