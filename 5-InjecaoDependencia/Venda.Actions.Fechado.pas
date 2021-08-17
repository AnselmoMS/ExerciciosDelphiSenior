unit Venda.Actions.Fechado;

interface

uses
  Venda.Interfaces;

type
  TVendaActionsFechado = class(TInterfacedObject, iVendaActions)
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

function TVendaActionsFechado.&End: iVenda;
begin
  Result := FParent;
end;

constructor TVendaActionsFechado.Create(Parent : iVenda);
begin
  FParent := Parent;
end;

function TVendaActionsFechado.Desconto: iVendaActions;
begin
  Result := Self;
  raise Exception.Create('Não é possivel aplicar um desconto na venda fechada');
end;

destructor TVendaActionsFechado.Destroy;
begin

  inherited;
end;

class function TVendaActionsFechado.New(Parent : iVenda): iVendaActions;
begin
  Result := Self.Create(Parent);
end;

function TVendaActionsFechado.Vender: iVendaActions;
begin
  Result := Self;
  raise Exception.Create('Não é possível vender um Item com a Venda Fechada');
end;

end.
