unit Pessoa;

interface

uses
  DAO.RTTI;

type
  [TableName('TAB_PESSOA')]
  TPessoa = class
    private
    FSobrenome: String;
    FNome: String;
    FTelefone: String;
    procedure SetNome(const Value: String);
    procedure SetSobrenome(const Value: String);
    procedure SetTelefone(const Value: String);
    public
      [FieldType(tpString)]
      property Nome : String read FNome write SetNome;
      [FieldType(tpString)]
      property Sobrenome : String read FSobrenome write SetSobrenome;
      [FieldType(tpString)]
      property Telefone : String read FTelefone write SetTelefone;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TPessoa.SetSobrenome(const Value: String);
begin
  FSobrenome := Value;
end;

procedure TPessoa.SetTelefone(const Value: String);
begin
  FTelefone := Value;
end;

end.
