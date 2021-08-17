unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Math;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    btfrmValidador: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}


function ObterQuadrado(numero: Word): Word;
begin
  Result := numero * numero
end;

function ObterPotencia(numero: integer; potencia: Word): Single;
begin
  Result := Power(numero, potencia)
end;


procedure TfrmMain.Button1Click(Sender: TObject);
const
  NUMEROS : TArray<Word> = [1,2,3,4,5];
var
  retorno: TArray<Word>;
  I: Word;

  msg: string;
begin
  SetLength(retorno, Length(NUMEROS));

  for I in NUMEROS do
    msg:= msg + #13 + 'Quadrado de ' + I.ToString + ' é ' + ObterQuadrado(I).ToString;

  ShowMessage(msg)
end;

procedure TfrmMain.Button2Click(Sender: TObject);
const
  numero = 10;
  potencia = 2;
begin
  ShowMessage( numero.ToString + ' elevado a ' + potencia.ToString + ' = ' + ObterPotencia(numero, potencia).ToString  );
end;

procedure TfrmMain.Button3Click(Sender: TObject);
const
  numero = 32;
begin
  //
end;

procedure TfrmMain.Button4Click(Sender: TObject);
  function IntegerInArray(const _Valor: Integer; _Lista: array of integer): Boolean;
  var
    I: Integer;
  begin
    for I := Low(_Lista) to High(_Lista) do
        if I = _Valor then
          Exit(True);

    Result := False;
  end;

  procedure AdicionarLista(var _ListaUnificada: TArray<Integer>; _NovaLista: TArray<Integer>);
  var
    I: Integer;
  begin
    for I in _NovaLista do
      if not IntegerInArray(I, _ListaUnificada) then
        _ListaUnificada:= _ListaUnificada + [I];
  end;

const
  M = 0;
  N = 1;
  listaM : TArray<Integer> = [M,N,M,N,N];
  listaN : TArray<Integer> = [N,M,M,N,M];

var
  lista_unificada: TArray<Integer>;
  indexUnificado: integer;
  msg: String;
begin
  AdicionarLista(lista_unificada, listaM);
  AdicionarLista(lista_unificada, listaN);

  for indexUnificado in lista_unificada do
    msg:= msg + #13 + indexUnificado.ToString;

  ShowMessage('Lista Unificada'#13 + msg);
end;

end.
