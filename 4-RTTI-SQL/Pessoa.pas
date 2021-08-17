unit Pessoa;

interface

uses
  DAO.RTTI,
  DAO.RTTI.Types;

type
  [Table('PESSOA')]
  TPessoa = class
    private
    FSobrenome: String;
    FNome: String;
    FTelefone: String;
    FID: Integer;
    procedure SetID(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetSobrenome(const Value: String);
    procedure SetTelefone(const Value: String);
    public
      [PKey,
       FieldType(tpInteger)]
      property ID : Integer read FID write SetID;

      [UpdateField,
      FieldType(tpString)]
      property Nome : String read FNome write SetNome;

      [UpdateField,
      FieldType(tpString)]
      property Sobrenome : String read FSobrenome write SetSobrenome;

      [UpdateField,
      FieldType(tpString)]
      property Telefone : String read FTelefone write SetTelefone;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetID(const Value: Integer);
begin
  FID := Value;
end;

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
