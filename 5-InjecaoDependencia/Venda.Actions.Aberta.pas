unit Venda.Actions.Aberta;

interface

uses
  Venda.Interfaces;

type
  TVendaActionsAberta = class(TInterfacedObject, iVendaActions)
    private
      [weak]
      FVenda : iVenda;
    public
      constructor Create(AVenda : iVenda);
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

function TVendaActionsAberta.&End: iVenda;
begin
  Result := FVenda;
end;

constructor TVendaActionsAberta.Create(AVenda : iVenda);
begin
  FVenda := AVenda;
end;

function TVendaActionsAberta.Desconto: iVendaActions;
begin
  Result := Self;

  if FVenda.Attributes.ListItens.Count <= 0 then
    raise Exception.Create('Não existe item para aplicar o desconto');

  FVenda.Attributes.Display()('Desconto Aplicado com Sucesso');
end;

destructor TVendaActionsAberta.Destroy;
begin

  inherited;
end;

class function TVendaActionsAberta.New(Parent : iVenda): iVendaActions;
begin
  Result := Self.Create(Parent);
end;

function TVendaActionsAberta.Vender: iVendaActions;
var
  I: Integer;
  Msg : String;
begin
  Result := Self;
  Msg := '';
  for I := 0 to Pred(FVenda.Attributes.ListItens.Count) do
  begin
    Msg := Msg +
      Format('Produto %d - Preço Unit R$ %f - Qnt %f - Total %f',
      [
        FVenda.Attributes.ListItens[I].Codigo,
        FVenda.Attributes.ListItens[I].PrecoUnitario,
        FVenda.Attributes.ListItens[I].Qnt,
        (FVenda.Attributes.ListItens[I].PrecoUnitario * FVenda.Attributes.ListItens[I].Qnt)
      ]) + #13 + #10;
  end;
  FVenda.Attributes.Display()(Msg);
end;

end.
