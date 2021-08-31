program ValidatorCEP;

uses
  Vcl.Forms,
  Model.Validator.Interfaces in 'Source\Model\Validator\Model.Validator.Interfaces.pas',
  Model.Validator in 'Source\Model\Validator\Model.Validator.pas',
  Model.Validator.Text.Constraints in 'Source\Model\Validator\Model.Validator.Text.Constraints.pas',
  Model.Validator.Text.Properties.MaxLength in 'Source\Model\Validator\Model.Validator.Text.Properties.MaxLength.pas',
  Model.Validator.Text.Properties.MinLength in 'Source\Model\Validator\Model.Validator.Text.Properties.MinLength.pas',
  Model.Validator.Text.Properties.NonEmpty in 'Source\Model\Validator\Model.Validator.Text.Properties.NonEmpty.pas',
  Model.Validator.Text.Properties in 'Source\Model\Validator\Model.Validator.Text.Properties.pas',
  uMain in 'Source\View\uMain.pas' {Form2},
  Controller in 'Source\Controller\Controller.pas',
  Controller.Interfaces in 'Source\Controller\Controller.Interfaces.pas',
  Model.Services.CEP in 'Source\Model\Services\Model.Services.CEP.pas',
  Model.Services.Interfaces in 'Source\Model\Services\Model.Services.Interfaces.pas',
  Model.Services.Types in 'Source\Model\Services\Model.Services.Types.pas',
  Model.Services in 'Source\Model\Services\Model.Services.pas',
  Model.Conections.Rest.CEP.Providers in 'Source\Model\Connections\Model.Conections.Rest.CEP.Providers.pas',
  Model.Conections.Rest in 'Source\Model\Connections\Model.Conections.Rest.pas',
  Model.Conections.Rest.Interfaces in 'Source\Model\Connections\Model.Conections.Rest.Interfaces.pas',
  Model.Conections.Rest.RR4D in 'Source\Model\Connections\Model.Conections.Rest.RR4D.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
