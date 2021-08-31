unit Model.Validator.Text.Properties.MinLength;
interface

uses
  System.SysUtils,
  Model.Validator.Interfaces,
  Model.Validator.Text.Properties;

type
  TValidatorTextPropertiesMinLength = class(TValidatorTextProperties)
  private
  var
    FMinLength: Integer;
  const
    LOWER_MIN_LENGTH = 1;

  protected
    function GetDefaultErrorMessage: String; override;

  public
    class function New(_AParentConstraints: IModelValidatorTextConstraints; _MinLength: Integer): IModelValidatorTextProperties;
    //
    constructor Create(_AParentConstraints: IModelValidatorTextConstraints; _MinLength: Integer);
    //
    function MinLength(_AMinLength: Integer): TValidatorTextPropertiesMinLength;
    function Validate: IModelValidatorTextProperties; override;
  end;

implementation

{ TValidatorTextPropertiesMinLength }

function TValidatorTextPropertiesMinLength.GetDefaultErrorMessage: String;
begin
  Result := Format('Limite mínimo de %d caracteres não alcançado', [FMinLength]);
end;

function TValidatorTextPropertiesMinLength.MinLength(_AMinLength: Integer): TValidatorTextPropertiesMinLength;
begin
  if _AMinLength <= LOWER_MIN_LENGTH then
    raise Exception.Create('Valor mínimo é ' + LOWER_MIN_LENGTH.ToString);

  FMinLength := _AMinLength;

  Result := Self;
end;

class function TValidatorTextPropertiesMinLength.New(_AParentConstraints: IModelValidatorTextConstraints; _MinLength: Integer): IModelValidatorTextProperties;
begin
  Result := Self.Create(_AParentConstraints, _MinLength);
end;

constructor TValidatorTextPropertiesMinLength.Create(_AParentConstraints: IModelValidatorTextConstraints; _MinLength: Integer);
begin
  inherited Create(_AParentConstraints);
  MinLength(_MinLength);
end;

function TValidatorTextPropertiesMinLength.Validate: IModelValidatorTextProperties;
begin
  if GetValue.Length < FMinLength then
    SetAssignedError
  else
    ClearLastError;

  Result := Self;
end;

end.
