CREATE OR ALTER PROCEDURE SP_CCUSTO_FINANCAS (
  P_MES INTEGER,
  P_ANO INTEGER
  )
  --
  RETURNS (
  DESCRICAO VARCHAR(100),
  VALOR NUMERIC(10,2),
  PER NUMERIC(10,2),
  PER_TOTAL NUMERIC(10,2),
  TOTAL NUMERIC(10,2),
  VALOR_TOTAL NUMERIC(10,2),
  VALOR_DIF NUMERIC(10,2)
  )
  --
AS
  DECLARE VARIABLE V_VALOR NUMERIC(10,2);
  DECLARE VARIABLE V_VALOR_TOTAL NUMERIC(10,2);
  DECLARE VARIABLE V_TOTAL NUMERIC(10,2);
  DECLARE VARIABLE V_PER_TOTAL NUMERIC(10,2);
  DECLARE VARIABLE V_PER NUMERIC(10,2);
  DECLARE VARIABLE V_CCF_ID INTEGER;
BEGIN
  --
  SELECT SUM(SP.VALOR) VALOR
         FROM SP_RELPAGAR_CENTROCUSTO_2('N','D',1) SP
        WHERE 1=1
          AND EXTRACT(MONTH FROM SP.VENCTO) = :P_MES /**/
          AND EXTRACT(YEAR FROM SP.VENCTO)  = :P_ANO /**/
  INTO :V_VALOR;
  --
  FOR
  SELECT B.CCF_DESCRICAO,
         A.VALOR,
         CAST((A.VALOR / :V_VALOR * 100) AS NUMERIC(10,2)) PER,
         :V_VALOR TOTAL,
         A.CCF_PERCENTUAL,
         ((:V_VALOR * A.CCF_PERCENTUAL) / 100),
         ((:V_VALOR * A.CCF_PERCENTUAL) / 100) - A.VALOR,
         B.CCF_ID
    FROM (SELECT SUM(CASE WHEN(VALOR_PAGO>0) THEN VALOR_PAGO ELSE VALOR END) VALOR,
                 FI.CCF_DESCRICAO DESCRICAO,
                 FI.CCF_PERCENTUAL,
                 FI.CCF_ID
            FROM SP_RELPAGAR_CENTROCUSTO_2('N','D',1) SP
            LEFT JOIN CENTRO_CUSTO CE ON CE.CCT_ID = SP.CCUSTO_ID
            LEFT JOIN CENTRO_CUSTO_FINANCAS FI ON FI.CCF_ID = CE.CCT_CCF_ID
           WHERE 1=1
             AND EXTRACT(MONTH FROM SP.VENCTO) = :P_MES /**/
             AND EXTRACT(YEAR FROM SP.VENCTO) = :P_ANO  /**/
           GROUP BY FI.CCF_DESCRICAO,
                    FI.CCF_PERCENTUAL,
                    FI.CCF_ID
          ) A
    RIGHT JOIN CENTRO_CUSTO_FINANCAS B ON B.CCF_ID = A.CCF_ID
  INTO :DESCRICAO,
       :VALOR,
       :PER,
       :V_TOTAL,
       :V_PER_TOTAL,
       :V_VALOR_TOTAL,
       :VALOR_DIF,
       :V_CCF_ID
  DO
  BEGIN
    --
    if (COALESCE(:V_PER_TOTAL,0)>0) then
    BEGIN
      --
      TOTAL = :V_TOTAL;
      PER_TOTAL = COALESCE(:V_PER_TOTAL,0);
      VALOR_TOTAL = COALESCE(:V_VALOR_TOTAL,0);
      --
    END
    ELSE
    BEGIN
      --
      SELECT S.CCF_PERCENTUAL
        FROM CENTRO_CUSTO_FINANCAS S
       WHERE S.CCF_ID = :V_CCF_ID
        INTO :V_PER;
      --
      TOTAL = :V_TOTAL;
      PER_TOTAL = COALESCE(:V_PER,0);
      VALOR_TOTAL = ((COALESCE(:V_TOTAL,1) * :V_PER) / 100);
      --
    END
    --
    SUSPEND;
  END
END
