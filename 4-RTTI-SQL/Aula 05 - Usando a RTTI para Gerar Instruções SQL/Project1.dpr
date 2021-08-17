program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Pessoa in 'Pessoa.pas',
  Produto in 'Produto.pas',
  Projeto.Interfaces in 'Projeto.Interfaces.pas',
  DAO.Generic in 'DAO.Generic.pas',
  DAO.RTTI in 'DAO.RTTI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
