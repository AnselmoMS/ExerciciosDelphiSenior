unit HW.Wizard;

interface

uses
  ToolsAPI,
  Vcl.Dialogs;

  type
    THWWizard = class(TNotifierObject, IOTAWizard, IOTAMenuWizard)

    function GetIDString: string;
    function GetName: string;
    function GetState: TWizardState;

    { Launch the AddIn }
    procedure Execute;

    {IOTAMenuWizard}
    function GetMenuText: string;
    end;

procedure Register;


implementation

procedure Register;
begin
  RegisterPackageWizard(THWWizard.Create);
end;

{ THWWizard }

procedure THWWizard.Execute;
begin
  ShowMessage('Executou!');
end;

function THWWizard.GetIDString: string;
begin
  Result := 'HWWizard'; //unique
end;

function THWWizard.GetMenuText: string;
begin
  Result := 'HW MenuCaption';
end;

function THWWizard.GetName: string;
begin
  Result := 'Wizard Name'
end;

function THWWizard.GetState: TWizardState;
begin
  Result := [wsEnabled]
end;

end.
