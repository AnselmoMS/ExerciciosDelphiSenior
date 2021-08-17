unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Validator.Interfaces;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    lblContador1: TLabel;
    lblContador2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
    FValidator: IValidator;
    procedure ConfigureValidator;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Validator;



{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  FValidator.Changed(nil);
end;

procedure TForm2.ConfigureValidator;
begin
  FValidator :=
    TValidator
      .New
       .EditLabel(Edit1, Label1)
         .NonEmpty
           .&End
         .MinLength(5)
           .ErrorMessage('Limite mínimo de 5 caracteres permitido')
           .&End
         .MaxLength(15)
           .ErrorStyle(clred)
           .ErrorMessage('Nome excedeu o limite de 15 caracteres permitido')
           .&End
        .&End
        .EditLabel(Edit2, Label2)
          .NonEmpty
            .ErrorStyle(clred)
            .&End
          .MaxLength(20)
            .ErrorMessage('Nome excedeu o limite de 20 caracteres permitido')
            .EndAll;

  //.ErrorStyle - Cor default aplicada quando não personalizada
  //.ErrorMessage - Mensagem default aplicada quando não personalizada
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

procedure TForm2.Edit2Change(Sender: TObject);
begin
  lblContador2.Caption := Format('%d caracteres', [Length(Edit2.Text)]); // Teste de uso do OnChange Original
end;

procedure TForm2.Edit2Enter(Sender: TObject);
begin
  lblContador2.Visible := True;
end;

procedure TForm2.Edit2Exit(Sender: TObject);
begin
  lblContador2.Visible := False; //Teste de uso do OnExit Original
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ConfigureValidator;
end;

end.
