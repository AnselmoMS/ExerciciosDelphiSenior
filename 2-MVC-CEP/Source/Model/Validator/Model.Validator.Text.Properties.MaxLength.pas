unit Model.Validator.Text.Properties.MaxLength;
interface

uses
  System.SysUtils,
  Model.Validator.Interfaces,
  Model.Validator.Text.Properties;

type
  TValidatorTextPropertiesMaxLength = class(TValidatorTextProperties)
  private
  var
    FMaxLength: Integer;
  const
    DEFAULT_ERROR_MESSAGE = '';
  protected
    function GetDefaultErrorMessage: String; override;
  public
    class function New(_AParentConstraints: IModelValidatorTextConstraints; _MaxLength: Integer): IModelValidatorTextProperties;
    //
    constructor Create(_AParentConstraints: IModelValidatorTextConstraints; _MaxLength: Integer);
    //
    function MaxLength(_AValue: Integer): IModelValidatorTextProperties;
    function Validate: IModelValidatorTextProperties; override;
  end;

implementation

{ TValidatorTextPropertiesMaxLength }

function TValidatorTextPropertiesMaxLength.GetDefaultErrorMessage: String;
begin
  Result := Format('Limite máximo de %d caracteres ultrapassado', [FMaxLength]);
end;

function TValidatorTextPropertiesMaxLength.MaxLength(_AValue: Integer): IModelValidatorTextProperties;
begin
  FMaxLength := _AValue
end;

class function TValidatorTextPropertiesMaxLength.New(_AParentConstraints: IModelValidatorTextConstraints; _MaxLength: Integer): IModelValidatorTextProperties;
begin
  Result := Self.Create(_AParentConstraints, _MaxLength);
end;

constructor TValidatorTextPropertiesMaxLength.Create(_AParentConstraints: IModelValidatorTextConstraints; _MaxLength: Integer);
begin
  inherited Create(_AParentConstraints);
  MaxLength(_MaxLength);
end;

function TValidatorTextPropertiesMaxLength.Validate: IMOdelValidatorTextProperties;
begin
  if GetValue.Length > FMaxLength then
    SetAssignedError
  else
    ClearLastError;

  Result := Self;
end;

end.
