unit CalcularPreco.Calculadora.Varejo;

interface

uses
  CalcularPreco.Calculadora;

type
  TModalidadePrecoCalculadoraVarejo = class(TModalidadePrecoCalculadora)
  private
  protected
    procedure InicializarParametros; override;
  public

  end;

implementation

{ TModalidadePrecoCalculadoraAtacado }

procedure TModalidadePrecoCalculadoraVarejo.InicializarParametros;
begin
  inherited;
  Parametros.Percent(0.15);
end;

end.

