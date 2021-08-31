unit uMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  System.JSON,
  //
  Controller.Interfaces,
  Controller;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    lblContador1: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
    FController: IController;
    procedure ConfigureController;
    procedure ExibirCEPRetornado;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Model.Validator;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  //FValidator.Changed(nil);
  FController.Services.CEP.Consultar(Edit1.Text);
end;

procedure TForm2.ConfigureController;
begin
  FController := TController.New;

  FController.
    Validator
      .EditLabel(Edit1, Label1)
        .NonEmpty
        .&End
      .MinLength(8)
        .&End
      .MaxLength(8);
       //.ErrorStyle - Cor default aplicada quando não personalizada
       //.ErrorMessage - Mensagem default aplicada quando não personalizada

  FController
    .Services
      .CEP
        .AoObterResultado(ExibirCEPRetornado);
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  lblContador1.Caption := Format('%d caracteres', [Length(Edit1.Text)]); // Teste de uso do OnChange Original
end;

procedure TForm2.Edit1Enter(Sender: TObject);
begin
  lblContador1.Visible := True;
end;

procedure TForm2.Edit1Exit(Sender: TObject);
begin
  lblContador1.Visible := False; //Teste de uso do OnExit Original
end;

procedure TForm2.ExibirCEPRetornado;
begin
  Memo1.Lines.Text := FController.Services.CEP.ObterUltimaConsulta.ToString;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ConfigureController;
end;

end.
