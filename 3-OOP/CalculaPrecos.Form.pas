unit CalculaPrecos.Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  CalcularPreco.Interfaces;

type
  TfrmCalculaPreco = class(TForm)
    ComboBox1: TComboBox;
    edtPrecoBase: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    FCalculadoraDePreco: ICalculadoraDePreco;
    procedure InicializarModalidades;
    function GetPrecoBase: Currency;
    procedure LoadCalculadora;
    procedure ExibirResultado(_AResult: Currency);
  public
    { Public declarations }

  end;

var
  frmCalculaPreco: TfrmCalculaPreco;

implementation

uses
  CalcularPreco.Tipos,
  CalcularPreco.CalculadoraDePrecoController,
  CalcularPreco.Helper,
  CalcularPreco.Constantes;

{$R *.dfm}

procedure TfrmCalculaPreco.Button1Click(Sender: TObject);
begin
  FCalculadoraDePreco
      .Operacoes
        .Calcular(GetPrecoBase)
        .&End
end;

procedure TfrmCalculaPreco.ComboBox1Change(Sender: TObject);
begin
  LoadCalculadora;
end;

procedure TfrmCalculaPreco.ExibirResultado(_AResult: Currency);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add( Format('%s %g%%', [MODALIDADE_PRECO_NOME[FCalculadoraDePreco.Modalidade], (FCalculadoraDePreco.Parametros.GetPercent * 100) ]) );
  Memo1.Lines.Add( CurrToStr(_AResult) );
end;

procedure TfrmCalculaPreco.FormCreate(Sender: TObject);
begin
  InicializarModalidades;
  ComboBox1.ItemIndex := 0;
  LoadCalculadora;
end;

function TfrmCalculaPreco.GetPrecoBase: Currency;
begin
  Result := StrToCurrDef(edtPrecoBase.text, 0)
end;

procedure TfrmCalculaPreco.InicializarModalidades;
begin
  TCalculadoraDePrecoController.CarregarModalidadesNomes(ComboBox1.Items)
end;

procedure TfrmCalculaPreco.LoadCalculadora;
begin
  FCalculadoraDePreco :=
    TModalidadePreco(ComboBox1.ItemIndex)
      .GetCalculadora
        .Operacoes
          .OnCalculated(ExibirResultado)
          .&End
        .&End;
end;

end.
