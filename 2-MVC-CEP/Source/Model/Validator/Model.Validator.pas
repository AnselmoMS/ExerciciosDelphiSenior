unit Model.Validator;

interface

uses
  Vcl.Graphics,
  System.Classes,
  System.SysUtils,
  Vcl.StdCtrls,
  System.Generics.Collections,
  Model.Validator.Interfaces,
  Model.Validator.Text.Constraints;

type
  TValidator = Class(TInterfacedObject, IModelValidator)
    private
      FOnChanged: TNotifyEvent;
      FTextConstraintsList: TList<IModelValidatorTextConstraints>;
    protected
      function OnChanged: TNotifyEvent;
    public
      class function New: IModelValidator;
      //
      destructor Destroy; override;
      //
      function Changed(Sender: TObject = nil): IModelValidator;
      function DisplayErrors: IModelValidator;
      function EditLabel(_AEdit: TCustomEdit; AErrorLabel: TCustomLabel): IModelValidatorTextConstraints;
      function &End: IModelValidator;
      function SetOnChanged(_AProc: TNotifyEvent): IModelValidator;
      function ValidateAll: IModelValidator;
  end;

implementation

{ TValidator }

function TValidator.Changed(Sender: TObject = nil): IModelValidator;
begin
  if Assigned(FOnChanged) then
    FOnChanged(Sender);
  Result := Self;
end;

destructor TValidator.Destroy;
begin
  FreeAndNil(FTextConstraintsList);
  inherited;
end;

function TValidator.DisplayErrors: IModelValidator;
var
  I: IModelValidatorTextConstraints;
begin
  for I in FTextConstraintsList do
    I.DisplayErrors;
end;

function TValidator.EditLabel(_AEdit: TCustomEdit; AErrorLabel: TCustomLabel): IModelValidatorTextConstraints;
begin
  if not Assigned(FTextConstraintsList) then
    FTextConstraintsList := TList<IModelValidatorTextConstraints>.Create;

  Result := FTextConstraintsList[FTextConstraintsList.Add(TValidatorTextConstraints.New(Self, _AEdit, AErrorLabel))];
end;

function TValidator.&End: IModelValidator;
begin
  Result:= Self;
end;

class function TValidator.New: IModelValidator;
begin
  Result:= Self.Create;
end;

function TValidator.OnChanged: TNotifyEvent;
begin
  Result := FOnChanged;
end;

function TValidator.SetOnChanged(_AProc: TNotifyEvent): IModelValidator;
begin
  FOnChanged := _AProc
end;

function TValidator.ValidateAll: IModelValidator;
var
  I: IMOdelValidatorTextConstraints;
begin
  for I in FTextConstraintsList do
    I.ValidateAll;
end;

end.
