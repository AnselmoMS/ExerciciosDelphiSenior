unit Venda.Actions.Totalizacao;

interface

uses
  Venda.Interfaces;

type
  TVendaActionsTotalizacao = class(TInterfacedObject, iVendaActions)
    private
      [weak]
      FParent : iVenda;
    public
      constructor Create(Parent : iVenda);
      destructor Destroy; override;
      class function New(Parent : iVenda) : iVendaActions;
      function Vender : iVendaActions;
      function Desconto : iVendaActions;
      function &End : iVenda;
  end;

implementation

uses
  System.SysUtils;

{ TVendaActions<T> }

function TVendaActionsTotalizacao.&End: iVenda;
begin
  Result := FParent;
end;

constructor TVendaActionsTotalizacao.Create(Parent : iVenda);
begin
  FParent := Parent;
end;

function TVendaActionsTotalizacao.Desconto: iVendaActions;
begin
  Result := Self;
  FParent.Attributes.Display()('Desconto aplicado no total da venda');
end;

destructor TVendaActionsTotalizacao.Destroy;
begin

  inherited;
end;

class function TVendaActionsTotalizacao.New(Parent : iVenda): iVendaActions;
begin
  Result := Self.Create(Parent);
end;

function TVendaActionsTotalizacao.Vender: iVendaActions;
begin
  Result := Self;
  raise Exception.Create('Não é possível vender um Item com a Venda em Totalizacao');
end;

end.
