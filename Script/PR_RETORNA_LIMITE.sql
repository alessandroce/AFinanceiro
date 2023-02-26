create or alter procedure PR_RETORNA_LIMITE (
    N_FINANC integer)
returns (
    N_LIMITE numeric(10,2))
as
BEGIN
  --
  SELECT FIRST 1
         L.LIM_VALOR
    FROM FINANCEIRO        F
       , FINANCEIRO_LIMITE L
   WHERE 1=1
     AND F.FIN_ID = L.LIM_FIN_ID
     AND F.FIN_ID = :N_FINANC
  ORDER BY L.LIM_DATA DESC
  INTO N_LIMITE;
  --
  SUSPEND;
  --
END