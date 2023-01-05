create or alter procedure SP_PROVISAO_CCUSTO (
    AMES integer,
    AANO integer,
    AFLAG integer,
    AFINID integer,
    AUSU integer)
returns (
    FINDESC varchar(100),
    PROV_VALOR numeric(10,2),
    FINAN_VALOR numeric(10,2),
    VALOR_TOTAL numeric(10,2))
as
BEGIN
  --
    FOR
    SELECT (SELECT FINANCEIRO.FIN_DESCRICAO
              FROM FINANCEIRO
             WHERE FINANCEIRO.FIN_ID = :AFINID) DESCRICAO,
           VLR_P VLR_PROVISAO,
           VLR_F VLR_FINANCEIRO,
           VLR_P - VLR_F TOTAL
      FROM (SELECT SUM(CASE WHEN(TIPO='F') THEN DET_VALOR END) VLR_F,
                   SUM(CASE WHEN(TIPO='P') THEN DET_VALOR END) VLR_P
              FROM (SELECT 'F' TIPO,
                            PARCELAS_DETALHE.DET_VALOR
                      FROM PARCELAS_DETALHE,
                           PARCELAS,
                           FINANCEIRO,
                           CENTRO_CUSTO
                     WHERE PARCELAS_DETALHE.DET_PAR_ID = PARCELAS.PAR_ID
                       AND PARCELAS_DETALHE.DET_FLAG   = CENTRO_CUSTO.CCT_ID
                       AND PARCELAS.PAR_FIN_ID = FINANCEIRO.FIN_ID
                       AND EXTRACT(MONTH FROM PARCELAS.PAR_VENCTO) = :AMES  --MES
                       AND EXTRACT(YEAR FROM PARCELAS.PAR_VENCTO)  = :AANO  --ANO
                       AND PARCELAS_DETALHE.DET_FLAG = :AFLAG --3 SUPERMERCADO
                       AND PARCELAS.PAR_FIN_ID <> :AFINID
                       AND EXISTS (SELECT USUARIO_VISAO.UVIS_USU_FILHO
                                     FROM USUARIO_VISAO
                                    WHERE USUARIO_VISAO.UVIS_USU_PAI = :AUSU
                                      AND USUARIO_VISAO.UVIS_USU_FILHO=FINANCEIRO.FIN_USU_ID )
                    UNION ALL
                    SELECT 'P' TIPO,
                           FINANCEIRO.FIN_VALORPROVISAO
                      FROM PARCELAS, FINANCEIRO
                     WHERE PARCELAS.PAR_FIN_ID = FINANCEIRO.FIN_ID
                       AND EXTRACT(MONTH FROM PARCELAS.PAR_VENCTO) = :AMES  --MES
                       AND EXTRACT(YEAR FROM PARCELAS.PAR_VENCTO)  = :AANO  --ANO
                       AND PARCELAS.PAR_FIN_ID = :AFINID --297
                       AND EXISTS (SELECT USUARIO_VISAO.UVIS_USU_FILHO
                                     FROM USUARIO_VISAO
                                    WHERE USUARIO_VISAO.UVIS_USU_PAI = :AUSU
                                      AND USUARIO_VISAO.UVIS_USU_FILHO=FINANCEIRO.FIN_USU_ID )
                    ))
    INTO
      :FINDESC,
      :PROV_VALOR,
      :FINAN_VALOR,
      :VALOR_TOTAL
    DO
    BEGIN
      --
      SUSPEND;
      --
    END
    --
END