create or alter procedure SP_GERA_PARCELAS_DETALHE (
    P_QTDE DINTEIRO,
    P_VALOR DVALOR,
    P_DESCRICAO DTEXTO100,
    P_DATA_VENCTO DDATA,
    P_DATA_DOC DDATA,
    P_FIN_ID DINTEIRO,
    P_CCT_ID DINTEIRO,
    P_OBSERV DTEXTO100,
    P_PROVIS DTEXTO01,
    P_AGRUPAR DBOOLEANN)
returns (
    MENSAGEM DTEXTO100,
    CONTA DINTEIRO,
    D_PARCELA DDATA,
    n_existe dinteiro

    )
as
--
declare variable I DINTEIRO;
declare variable VDATA DDATA;
declare variable SDATADOC DDATA;
declare variable SDESCRICAO DTEXTO100;
declare variable VPAR_ID DINTEIRO;
declare variable VPAR_VENCTO DDATA;
declare variable VDATADOC DDATA;
declare variable VDESCRICAO DTEXTO100;
--declare variable VVALORACUM DVALOR;
declare variable VDET_ID DINTEIRO;
declare variable VDET_ID_PAI DINTEIRO;
declare variable VPAR_VALOR DVALOR;
declare variable VVALOR_ACUM DVALOR;
declare variable VAGRUPAR DINTEIRO;
declare variable C_EXISTE DTEXTO01;
declare CR_EXISTE_PARCELA cursor for (
    select PARCELAS.PAR_ID,
           PARCELAS.PAR_VALOR
      from PARCELAS
     where PARCELAS.PAR_FIN_ID = :P_FIN_ID
       and extract(month from PARCELAS.PAR_VENCTO) = extract(month from cast(:VPAR_VENCTO as date))
       and extract(year from PARCELAS.PAR_VENCTO)  = extract(year  from cast(:VPAR_VENCTO as date))
);
begin
  --
  vDataDoc = :p_data_doc;
  i = 1;
  --
  if (:p_qtde > 0) then
  begin
    --
    while (:i <= :p_qtde) do
    begin
      --
      if (:i = 1) then
        vPAR_VENCTO = :p_data_vencto;
      else
        vPAR_VENCTO = dateadd(month, 1, :vPAR_VENCTO);
      --
      vDET_ID = (select gen_id(gen_parcelas_detalhe,1) id from rdb$database); --8683
      --
      if (:i = 1) then
        vDET_ID_PAI = :vDET_ID;
      --
      open cr_existe_parcela;
      fetch cr_existe_parcela
      into :vPAR_ID, :vPAR_VALOR;
      close cr_existe_parcela;
      --
      if (:vPAR_ID > 0) then
      begin
        --
        vVALOR_ACUM = :vPAR_VALOR + :p_valor;
        --
        insert into parcelas_detalhe(
            DET_ID,
            DET_ID_PAI,
            DET_PAR_ID,
            DET_DATA,
            DET_DATA_DOC,
            DET_DESCRICAO,
            DET_VALOR,
            DET_FLAG,
            DET_NUMERO,
            DET_QUANTIDADE,
            DET_PROVISIONAR)
        values(
            :vDET_ID,
            :vDET_ID_PAI,
            :vPAR_ID,
            current_date,
            :vDataDoc,
            :p_descricao || ' ' || :i || '/' || :p_qtde,
            :p_valor,
            :p_cct_id,
            :i,
            :p_qtde,
            :p_provis
         );
         --
         update parcelas set
           PAR_VALOR       = :vVALOR_ACUM,
           PAR_PROVISIONAR = :p_provis
          where parcelas.par_id = :vPAR_ID;
         --
      end
      else
      begin
        --
        vPAR_ID = (select gen_id(gen_parcelas,1) id from rdb$database); --8683
        --
        if (:p_agrupar = 'S') then
          vAgrupar = :i;
        else
          vAgrupar = 1;
        --
        insert into parcelas(
            PAR_ID,
            PAR_FIN_ID,
            PAR_NUMERO,
            PAR_QUANTIDADE,
            PAR_DATA,
            PAR_FLAG,
            PAR_OBSERVACAO,
            PAR_VENCTO,
            PAR_VALOR,
            PAR_PAGO,
            PAR_PROVISIONAR)
        values(
            :vPAR_ID,
            :p_fin_id,
            :vAgrupar,
            :p_qtde,
            :p_data_vencto,
            :p_cct_id,
            :p_observ,
            :vPAR_VENCTO,
            :p_valor, 
            0,
            :p_provis
        );
        --
        insert into parcelas_detalhe(
            DET_ID,
            DET_ID_PAI,
            DET_PAR_ID,
            DET_DATA,
            DET_DATA_DOC,
            DET_DESCRICAO,
            DET_VALOR,
            DET_FLAG,
            DET_NUMERO,
            DET_QUANTIDADE,
            DET_PROVISIONAR)
        values(
            :vDET_ID,
            :vDET_ID_PAI,
            :vPAR_ID,
            current_date,
            :vDataDoc,
            :p_descricao || ' ' || :i || '/' || :p_qtde,
            :p_valor,
            :p_cct_id,
            :i,
            :p_qtde,
            :p_provis
         );
        --
      end
      --
      i = :i + 1;
      --
    end
    --
  end
  --
end


-----------------------------------------------------------------------------

--
execute block (
   p_qtde        dinteiro  = :p_qtde
  ,p_valor       dvalor    = :p_valor
  ,p_descricao   dtexto100 = :p_descricao
  ,p_data_vencto ddata     = :p_data_vencto
  ,p_data_doc    ddata     = :p_data_doc
  ,p_fin_id      dinteiro  = :p_fin_id
  ,p_cct_id      dinteiro  = :p_cct_id
  ,p_observ      dtexto100 = :p_observ
  ,p_provis      dtexto01  = :p_provis
  ,p_agrupar     dbooleann = :p_agrupar
)
AS
declare variable i dinteiro;
declare variable qtde dinteiro;
declare variable n_par_id dinteiro;
declare variable n_par_valor dvalor;
declare variable d_par_vencto ddata;
declare variable n_det_id dinteiro;
declare variable n_det_id_pai dinteiro;
declare variable n_agrupar dinteiro;
declare variable n_valor_acum dvalor;
declare variable c_sql BLOB SUB_TYPE TEXT;
--
declare cr_gen_parcelas_detalhe cursor for(
    select gen_id(gen_parcelas_detalhe,1)
      from rdb$database
);
declare cr_gen_parcelas cursor for(
    select gen_id(gen_parcelas,1)
      from rdb$database
);
--
begin
  i = 1;
  qtde = 5;
  --
  while (:i <= :qtde) do
  begin
    --
    open  cr_gen_parcelas_detalhe;
    fetch cr_gen_parcelas_detalhe
    into  :n_det_id;
    close cr_gen_parcelas_detalhe;
    --
    if (:i = 1) then
    begin
      d_par_vencto = :p_data_vencto;
      n_det_id_pai = :n_det_id;
    end
    else
      d_par_vencto = dateadd(month, 1, :d_par_vencto);
    --
    c_sql =
    'select PARCELAS.PAR_ID, PARCELAS.PAR_VALOR ' ||
    'from PARCELAS                              ' ||
    'where PARCELAS.PAR_FIN_ID = ' || :p_fin_id   ||
    '  and extract(month from PARCELAS.PAR_VENCTO) = extract(month from cast(''' || :d_par_vencto || ''' as date))' ||
    '  and extract(year from PARCELAS.PAR_VENCTO)  = extract(year  from cast(''' || :d_par_vencto || ''' as date))';
    --
    execute statement c_sql
    into :n_par_id, :n_par_valor;
    --
    if (coalesce(:n_par_id,0) > 0) then
    begin
      n_valor_acum = :n_par_valor;
      --inserir parcelas_detalhe
      insert into parcelas_detalhe(
          DET_ID,
          DET_ID_PAI,
          DET_PAR_ID,
          DET_DATA,
          DET_DATA_DOC,
          DET_DESCRICAO,
          DET_VALOR,
          DET_FLAG,
          DET_NUMERO,
          DET_QUANTIDADE,
          DET_PROVISIONAR)
      values(
          :n_det_id,
          :n_det_id_pai,
          :n_par_id,
          current_date,
          :p_data_doc,
          :p_descricao || ' ' || :i || '/' || :p_qtde,
          :p_valor,
          :p_cct_id,
          :i,
          :p_qtde,
          :p_provis
      );
      --update parcelas
      update parcelas set
        par_valor       = :n_valor_acum,
        par_provisionar = :p_provis
      where parcelas.par_id = :n_par_id;
      --
    end
    else
    begin
      --
      open  cr_gen_parcelas;
      fetch cr_gen_parcelas
      into  :n_par_id;
      close cr_gen_parcelas;
      --
      if (:p_agrupar = 'S') then
        n_agrupar = :i;
      else
        n_agrupar = 1;
      --
      insert into parcelas(
          PAR_ID,
          PAR_FIN_ID,
          PAR_NUMERO,
          PAR_QUANTIDADE,
          PAR_DATA,
          PAR_FLAG,
          PAR_OBSERVACAO,
          PAR_VENCTO,
          PAR_VALOR,
          PAR_PAGO,
          PAR_PROVISIONAR)
      values(
          :n_par_id,
          :p_fin_id,
          :n_agrupar,
          :p_qtde,
          :d_par_vencto,
          :p_cct_id,
          :p_observ,
          :d_par_vencto,
          :p_valor,
          0,
          :p_provis
      );
      --
      insert into parcelas_detalhe(
          DET_ID,
          DET_ID_PAI,
          DET_PAR_ID,
          DET_DATA,
          DET_DATA_DOC,
          DET_DESCRICAO,
          DET_VALOR,
          DET_FLAG,
          DET_NUMERO,
          DET_QUANTIDADE,
          DET_PROVISIONAR)
      values(
          :n_det_id,
          :n_det_id_pai,
          :n_par_id,
          current_date,
          :p_data_doc,
          :p_descricao || ' ' || :i || '/' || :p_qtde,
          :p_valor,
          :p_cct_id,
          :i,
          :p_qtde,
          :p_provis
      );
      --
    end --else
    --
    i = :i +1;
    --
  end
  --
end;



------------------------------------------------------------------


--
execute block (
   p_qtde        dinteiro  = :p_qtde
  ,p_valor       dvalor    = :p_valor
  ,p_descricao   dtexto100 = :p_descricao
  ,p_data_vencto ddata     = :p_data_vencto
  ,p_data_doc    ddata     = :p_data_doc
  ,p_fin_id      dinteiro  = :p_fin_id
  ,p_cct_id      dinteiro  = :p_cct_id
  ,p_observ      dtexto100 = :p_observ
  ,p_provis      dtexto01  = :p_provis
  ,p_agrupar     dbooleann = :p_agrupar
)
returns(
  c_resultado BLOB SUB_TYPE TEXT
)
AS
declare variable i dinteiro;
declare variable qtde dinteiro;
declare variable n_par_id dinteiro;
declare variable n_par_valor dvalor;
declare variable d_par_vencto ddata;
declare variable n_det_id dinteiro;
declare variable n_det_id_pai dinteiro;
declare variable n_agrupar dinteiro;
declare variable n_valor_acum dvalor;
declare variable c_sql BLOB SUB_TYPE TEXT;
--
declare cr_existe_parcela cursor for (
    select PARCELAS.PAR_ID, PARCELAS.PAR_VALOR
    from PARCELAS
    where PARCELAS.PAR_FIN_ID = :p_fin_id and
          extract(month from PARCELAS.PAR_VENCTO) = extract(month from /*cast(*/:d_par_vencto /*as date)*/) and
          extract(year from PARCELAS.PAR_VENCTO)  = extract(year  from /*cast(*/:d_par_vencto /*as date)*/)
);
--
declare cr_gen_parcelas_detalhe cursor for(
    select gen_id(gen_parcelas_detalhe,1)
      from rdb$database
);
declare cr_gen_parcelas cursor for(
    select gen_id(gen_parcelas,1)
      from rdb$database
);
--
begin
  i = 1;
  qtde = 5;
  --
  while (:i <= :qtde) do
  begin
    --
    /*
    open  cr_gen_parcelas_detalhe;
    fetch cr_gen_parcelas_detalhe
    into  :n_det_id;
    close cr_gen_parcelas_detalhe;
    --
    */
    n_det_id = 1;

    --
    if (:i = 1) then
    begin
      d_par_vencto = :p_data_vencto;
      n_det_id_pai = :n_det_id;
    end
    else
      d_par_vencto = dateadd(month, 1, :d_par_vencto);
    --
    c_resultado = '';
    c_resultado =
          '-- 00 --'           || ' | ' ||
          ' ' || :d_par_vencto || ' | ' ||
          ' ' || :n_det_id_pai;
    suspend;

    --
    /*
    open  cr_existe_parcela;
    fetch cr_existe_parcela
    into  :n_par_id, :n_par_valor;
    close cr_existe_parcela;
    */
    c_sql =
    'select PARCELAS.PAR_ID, PARCELAS.PAR_VALOR ' ||
    'from PARCELAS                              ' ||
    'where PARCELAS.PAR_FIN_ID = ' || :p_fin_id   ||
    '  and extract(month from PARCELAS.PAR_VENCTO) = extract(month from cast(''' || :d_par_vencto || ''' as date))' ||
    '  and extract(year from PARCELAS.PAR_VENCTO)  = extract(year  from cast(''' || :d_par_vencto || ''' as date))';

        c_resultado = c_resultado || ascii_char(10) ||
          '-- 99 --'       || ' | ' ||
          c_sql;

    execute statement c_sql
    into :n_par_id, :n_par_valor;


        c_resultado = c_resultado || ascii_char(10) ||
          '-- 11 --'       || ' | ' ||
          ' ' || coalesce(:n_par_id,0) || ' | ' ||
          ' ' || coalesce(:n_par_valor,0)
        ;



    if (coalesce(:n_par_id,0) > 0) then
    begin
      n_valor_acum = :n_par_valor;
      --inserir parcelas_detalhe
      /*
      insert into parcelas_detalhe(
          DET_ID,
          DET_ID_PAI,
          DET_PAR_ID,
          DET_DATA,
          DET_DATA_DOC,
          DET_DESCRICAO,
          DET_VALOR,
          DET_FLAG,
          DET_NUMERO,
          DET_QUANTIDADE,
          DET_PROVISIONAR)
      values(
          :n_det_id,
          :n_det_id_pai,
          :n_par_id,
          current_date,
          :p_data_doc,
          :p_descricao || ' ' || :i || '/' || :p_qtde,
          :p_valor,
          :p_cct_id,
          :i,
          :p_qtde,
          :p_provis
      );
      --update parcelas
      update parcelas set
        par_valor       = :n_valor_acum,
        par_provisionar = :p_provis
      where parcelas.par_id = :n_par_id;
      --
      */

    c_resultado = c_resultado || ascii_char(10) ||
          '-- 01 --' || ' | ' ||
          /*
          ' ' || :n_det_id      || ' | ' ||
          ' ' || :n_det_id_pai  || ' | ' ||
          ' ' || :n_par_id      || ' | ' ||
          */
          ' ' || current_date   || ' | ' ||
          ' ' || :p_data_doc    || ' | ' ||
          ' ' || :p_descricao || ' ' || :i || '/' || :p_qtde || ' | ' ||
          ' ' || :p_valor       || ' | ' ||
          ' ' || :p_cct_id      || ' | ' ||
          ' ' || :i             || ' | ' ||
          ' ' || :p_qtde        || ' | ' ||
          ' ' || :p_provis

                  ;
    suspend;

    end
    else
    begin
      --
      /*
      open  cr_gen_parcelas;
      fetch cr_gen_parcelas
      into  :n_par_id;
      close cr_gen_parcelas;
      */
      --
      if (:p_agrupar = 'S') then
        n_agrupar = :i;
      else
        n_agrupar = 1;
      --
      /*
      insert into parcelas(
          PAR_ID,
          PAR_FIN_ID,
          PAR_NUMERO,
          PAR_QUANTIDADE,
          PAR_DATA,
          PAR_FLAG,
          PAR_OBSERVACAO,
          PAR_VENCTO,
          PAR_VALOR,
          PAR_PAGO,
          PAR_PROVISIONAR)
      values(
          :n_par_id,
          :p_fin_id,
          :n_agrupar,
          :p_qtde,
          :d_par_vencto,
          :p_cct_id,
          :p_observ,
          :d_par_vencto,
          :p_valor,
          0,
          :p_provis
      );
      --
      insert into parcelas_detalhe(
          DET_ID,
          DET_ID_PAI,
          DET_PAR_ID,
          DET_DATA,
          DET_DATA_DOC,
          DET_DESCRICAO,
          DET_VALOR,
          DET_FLAG,
          DET_NUMERO,
          DET_QUANTIDADE,
          DET_PROVISIONAR)
      values(
          :n_det_id,
          :n_det_id_pai,
          :n_par_id,
          current_date,
          :p_data_doc,
          :p_descricao || ' ' || :i || '/' || :p_qtde,
          :p_valor,
          :p_cct_id,
          :i,
          :p_qtde,
          :p_provis
      );
      */
      --

    c_resultado = c_resultado || ascii_char(10) ||
          '-- 02 --' || ' | ' ||
          /*
          ' ' || :n_par_id      || ' | ' ||*/
          ' ' || :p_fin_id      || ' | ' ||
          ' ' || :n_agrupar     || ' | ' ||
          ' ' || :p_qtde        || ' | ' ||
          ' ' || :d_par_vencto  || ' | ' ||
          ' ' || :p_cct_id      || ' | ' ||
          ' ' || :p_observ      || ' | ' ||
          ' ' || :d_par_vencto  || ' | ' ||
          ' ' || :p_valor       || ' | ' ||
          ' ' || 0              || ' | ' ||
          ' ' || :p_provis
          ;

    c_resultado = c_resultado || ascii_char(10) ||
          '-- 03 --' || ' | ' ||
          /*
          ' ' || :n_det_id      || ' | ' ||
          ' ' || :n_det_id_pai  || ' | ' ||
          ' ' || :n_par_id      || ' | ' ||
          */
          ' ' || current_date   || ' | ' ||
          ' ' || :p_data_doc    || ' | ' ||
          ' ' || :p_descricao || ' ' || :i || '/' || :p_qtde || ' | ' ||
          ' ' || :p_valor       || ' | ' ||
          ' ' || :p_cct_id      || ' | ' ||
          ' ' || :i             || ' | ' ||
          ' ' || :p_qtde        || ' | ' ||
          ' ' || :p_provis

                  ;
    suspend;
    end --else
    --

    --
    i = :i +1;
    --
  end
  --
end;