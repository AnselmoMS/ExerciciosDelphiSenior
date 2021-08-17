unit HW.Wizard.MainMenu;

interface

uses
  ToolsAPI,
  System.SysUtils,
  System.Classes,
  VCL.Menus;

  type
    TMainMenuWizard = class(TNotifierObject, IOTAWizard)
    private
      procedure CreateMenu;
    protected

    procedure Execute;

    {IOTAWizard}
    function GetIDString: string;
    function GetName: string;
    function GetState: TWizardState;

    public
      constructor Create;
    end;

procedure Register;


implementation

procedure Register;
begin
  RegisterPackageWizard(TMainMenuWizard.Create);
end;

{ TMainMenuWizard }

constructor TMainMenuWizard.Create;
begin
  CreateMenu
end;

procedure TMainMenuWizard.CreateMenu;
var
  ideMainMenu: TMainMenu;
  Item: TMenuItem;
const
  mName = 'mHWMainMenu';
begin
  ideMainMenu := (BorlandIDEServices as INTAServices).MainMenu;

  if ideMainMenu.FindComponent(mName) <> nil then
    ideMainMenu.FindComponent(mName).Free;

  Item := TMenuItem.Create(ideMainMenu);
  Item.Name := mName;
  Item.Caption := 'HW Main Menu';

  ideMainMenu.Items.Add(item);

  //createSubMenu
end;

procedure TMainMenuWizard.Execute;
begin

end;

function TMainMenuWizard.GetIDString: string;
begin
  Result := Self.ClassName;
end;

function TMainMenuWizard.GetName: string;
begin
  result := Self.ClassName;
end;

function TMainMenuWizard.GetState: TWizardState;
begin
  Result := [wsEnabled];
end;

end.
