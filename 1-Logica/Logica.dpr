program Logica;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  Exercicios.View.Interfaces in 'View\Exercicios.View.Interfaces.pas',
  Exercicios.View.Validator in 'View\Exercicios.View.Validator.pas',
  Exercicios.View.Validator.Text.Constraints in 'View\Exercicios.View.Validator.Text.Constraints.pas',
  Exercicios.View.Validator.Text.Properties in 'View\Exercicios.View.Validator.Text.Properties.pas',
  Exercicios.View.Validator.Text.Actions.NonEmpty in 'View\Exercicios.View.Validator.Text.Actions.NonEmpty.pas',
  Exercicios.View.Forms.CalcularPreco in 'View\Exercicios.View.Forms.CalcularPreco.pas' {Form1},
  Exercicios.CalcularPreco.Interfaces in 'View\Exercicios.CalcularPreco.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
