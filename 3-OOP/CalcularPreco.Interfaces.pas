unit CalcularPreco.Interfaces;

interface

uses
  System.SysUtils,
  System.Classes,
  CalcularPreco.Tipos;

type
  ICalculadoraDePrecoParametros = interface;
  ICalculadoraDePrecoOperacoes = interface;

  ICalculadoraDePreco = interface
    ['{31E2905C-C3BF-42EF-AAD2-8CA65A5ECD8E}']
    function Parametros: ICalculadoraDePrecoParametros;
    function Operacoes: ICalculadoraDePrecoOperacoes;
    Function Modalidade: TModalidadePreco;

  end;

  ICalculadoraDePrecoParametros = interface
    ['{A561CD75-E291-4E62-BA89-0D031592912C}']
    function Percent(_APercent: Currency): ICalculadoraDePrecoParametros;
    function GetPercent: Currency;
    function &End: ICalculadoraDePreco;
  end;

  ICalculadoraDePrecoOperacoes = interface
    ['{E248C986-70FB-4D9F-B409-9461E9CD1C25}']
    function Calcular(_PrecoBase: Currency): ICalculadoraDePrecoOperacoes;
    function &End: ICalculadoraDePrecoParametros;
    function ExibirResultado(_AProcStr: TProc<string>): ICalculadoraDePrecoOperacoes;
    function OnCalculated(_AProc: TProc<Currency>): ICalculadoraDePrecoOperacoes;
  end;

implementation

end.
