unit Produto;

interface

uses
  DAO.RTTI,
  DAO.RTTI.Types;

type
  [Table('PRODUTO')]
  TProduto = class
    private
    FValor: Currency;
    FDescricao: String;
    FID: Integer;
    procedure SetDescricao(const Value: String);
    procedure SetValor(const Value: Currency);
    public
      [PKey,
      FieldType(tpInteger)]
      property ID : Integer read FID write FID;

      [UpdateField,
      FieldType(tpString)]
      property Descricao : String read FDescricao write SetDescricao;

      [UpdateField,
      FieldType(tpCurrency)]
      property Valor : Currency read FValor write SetValor;
  end;

implementation

{ TProduto }

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TProduto.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.
