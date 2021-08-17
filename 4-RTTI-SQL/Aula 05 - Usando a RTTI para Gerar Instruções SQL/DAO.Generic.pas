unit DAO.Generic;

interface

uses
  Projeto.Interfaces, System.SysUtils;

type
  TDAOGeneric<T : class, constructor> = class(TInterfacedObject, iDAOInterface<T>)
    private
      FEntidade : T;
      FDisplay : TProc<String>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAOInterface<T>;
      procedure Insert;
      procedure Update;
      procedure Delete;
      procedure Display ( aValue : TProc<String> );
      function This : T;
  end;

implementation

uses
  DAO.RTTI;

{ TDAOGeneric<T> }

constructor TDAOGeneric<T>.Create;
begin
  FEntidade := T.Create;
end;

procedure TDAOGeneric<T>.Delete;
begin
  //
end;

destructor TDAOGeneric<T>.Destroy;
begin
  if Assigned(FEntidade) then
    FEntidade.Free;

  inherited;
end;

procedure TDAOGeneric<T>.Display(aValue: TProc<String>);
begin
  FDisplay := aValue;
end;

procedure TDAOGeneric<T>.Insert;
begin
  FDisplay(TDAORTTI.getInsertSQL<T>(FEntidade));
end;

class function TDAOGeneric<T>.New: iDAOInterface<T>;
begin
  Result := Self.Create;
end;

function TDAOGeneric<T>.This: T;
begin
  Result := FEntidade;
end;

procedure TDAOGeneric<T>.Update;
begin
  //
end;

end.
