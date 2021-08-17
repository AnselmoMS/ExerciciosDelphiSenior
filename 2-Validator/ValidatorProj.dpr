program ValidatorProj;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form2},
  Validator.Text.Properties.MaxLength in 'Validator.Text.Properties.MaxLength.pas',
  Validator.Text.Properties.MinLength in 'Validator.Text.Properties.MinLength.pas',
  Validator.Interfaces in 'Validator.Interfaces.pas',
  Validator in 'Validator.pas',
  Validator.Text.Properties.NonEmpty in 'Validator.Text.Properties.NonEmpty.pas',
  Validator.Text.Constraints in 'Validator.Text.Constraints.pas',
  Validator.Text.Properties in 'Validator.Text.Properties.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
