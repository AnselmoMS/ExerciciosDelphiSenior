unit Venda.Interfaces;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  Venda.Types;

type
  iVenda = interface;
  iVendaAttributes<iVenda> = interface;

  iItemAttributes<Ivenda> = interface;
  iVendaActions = interface;


  iVenda = interface
    ['{6888BF2E-F7ED-4096-BA4D-370CDA773CE4}']
    function Attributes : iVendaAttributes<iVenda>;
    function Actions : iVendaActions;
  end;

  iVendaAttributes<iVenda> = interface
    ['{000C0F59-AFB4-476C-80B7-3A4B9EFA49DF}']
    function State ( aValue : TEnumVendaTypes ): iVendaAttributes<iVenda>; overload;
    function State : TEnumVendaTypes; overload;
    function Display ( aValue : TProc<String> ): iVendaAttributes<iVenda>; overload;
    function Display : TProc<String>; overload;
    function ListItens : TList<iItemAttributes<IVenda>>;
    function AddItem: iItemAttributes<IVenda>;
    function &End : iVenda;
  end;


  iVendaActions = interface
    ['{F9DE7E01-9FFA-4F04-B0BE-6F3E9C943F46}']
    function Vender : iVendaActions;
    function Desconto : iVendaActions;
    function &End : iVenda;
  end;

  iItemAttributes<IVenda> = interface
    ['{DE07793A-91DD-4293-A36D-68EE368AEAAC}']
    function Codigo ( aValue : Integer ) : iItemAttributes<IVenda>; overload;
    function Codigo : Integer; overload;
    function Qnt ( aValue : Currency ) : iItemAttributes<IVenda>; overload;
    function Qnt : Currency; overload;
    function PrecoUnitario ( aValue : Currency ) : iItemAttributes<IVenda>; overload;
    function PrecoUnitario : Currency; overload;
    function Display ( aValue : TProc<String> ) : iItemAttributes<IVenda>; overload;
    function Display : TProc<String>; overload;
    function &End : IVenda;
  end;



implementation

end.
