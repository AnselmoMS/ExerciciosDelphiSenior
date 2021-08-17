unit Projeto.Interfaces;

interface

uses
  System.SysUtils;

type

  iDAOInterface<T : class> = interface
    procedure Insert;
    procedure Update;
    procedure Delete;
    procedure Display ( aValue : TProc<String> );
    function This : T;
  end;

implementation

end.
