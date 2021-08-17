unit DAO.RTTI.Types;

interface

uses
  System.RTTI,
  System.SysUtils,
  System.Generics.Collections;

type
  TAttrType = (tpInteger, tpString, tpCurrency);

  Table = class(TCustomAttribute)
  private
    FTableName: String;
    procedure SetTableName(const Value: String);
  published
    constructor Create ( aTableName : String );
    property TableName : String read FTableName write SetTableName;
  end;

  FieldType = class(TCustomAttribute)
  private
    FAttrType: TAttrType;
    procedure SetAttrType(const Value: TAttrType);
  published
    constructor Create ( aAttrType : TAttrType );
    property AttrType : TAttrType read FAttrType write SetAttrType;
  end;

  UpdateField = class(TCustomAttribute)
  end;

  PKey = class(TCustomAttribute)
  end;

  TCustomAttributeClass = class of TCustomAttribute;

implementation

{ TableName }

constructor Table.Create(aTableName: String);
begin
  FTableName := aTableName;
end;

procedure Table.SetTableName(const Value: String);
begin
  FTableName := Value;
end;

{ FieldType }

constructor FieldType.Create(aAttrType: TAttrType);
begin
  FAttrType := aAttrType;
end;

procedure FieldType.SetAttrType(const Value: TAttrType);
begin
  FAttrType := Value;
end;

end.
