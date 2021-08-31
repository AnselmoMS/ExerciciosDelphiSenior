unit Model.Conections.Rest.Interfaces;

interface

uses
  System.JSON,
  System.SysUtils;

type
  IRestConnector = interface;
  IRestProvider = interface;

  IRestConnection = interface
    ['{6F14C58C-08D6-4741-9457-EE1BE3443187}']
    function Connector(_Connector: IRestConnector): IRestConnection;
    function Providers(_Providers: array of IRestProvider): IRestConnection;
    function DoGet: IRestConnection;
    function GetLastValueJson: TJsonValue;
    function URLBase(_URL: string): IRestConnection;
    function ParamValues(_ParamValues: array of string): IRestConnection;
    function OnAfterGet(_Event: TProc): IRestConnection;
  end;

  IRestConnector = interface
    ['{6AFCD609-CEFA-4554-90C9-69E4430CAE8F}']
    function URLBase(_URL: string): IRestConnector;
    function ParamValues(_ParamValues: array of string): IRestConnector;
    function Get: IRestConnector;
    function GetResponseJson: TJsonValue;
  end;

  IRestProvider = interface
    function GetURLBase: String;
  end;

implementation

end.
