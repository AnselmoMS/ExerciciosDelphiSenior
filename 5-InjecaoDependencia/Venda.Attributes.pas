unit Venda.Attributes;

interface

uses
  Venda.Interfaces,
  Venda.Types,
  System.SysUtils,
  System.Classes,
  System.Generics.Collections;

type
  TVendaAttributes = class(TinterfacedObject, IVendaAttributes<IVenda>)
  private
    [weak]
    FParent: IVenda;
    FDisplay: TProc<string>;
    FListItens: TList<iItemAttributes<iVenda>>;
    FState: TEnumVendaTypes;
  public
    constructor Create(AParent: IVenda);
    destructor Destroy; override;

    function AddItem: iItemAttributes<IVenda>;
    function State ( aValue : TEnumVendaTypes ) : IVendaAttributes<IVenda>; overload;
    function State : TEnumVendaTypes; overload;
    function Display ( aValue : TProc<String> ) : IVendaAttributes<IVenda>; overload;
    function Display : TProc<String>; overload;
    function ListItens : TList<iItemAttributes<iVenda>>;
    function &End : iVenda;
  end;

implementation

uses
  Item.Attributes;

{ TVendaAttributes }

function TVendaAttributes.&End: iVenda;
begin
  Result := FParent
end;

function TVendaAttributes.AddItem: iItemAttributes<IVenda>;
begin
  Result := FListItens[FListItens.Add(TItemAttributes<IVenda>.Create(Fparent))];
end;

constructor TVendaAttributes.Create(AParent: IVenda);
begin
  inherited Create;
  FParent := AParent;
  FListItens := TList<iItemAttributes<iVenda>>.Create;
end;

destructor TVendaAttributes.Destroy;
begin
  FListItens.Free;
  inherited;
end;

function TVendaAttributes.Display: TProc<String>;
begin
  Result := FDisplay;
end;

function TVendaAttributes.Display(aValue: TProc<String>): IVendaAttributes<IVenda>;
begin
  FDisplay := aValue;
  Result := Self;
end;

function TVendaAttributes.ListItens: TList<iItemAttributes<iVenda>>;
begin
  Result := FListItens;
end;

function TVendaAttributes.State: TEnumVendaTypes;
begin
  Result := FState;
end;

function TVendaAttributes.State(aValue: TEnumVendaTypes): iVendaAttributes<iVenda>;
begin
  FState := aValue;
  Result := Self;
end;

end.
