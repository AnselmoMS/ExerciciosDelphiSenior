unit Item.Attributes;

interface

uses
  Venda.Interfaces,
  System.SysUtils;

type
  TItemAttributes<T : IInterface> = class(TInterfacedObject, iItemAttributes<T>)
    private
      [weak]
      FParent : T;
      FCodigo : Integer;
      FQnt : Currency;
      FPrecoUnitario : Currency;
      FDisplay : TProc<String>;
    public
      constructor Create( Parent : T );
      destructor Destroy; override;
      class function New( Parent : T ) : iItemAttributes<T>;
      function Codigo ( aValue : Integer ) : iItemAttributes<T>; overload;
      function Codigo : Integer; overload;
      function Qnt ( aValue : Currency ) : iItemAttributes<T>; overload;
      function Qnt : Currency; overload;
      function PrecoUnitario ( aValue : Currency ) : iItemAttributes<T>; overload;
      function PrecoUnitario : Currency; overload;
      function Display ( aValue : TProc<String> ) : iItemAttributes<T>; overload;
      function Display : TProc<String>; overload;
      function &End : T;
  end;

implementation

{ TItemAttributes<T> }

function TItemAttributes<T>.Codigo(aValue: Integer): iItemAttributes<T>;
begin
  Result := Self;
  FCodigo := aValue;
end;

function TItemAttributes<T>.&End: T;
begin
  Result := FParent;
end;

function TItemAttributes<T>.Codigo: Integer;
begin
  Result := FCodigo;
end;

constructor TItemAttributes<T>.Create( Parent : T );
begin
  FParent := Parent;
end;

destructor TItemAttributes<T>.Destroy;
begin

  inherited;
end;

function TItemAttributes<T>.Display: TProc<String>;
begin
  Result := FDisplay;
end;

function TItemAttributes<T>.Display(aValue: TProc<String>): iItemAttributes<T>;
begin
  Result := Self;
  FDisplay := aValue;
end;

class function TItemAttributes<T>.New( Parent : T ): iItemAttributes<T>;
begin
  Result := Self.Create(Parent);
end;

function TItemAttributes<T>.PrecoUnitario: Currency;
begin
  Result := FPrecoUnitario;
end;

function TItemAttributes<T>.PrecoUnitario(aValue: Currency): iItemAttributes<T>;
begin
  Result := Self;
  FPrecoUnitario := aValue;
end;

function TItemAttributes<T>.Qnt: Currency;
begin
  Result := FQnt;
end;

function TItemAttributes<T>.Qnt(aValue: Currency): iItemAttributes<T>;
begin
  Result := Self;
  FQnt := aValue;
end;

end.
