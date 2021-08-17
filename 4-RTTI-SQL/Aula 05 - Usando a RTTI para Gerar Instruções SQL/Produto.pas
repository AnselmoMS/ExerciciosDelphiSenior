unit Produto;

interface

uses
  DAO.RTTI;

type
  [TableName('TAB_PRODUTO')]
  TProduto = class
    private
    FValor: Currency;
    FDescricao: String;
    procedure SetDescricao(const Value: String);
    procedure SetValor(const Value: Currency);
    public
      [FieldType(tpString)]
      property Descricao : String read FDescricao write SetDescricao;
      [FieldType(tpCurrency)]
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
