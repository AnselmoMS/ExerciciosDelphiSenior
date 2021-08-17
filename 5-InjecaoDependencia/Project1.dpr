program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Venda in 'Venda.pas',
  Venda.Interfaces in 'Venda.Interfaces.pas',
  Item.Attributes in 'Item.Attributes.pas',
  Venda.Actions.Aberta in 'Venda.Actions.Aberta.pas',
  Venda.Types in 'Venda.Types.pas',
  Venda.Actions.Fechado in 'Venda.Actions.Fechado.pas',
  Venda.Actions.Totalizacao in 'Venda.Actions.Totalizacao.pas',
  Venda.Types.Helpers in 'Venda.Types.Helpers.pas',
  Venda.Attributes in 'Venda.Attributes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
