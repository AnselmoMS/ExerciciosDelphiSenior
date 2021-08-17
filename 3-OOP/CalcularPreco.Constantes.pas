unit CalcularPreco.Constantes;

interface
uses
  CalcularPreco.Tipos,

  CalcularPreco.Calculadora,
  CalcularPreco.Calculadora.Atacado,
  CalcularPreco.Calculadora.Varejo,
  CalcularPreco.Calculadora.Feriado;

  const
    MODALIDADE_PRECO_NOME: array[TModalidadePreco] of string = ('Atacado', 'Varejo', 'Feriado' );

    MODALIDADE_PRECO_CLASS: array[TModalidadePreco] of TModalidadePrecoCalculadoraClass =
      ( TModalidadePrecoCalculadoraAtacado,
        TModalidadePrecoCalculadoraVarejo,
        TModalidadePrecoCalculadoraFeriado);

implementation

end.
