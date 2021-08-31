unit Model.Validator.Interfaces;

interface

uses
  Vcl.Graphics,
  System.Classes,
  System.SysUtils,
  Vcl.StdCtrls;

type
  IModelValidator = interface;
  IModelValidatorTextConstraints = interface;

  IModelValidatorTextProperties = interface
    ['{F696D178-B8AC-4D38-B857-E24167E7E443}']
    function DisplayError: IModelValidatorTextProperties;
    function &End: IModelValidatorTextConstraints;
    function EndAll: IModelValidator;
    function ErrorMessage(_Mgs: string): IModelValidatorTextProperties;
    function ErrorStyle(_AColor: TColor = clRed): IModelValidatorTextProperties;
    function GetLastError: String;
    function Validate: IModelValidatorTextProperties;
  end;

  IModelValidatorTextConstraints = interface
    ['{A390FF49-8BCB-4A79-9E4A-EFCCADFDE099}']
    function DisplayErrors: IModelValidatorTextConstraints;
    function &End: IModelValidator;
    function GetEdit: TCustomEdit;
    function GetErrorLabel: TCustomLabel;
    //
    function MaxLength(_Value: Integer): IModelValidatorTextProperties;
    function MinLength(_Value: Integer): IModelValidatorTextProperties;
    function NonEmpty: IModelValidatorTextProperties;
    //
    function ValidateAll: IModelValidatorTextConstraints;
  end;

  IModelValidator = interface
    ['{B9961C81-8BE8-4316-B30F-5CEE47251901}']
    function Changed(Sender: TObject = nil): IModelValidator;
    function DisplayErrors: IModelValidator;
    function EditLabel(_AEdit: TCustomEdit; AErrorLabel: TCustomLabel): IModelValidatorTextConstraints;
    function SetOnChanged(_AProc: TNotifyEvent): IModelValidator;
    function ValidateAll: IModelValidator;
  end;

implementation

end.
