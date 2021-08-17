unit Projeto.Interfaces;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  DAO.RTTI.Types;

type
  iDAOInterface<T : class> = interface
    procedure Insert;
    procedure Update;
    procedure Delete;
    procedure Display ( aValue : TProc<String> );
    function This : T;
  end;

  IDAOFinder<T : class> = interface
    ['{C6C76AC9-12D1-4933-9628-28DDF0F0AE84}']
    function GetFieldNames(AtrributeClass: TCustomAttributeClass = nil): TArray<string>;
    function GetFieldValues(AtrributeClass: TCustomAttributeClass = nil): TArray<string>;

    function GetKeyFieldNames: TArray<string>;
    function GetKeyFieldValues: TArray<string>;

    function GetTableName: String;

  end;

implementation

end.
