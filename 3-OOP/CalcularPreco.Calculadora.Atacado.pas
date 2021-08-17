unit CalcularPreco.Calculadora.Atacado;

interface

uses
  CalcularPreco.Calculadora;

type
  TModalidadePrecoCalculadoraAtacado = class(TModalidadePrecoCalculadora)
  private
  protected
    procedure InicializarParametros; override;
  public

  end;

implementation

{ TModalidadePrecoCalculadoraAtacado }

procedure TModalidadePrecoCalculadoraAtacado.InicializarParametros;
begin
  inherited;
  Parametros.Percent(-0.20);
end;

end.
