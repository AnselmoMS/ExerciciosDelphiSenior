unit Exercicios.View.Interfaces.Forms.Validator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Exercicios.View.Interfaces,
  Exercicios.View.Validator;

type
  TfrmValidador = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigureValidator;
  public
    FValidator: IValidator;
    { Public declarations }
  end;

var
  frmValidador: TfrmValidador;

implementation

{$R *.dfm}

procedure TfrmValidador.Button1Click(Sender: TObject);
begin
  //ConfigureValidator
  FValidator.ValidateAll;
end;

procedure TfrmValidador.ConfigureValidator;
begin
  TValidator
    .New
      .EditLabel(Edit1, Label1)
        .NonEmpty
          .ErrorStyle(clgray)
          .ErrorMessage('Nome não pode ser vazio')
          {.&End
        .MinLength(50)
          .ErrorMessage('Limite mínimo de 5 caracteres permitido')
          .&End
        .MaxLength(100)
          .ErrorMessage('Nome excedeu o limite de 25 caracteres permitido')}
          .&End
        .ValidateAll
        .DisplayErrors;
end;

procedure TfrmValidador.FormCreate(Sender: TObject);
begin
  FValidator := TValidator.Create;

  //ConfigureValidator;
  FValidator
    .EditLabel(Edit1, Label1)
      .NonEmpty
        .ErrorStyle(clgray)
        .ErrorMessage('Nome não pode ser vazio')
        {.&End
      .MinLength(50)
        .ErrorMessage('Limite mínimo de 5 caracteres permitido')
        .&End
      .MaxLength(100)
        .ErrorMessage('Nome excedeu o limite de 25 caracteres permitido')}

end;

end.
