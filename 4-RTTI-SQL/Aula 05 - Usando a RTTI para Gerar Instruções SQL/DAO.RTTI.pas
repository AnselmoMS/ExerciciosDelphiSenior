unit DAO.RTTI;

interface

type
  TAttrType = (tpString, tpCurrency);


  TableName = class(TCustomAttribute)
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



  TDAORTTI = class
    private
    public
      class function getInsertSQL<T : class> ( aEntity : T ) : String;
  end;

implementation

uses
  System.RTTI, System.SysUtils;

{ TDAORTTI }

class function TDAORTTI.getInsertSQL<T>( aEntity : T ) : String;
var
  ctxRTTI : TRttiContext;
  typRTTI : TRttiType;
  propRTTI : TRttiProperty;
  attrRTTI : TCustomAttribute;
  aTableName : String;
begin
  ctxRTTI := TRttiContext.Create;
  try
    typRTTI := ctxRTTI.GetType(aEntity.ClassInfo);

    for attrRTTI in typRTTI.GetAttributes do
      if attrRTTI is TableName then
        aTableName := TableName(attrRTTI).TableName;

    Result := 'INSERT INTO ' + aTableName + '(';

    for propRTTI in typRTTI.GetProperties do
    begin
      Result := Result + propRTTI.Name + ',';
    end;

    Result := Copy(Result, 0, Length(Result) - 1);

    Result := Result + ') VALUES (';

    for propRTTI in typRTTI.GetProperties do
    begin
      for attrRTTI in propRTTI.GetAttributes do
      begin
        if attrRTTI is FieldType then
        begin
          case FieldType(attrRTTI).AttrType of
            tpString : Result := Result + QuotedStr(propRTTI.GetValue(Pointer(aEntity)).AsString) + ',';
            tpCurrency : Result := Result + CurrToStr(propRTTI.GetValue(Pointer(aEntity)).AsCurrency) + ',';
          end;
        end;
      end;
    end;
    Result := Copy(Result, 0, Length(Result) - 1);
    Result := Result + ')';
  finally
    ctxRTTI.Free;
  end;
end;

{ TableName }

constructor TableName.Create(aTableName: String);
begin
  FTableName := aTableName;
end;

procedure TableName.SetTableName(const Value: String);
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
