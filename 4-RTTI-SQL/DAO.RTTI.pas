unit DAO.RTTI;

interface

uses
  System.RTTI,
  System.SysUtils,
  System.Generics.Collections,
  Projeto.Interfaces;

type
  TDAORTTI = class
    public
      class function GetInsertSQL<T : class> ( aEntity : T ) : String;
      class function GetDeleteSQL<T : class> ( aEntity : T ) : String;
      class function GetUpdateSQL<T : class> ( aEntity : T ) : String;
  end;

implementation

uses
  DAO.RTTI.Finder,
  DAO.RTTI.StringUtils,
  DAO.RTTI.Types;

{ TDAORTTI }

class function TDAORTTI.GetDeleteSQL<T>(aEntity: T): String;
var
  FDaoFinder: IDAOFinder<T>;
begin
  FDaoFinder := TDAOFinder<T>.Create(aEntity);
  Result := Format('DELETE FROM %s WHERE %s = %s', [FDaoFinder.GetTableName, ArrayStringToStrig(FDaoFinder.GetKeyFieldNames), ArrayStringToStrig(FDaoFinder.GetKeyFieldValues)]);
end;

class function TDAORTTI.GetInsertSQL<T>( aEntity : T ) : String;
var
  FDaoFinder: IDAOFinder<T>;
begin
  FDaoFinder := TDAOFinder<T>.Create(aEntity);
  Result := Format('INSERT INTO %s (%s) VALUES (%s)', [FDaoFinder.GetTableName, ArrayStringToStrig(FDaoFinder.GetFieldNames), ArrayStringToStrig(FDaoFinder.GetFieldValues)]);
end;

class function TDAORTTI.GetUpdateSQL<T>(aEntity: T): String;
var
  FDaoFinder: IDAOFinder<T>;
begin
  FDaoFinder := TDAOFinder<T>.Create(aEntity);
  Result := Format('UPDATE %s SET %s WHERE %s = %s', [FDaoFinder.GetTableName,
                                                      GetFieldsdValuesUpdate(FDaoFinder.GetFieldNames(UpdateField), FDaoFinder.GetFieldValues(UpdateField)),
                                                      ArrayStringToStrig(FDaoFinder.GetKeyFieldNames),
                                                      ArrayStringToStrig(FDaoFinder.GetKeyFieldValues)]);
end;

end.
