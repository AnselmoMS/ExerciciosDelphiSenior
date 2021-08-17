program CalculaPrecosProjeto;

uses
  Vcl.Forms,
  CalcularPreco.Interfaces in 'CalcularPreco.Interfaces.pas',
  CalculaPrecos.Form in 'CalculaPrecos.Form.pas' {frmCalculaPreco},
  CalcularPreco.Tipos in 'CalcularPreco.Tipos.pas',
  CalcularPreco.Helper in 'CalcularPreco.Helper.pas',
  CalcularPreco.Calculadora in 'CalcularPreco.Calculadora.pas',
  CalcularPreco.Constantes in 'CalcularPreco.Constantes.pas',
  CalcularPreco.Parametros in 'CalcularPreco.Parametros.pas',
  CalcularPreco.Operacoes in 'CalcularPreco.Operacoes.pas',
  CalcularPreco.Calculadora.Atacado in 'CalcularPreco.Calculadora.Atacado.pas',
  CalcularPreco.Calculadora.Varejo in 'CalcularPreco.Calculadora.Varejo.pas',
  CalcularPreco.Calculadora.Feriado in 'CalcularPreco.Calculadora.Feriado.pas',
  CalcularPreco.Controller.Interfaces in 'CalcularPreco.Controller.Interfaces.pas',
  CalcularPreco.CalculadoraDePrecoController in 'CalcularPreco.CalculadoraDePrecoController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculaPreco, frmCalculaPreco);
  Application.CreateForm(TfrmCalculaPreco, frmCalculaPreco);
  Application.Run;
end.
