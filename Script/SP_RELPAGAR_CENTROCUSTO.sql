create or alter procedure SP_RELPAGAR_CENTROCUSTO (
    P_ATIVO char(1),
    P_DEBCRED char(1),
    P_USUARIO integer)
returns (
    VALOR numeric(15,2),
    VALOR_PAGO numeric(15,2),
    DESCRICAO varchar(100),
    VENCTO date,
    DEBCRED char(1),
    CCUSTO_ID integer)
as
declare variable V_COUNT integer;
declare variable V_PAR_ID integer;
declare variable V_VALOR numeric(15,2);
declare variable V_VALOR_PAGO numeric(15,2);
declare variable V_CCTPAR_ID integer;
declare variable V_CCTDET_ID integer;
declare variable V_DESCRICAODET varchar(100);
declare variable V_DESCRICAOPAR varchar(100);
declare variable V_VENCTO date;
declare variable V_FIN_DEBCRED char(1);
begin
for
select parcelas.par_id,
       parcelas.par_valor,
       parcelas.par_valor_pago,
       centro_custo.cct_id,
       centro_custo.cct_descricao descricao,
       parcelas.par_vencto,
       financeiro.fin_debcred
  from parcelas
  join centro_custo on (centro_custo.cct_id = parcelas.par_flag)
  join financeiro on (financeiro.fin_id = parcelas.par_fin_id)
 where 1=1 and financeiro.fin_id > -1
   --and extract(month from parcelas.par_vencto)=:p_mes
   --and extract(year from parcelas.par_vencto)=:p_ano
   and ((coalesce(financeiro.fin_inativo,'N')=:p_ativo) or ( :p_ativo = ' ' ))
   and ((financeiro.fin_debcred = :p_debcred) or (:p_debcred = ' '))
   and exists (select usuario_visao.UVIS_USU_FILHO
                 from usuario_visao
                where usuario_visao.UVIS_USU_PAI = :p_usuario
                  and usuario_visao.UVIS_USU_FILHO=financeiro.FIN_USU_ID )
 order by financeiro.fin_descricao
  into :v_par_id, :v_valor, :v_valor_pago,
       :v_cctpar_id, :v_descricaopar, :v_vencto,
       :v_fin_debcred
  do
  begin
    --
    v_count = (select count(*)
                 from parcelas_detalhe
                where parcelas_detalhe.det_par_id=:v_par_id);
    --
    if (:v_count>0) then
    begin
      --
      for
      select parcelas_detalhe.det_valor,
             centro_custo.cct_descricao,
             centro_custo.cct_id
        from parcelas_detalhe
        left join centro_custo on (centro_custo.cct_id=parcelas_detalhe.det_flag)
       where parcelas_detalhe.det_par_id = :v_par_id
        into :v_valor, :v_descricaodet, :v_cctdet_id
      do
      begin
        valor      = :v_valor;
        valor_pago = 0;
        ccusto_id  = :v_cctdet_id;
        descricao  = :v_descricaodet;
        vencto     = :v_vencto;
        debcred    = :v_fin_debcred;
        suspend;
      end
      --
    end
    else
    begin
      valor      = :v_valor;
      valor_pago = :v_valor_pago;
      ccusto_id  = :v_cctpar_id;
      descricao  = :v_descricaopar;
      vencto     = :v_vencto;
      debcred    = :v_fin_debcred;
      suspend;
    end
  end


end