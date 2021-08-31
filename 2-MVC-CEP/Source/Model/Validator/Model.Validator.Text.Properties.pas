unit Model.Validator.Text.Properties;

interface

uses
  System.SysUtils,
  Vcl.Graphics,
  Model.Validator.Interfaces;

type
  TValidatorTextProperties = class(TinterfacedObject, IModelValidatorTextProperties)
  private
    FErroStyleColor: TColor;
  protected
    FCustomError: string;
    FLastError: String;
    FOriginalEditColor: TColor;
    [weak]
    FParentConstraint: IModelValidatorTextConstraints;
    //
    function GetAssignedError: String;
    function GetDefaultErrorMessage: String; virtual; abstract;
    function GetValue: String;
    //
    procedure ClearLastError;
    procedure SetAssignedError;

  public
    const
      DEFAULT_ERROR_STYLE_COLOR = clWebLightCoral;
    //
    class function New(_AparentConstraint: IModelValidatorTextConstraints): IMOdelValidatorTextProperties;
    //
    constructor Create(_AparentConstraint: IModelValidatorTextConstraints);
    //
    function &End: IModelValidatorTextConstraints; virtual;
    function DisplayError: IMOdelValidatorTextProperties;
    function EndAll: IModelValidator;
    function ErrorMessage(_Mgs: string): IModelValidatorTextProperties;
    function ErrorStyle(_AColor: TColor = DEFAULT_ERROR_STYLE_COLOR): IModelValidatorTextProperties;
    function GetLastError: String;
    function Validate: IModelValidatorTextProperties; virtual; abstract;
  end;
  TValidatorTextPropertiesClass = class of TValidatorTextProperties;

implementation

uses
  Vcl.Controls;

type
  TControlAccess = class(TControl)
  end;

{ TValidatorTextProperties }


procedure TValidatorTextProperties.ClearLastError;
begin
  FLastError := '';
end;

constructor TValidatorTextProperties.Create(_AparentConstraint: IMOdelValidatorTextConstraints);
begin
  FParentConstraint:= _AparentConstraint;
  FOriginalEditColor := TControlAccess(_AparentConstraint.GetEdit).Color;
  FErroStyleColor := DEFAULT_ERROR_STYLE_COLOR;
end;

function TValidatorTextProperties.DisplayError: IMOdelValidatorTextProperties;
begin
  TControlAccess(FParentConstraint.GetEdit).Color := FOriginalEditColor;
  FParentConstraint.GetErrorLabel.Caption := '';
  //
  if not FLastError.IsEmpty then
  begin
    if not FParentConstraint.GetEdit.Focused then
      FParentConstraint.GetEdit.SetFocus;

    TControlAccess(FParentConstraint.GetEdit).Color := FErroStyleColor;
    FParentConstraint.GetErrorLabel.Caption := FLastError;
  end;
end;

function TValidatorTextProperties.&End: IModelValidatorTextConstraints;
begin
  Result := FParentConstraint;
end;

function TValidatorTextProperties.EndAll: IModelValidator;
begin
  Result := FParentConstraint.&End
end;

function TValidatorTextProperties.ErrorMessage(_Mgs: string): IModelValidatorTextProperties;
begin
  FCustomError := _Mgs;
  Result := Self;
end;

function TValidatorTextProperties.ErrorStyle(_AColor: TColor): IModelValidatorTextProperties;
begin
  FErroStyleColor := _AColor;
  Result := Self;
end;

function TValidatorTextProperties.GetAssignedError: String;
begin
  if FCustomError.Trim.IsEmpty then
    Result := GetDefaultErrorMessage
  else
    Result := FCustomError;
end;

function TValidatorTextProperties.GetLastError: String;
begin
  Result := FLastError;
end;

function TValidatorTextProperties.GetValue: String;
begin
  Result := FParentConstraint.GetEdit.Text;
end;

class function TValidatorTextProperties.New(_AparentConstraint: IModelValidatorTextConstraints): IModelValidatorTextProperties;
begin
  Result := Self.Create(_AparentConstraint);
end;

procedure TValidatorTextProperties.SetAssignedError;
begin
  FLastError := GetAssignedError;
end;

end.
