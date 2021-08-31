unit Model.Validator.Text.Properties.NonEmpty;

interface

uses
  System.SysUtils,
  Model.Validator.Interfaces,
  Model.Validator.Text.Properties;

type
  TModelValidatorTextPropertiesNonEmpty = class(TValidatorTextProperties)
  private
    const
  protected
    function GetDefaultErrorMessage: String; override;
  public
    function Validate: IModelValidatorTextProperties; override;
  end;

implementation


{ TValidatorTextActionsEmpty<T> }

function TModelValidatorTextPropertiesNonEmpty.GetDefaultErrorMessage: String;
begin
  Result := 'O campo não pode ficar vazio'
end;

function TModelValidatorTextPropertiesNonEmpty.Validate: IModelValidatorTextProperties;
begin
  if Trim(GetValue).IsEmpty then
    SetAssignedError
  else
    ClearLastError;

  Result := Self;
end;

end.
