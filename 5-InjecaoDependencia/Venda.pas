unit Venda;

interface

uses
  Venda.Interfaces,
  System.Generics.Collections,
  System.SysUtils,
  Venda.Types,
  Venda.Types.Helpers;

type
  TVenda = class(TInterfacedObject, iVenda)
    private
      FAttributes: iVendaAttributes<iVenda>;
      FActions : iVendaActions;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iVenda;
      function Actions : iVendaActions;
      function Attributes : iVendaAttributes<iVenda>;
  end;

implementation

uses
  Item.Attributes,
  Venda.Actions.Aberta,
  Venda.Attributes;

{ TVenda }

function TVenda.Actions: iVendaActions;
begin
  FActions := FAttributes.State.this(Self);
  Result := FActions;
end;

function TVenda.Attributes: iVendaAttributes<iVenda>;
begin
  Result := FAttributes
end;

constructor TVenda.Create;
begin
  FAttributes := TVendaAttributes.Create(Self);
end;

destructor TVenda.Destroy;
begin
  inherited;
end;

class function TVenda.New: iVenda;
begin
  Result := Self.Create;
end;

end.
