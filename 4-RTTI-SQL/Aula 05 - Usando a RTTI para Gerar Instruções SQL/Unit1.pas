unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Projeto.Interfaces, Pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Display( aValue : String );
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Produto,
  DAO.Generic;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  iDAO : iDAOInterface<TPessoa>;
begin
  iDAO := TDAOGeneric<TPessoa>.New;
  iDAO.Display(Display);
  iDAO.This.Nome := 'Thulio';
  iDAO.This.Sobrenome := 'Bittencourt';
  iDAO.This.Telefone := '2154875487';
  iDAO.Insert;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  iDAO : iDAOInterface<TProduto>;
begin
  iDAO := TDAOGeneric<TProduto>.New;
  iDAO.Display(Display);
  iDAO.This.Descricao := 'Arroz Branco';
  iDAO.This.Valor := 10;
  iDAO.Insert;
end;

procedure TForm1.Display(aValue: String);
begin
  Memo1.Lines.Add(aValue);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
