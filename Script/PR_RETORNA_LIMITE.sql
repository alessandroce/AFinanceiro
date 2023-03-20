create or alter procedure PR_RETORNA_LIMITE (
    N_FINANC integer)
returns (
    N_LIMITE numeric(10,2))
as
BEGIN
  --
  SELECT FL.LIM_VALOR
    FROM FINANCEIRO_LIMITE FL
   WHERE FL.LIM_DATA = (SELECT MAX(LM.LIM_DATA) --vigencia
                          FROM FINANCEIRO_LIMITE LM
                         WHERE LM.LIM_FIN_ID = :N_FINANC
                           AND LM.LIM_DATA  <= CURRENT_DATE --sem data futura
                           AND LM.LIM_FIN_ID = FL.LIM_FIN_ID)
  INTO N_LIMITE;
  --
  SUSPEND;
  --
END