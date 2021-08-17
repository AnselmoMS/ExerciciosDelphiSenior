unit Venda.Types.Helpers;

interface

uses
  Venda.Types,
  Venda.Interfaces;

type
   TEnumVendaTypesHelper = record helper for TEnumVendaTypes
    function this( aParent : iVenda ) : iVendaActions;
  end;

implementation

uses
  Venda.Actions.Aberta,
  Venda.Actions.Fechado,
  Venda.Actions.Totalizacao;

{ TEnumVendaTypesHelper }

function TEnumVendaTypesHelper.this(aParent: iVenda): iVendaActions;
begin
  case Self of
    vtAberta: Result := TVendaActionsAberta.New(aParent);
    vtFechada: Result := TVendaActionsFechado.New(aParent);
    vtTotalizacao: Result := TVendaActionsTotalizacao.New(aParent);
  end;
end;

end.
