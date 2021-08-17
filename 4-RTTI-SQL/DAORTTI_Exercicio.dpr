program DAORTTI_Exercicio;

uses
  //fastmm4,
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Pessoa in 'Pessoa.pas',
  Produto in 'Produto.pas',
  Projeto.Interfaces in 'Projeto.Interfaces.pas',
  DAO.Generic in 'DAO.Generic.pas',
  DAO.RTTI in 'DAO.RTTI.pas',
  DAO.RTTI.Finder in 'DAO.RTTI.Finder.pas',
  DAO.RTTI.Types in 'DAO.RTTI.Types.pas',
  DAO.RTTI.StringUtils in 'DAO.RTTI.StringUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
