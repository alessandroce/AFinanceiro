object FTitulosPeriodo: TFTitulosPeriodo
  Left = 231
  Top = 171
  Width = 800
  Height = 600
  Caption = 'Titulos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 550
    Width = 792
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 792
    Height = 550
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Titulos a pagar'
      ImageIndex = 2
      object Bevel2: TBevel
        Left = 8
        Top = 52
        Width = 761
        Height = 228
      end
      object Bevel3: TBevel
        Left = 8
        Top = 291
        Width = 761
        Height = 227
      end
      object Label1: TLabel
        Left = 16
        Top = 56
        Width = 150
        Height = 13
        Caption = 'Titulos a pagar no periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 295
        Width = 155
        Height = 13
        Caption = 'Titulos j'#225' pagos no periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 24
        Top = 19
        Width = 44
        Height = 13
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 8
        Top = 4
        Width = 401
        Height = 41
      end
      object Bevel4: TBevel
        Left = 416
        Top = 4
        Width = 353
        Height = 41
      end
      object Label4: TLabel
        Left = 496
        Top = 19
        Width = 63
        Height = 13
        Caption = 'Soma titulos: '
      end
      object Label5: TLabel
        Left = 560
        Top = 19
        Width = 6
        Height = 13
        Caption = '0'
      end
      object cxGrid2: TcxGrid
        Left = 12
        Top = 72
        Width = 753
        Height = 200
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsAPagar
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skCount
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1SELECAO: TcxGridDBColumn
            DataBinding.FieldName = 'SELECAO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 26
            IsCaptionAssigned = True
          end
          object cxGrid2DBTableView1FIN_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_DESCRICAO'
          end
          object cxGrid2DBTableView1N_PARCELA: TcxGridDBColumn
            DataBinding.FieldName = 'N_PARCELA'
          end
          object cxGrid2DBTableView1PAR_VENCTO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VENCTO'
          end
          object cxGrid2DBTableView1PAR_VALOR: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR'
          end
          object cxGrid2DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR_PAGO'
          end
          object cxGrid2DBTableView1PAR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_PAGO'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 12
        Top = 312
        Width = 753
        Height = 200
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPago
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
            end
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1PAR_VALOR
            end
            item
              Kind = skSum
              Column = cxGridDBTableView1PAR_VALOR_PAGO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1FIN_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_DESCRICAO'
            Width = 300
          end
          object cxGridDBTableView1N_PARCELA: TcxGridDBColumn
            DataBinding.FieldName = 'N_PARCELA'
          end
          object cxGridDBTableView1PAR_VENCTO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VENCTO'
          end
          object cxGridDBTableView1PAR_VALOR: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR'
          end
          object cxGridDBTableView1PAR_VALOR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR_PAGO'
          end
          object cxGridDBTableView1PAR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_PAGO'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object btOKTitpagar: TBitBtn
        Left = 320
        Top = 13
        Width = 30
        Height = 25
        Caption = 'OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btOKTitpagarClick
      end
      object cbMes: TComboBox
        Left = 96
        Top = 15
        Width = 113
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = 'JANEIRO'
        Items.Strings = (
          'JANEIRO'
          'FEVEREIRO'
          'MAR'#199'O'
          'ABRIL'
          'MAIO'
          'JUNHO'
          'JULHO'
          'AGOSTO'
          'SETEMBRO'
          'OUTUBRO'
          'NOVEMBRO'
          'DEZEMBRO')
      end
      object speAno: TSpinEdit
        Left = 216
        Top = 14
        Width = 65
        Height = 22
        MaxLength = 4
        MaxValue = 2050
        MinValue = 2010
        TabOrder = 4
        Value = 2015
      end
      object BitBtn2: TBitBtn
        Left = 424
        Top = 13
        Width = 51
        Height = 25
        Caption = 'Calcular'
        TabOrder = 5
        OnClick = BitBtn2Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Titulos a vencer'
      ImageIndex = 3
      object Label9: TLabel
        Left = 24
        Top = 19
        Width = 44
        Height = 13
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel5: TBevel
        Left = 8
        Top = 4
        Width = 401
        Height = 41
      end
      object Bevel7: TBevel
        Left = 416
        Top = 4
        Width = 353
        Height = 41
      end
      object Label13: TLabel
        Left = 16
        Top = 56
        Width = 150
        Height = 13
        Caption = 'Titulos a pagar no periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel8: TBevel
        Left = 8
        Top = 52
        Width = 761
        Height = 467
      end
      object BitBtn1: TBitBtn
        Left = 320
        Top = 13
        Width = 30
        Height = 25
        Caption = 'OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object ComboBox1: TComboBox
        Left = 96
        Top = 15
        Width = 113
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = 'JANEIRO'
        Items.Strings = (
          'JANEIRO'
          'FEVEREIRO'
          'MAR'#199'O'
          'ABRIL'
          'MAIO'
          'JUNHO'
          'JULHO'
          'AGOSTO'
          'SETEMBRO'
          'OUTUBRO'
          'NOVEMBRO'
          'DEZEMBRO')
      end
      object SpinEdit1: TSpinEdit
        Left = 216
        Top = 14
        Width = 65
        Height = 22
        MaxLength = 4
        MaxValue = 2050
        MinValue = 2010
        TabOrder = 2
        Value = 2015
      end
      object cxGrid5: TcxGrid
        Left = 12
        Top = 72
        Width = 753
        Height = 441
        TabOrder = 3
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = cxGridDBTableView2CustomDrawCell
          DataController.DataSource = dsAVencer
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGridDBColumn4
            end
            item
              Kind = skSum
              Column = cxGridDBColumn4
            end
            item
              Kind = skSum
              Column = cxGridDBColumn5
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGridDBColumn5
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Column = cxGridDBColumn5
            end
            item
              Kind = skSum
              Column = cxGridDBColumn4
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_DESCRICAO'
            Width = 300
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'N_PARCELA'
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VENCTO'
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR'
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR_PAGO'
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_PAGO'
            Visible = False
            GroupIndex = 0
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object qCadastro: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    AfterOpen = qCadastroAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from financeiro'
      'where'
      '  FIN_ID = :OLD_FIN_ID')
    InsertSQL.Strings = (
      'insert into financeiro'
      
        '  (FIN_ID, FIN_DATA, FIN_DESCRICAO, FIN_PES_ID, FIN_CAT_ID, FIN_' +
        'DEBCRED)'
      'values'
      
        '  (:FIN_ID, :FIN_DATA, :FIN_DESCRICAO, :FIN_PES_ID, :FIN_CAT_ID,' +
        ' '
      ':FIN_DEBCRED)')
    RefreshSQL.Strings = (
      'Select *'
      'from financeiro '
      'where'
      '  FIN_ID = :FIN_ID')
    SelectSQL.Strings = (
      'select * from financeiro f where f.fin_id=:FIN_ID')
    ModifySQL.Strings = (
      'update financeiro'
      'set'
      '  FIN_ID = :FIN_ID,'
      '  FIN_DATA = :FIN_DATA,'
      '  FIN_DESCRICAO = :FIN_DESCRICAO,'
      '  FIN_PES_ID = :FIN_PES_ID,'
      '  FIN_CAT_ID = :FIN_CAT_ID,'
      '  FIN_DEBCRED = :FIN_DEBCRED'
      'where'
      '  FIN_ID = :OLD_FIN_ID')
    GeneratorField.Field = 'FIN_ID'
    GeneratorField.Generator = 'GEN_FINANCEIRO'
    Left = 408
    Top = 384
    object qCadastroFIN_ID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'FIN_ID'
      Origin = 'FINANCEIRO.FIN_ID'
      Required = True
    end
    object qCadastroFIN_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'FIN_DATA'
      Origin = 'FINANCEIRO.FIN_DATA'
    end
    object qCadastroFIN_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FIN_DESCRICAO'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object qCadastroFIN_PES_ID: TIntegerField
      FieldName = 'FIN_PES_ID'
      Origin = 'FINANCEIRO.FIN_PES_ID'
      Required = True
    end
    object qCadastroFIN_CAT_ID: TIntegerField
      FieldName = 'FIN_CAT_ID'
      Origin = 'FINANCEIRO.FIN_CAT_ID'
      Required = True
    end
    object qCadastroFIN_DEBCRED: TIBStringField
      DisplayLabel = 'Deb./Cred.'
      FieldName = 'FIN_DEBCRED'
      Origin = 'FINANCEIRO.FIN_DEBCRED'
      FixedChar = True
      Size = 1
    end
    object qCadastroFIN_TIPO_DC: TIntegerField
      FieldName = 'FIN_TIPO_DC'
      Origin = 'FINANCEIRO.FIN_TIPO_DC'
    end
  end
  object qConsulta: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransactionRead
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select financeiro.fin_id,'
      '       financeiro.fin_data,'
      '       financeiro.fin_debcred,'
      '       financeiro.fin_descricao,'
      '       pessoa.pes_nome_fantasia,'
      '       categoria.cat_descricao,'
      '       categoria_grupo.catg_descricao,'
      '       a.par_pago,'
      '       a.n_parcela,'
      '       a.par_valor,'
      '       par_valor_pago,'
      '       a.par_vencto'
      '  from financeiro'
      '  join pessoa on pessoa.pes_id=financeiro.fin_pes_id'
      '  join categoria on categoria.cat_id=financeiro.fin_cat_id'
      
        '  join categoria_grupo on categoria_grupo.catg_id=categoria.cat_' +
        'catg_id'
      '  join (select pa.par_pago, pa.par_fin_id,'
      '               pa.par_numero||'#39'/'#39'||pa.par_quantidade n_parcela,'
      '               pa.par_valor,'
      '               pa.par_valor_pago,'
      '               pa.par_vencto'
      ''
      '          from parcelas pa'
      '         where 1=1'
      '           and extract(month from pa.par_vencto) = :vmes'
      '           and extract(year from pa.par_vencto) = :vano'
      '         ) a on (a.par_fin_id=financeiro.fin_id)'
      'order by a.par_pago,financeiro.fin_descricao')
    Left = 408
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vmes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vano'
        ParamType = ptUnknown
      end>
    object qConsultaFIN_ID: TIntegerField
      FieldName = 'FIN_ID'
      Origin = 'FINANCEIRO.FIN_ID'
      Required = True
    end
    object qConsultaFIN_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'FIN_DATA'
      Origin = 'FINANCEIRO.FIN_DATA'
    end
    object qConsultaFIN_DEBCRED: TIBStringField
      DisplayLabel = 'Debito/Credito'
      FieldName = 'FIN_DEBCRED'
      Origin = 'FINANCEIRO.FIN_DEBCRED'
      FixedChar = True
      Size = 1
    end
    object qConsultaFIN_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FIN_DESCRICAO'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object qConsultaPES_NOME_FANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'PES_NOME_FANTASIA'
      Origin = 'PESSOA.PES_NOME_FANTASIA'
      Size = 100
    end
    object qConsultaCAT_DESCRICAO: TIBStringField
      DisplayLabel = 'Categoria'
      FieldName = 'CAT_DESCRICAO'
      Origin = 'CATEGORIA.CAT_DESCRICAO'
      Size = 100
    end
    object qConsultaCATG_DESCRICAO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'CATG_DESCRICAO'
      Origin = 'CATEGORIA_GRUPO.CATG_DESCRICAO'
      Size = 100
    end
    object qConsultaPAR_PAGO: TIntegerField
      DisplayLabel = 'Pago'
      FieldName = 'PAR_PAGO'
      Origin = 'PARCELAS.PAR_PAGO'
    end
    object qConsultaN_PARCELA: TIBStringField
      DisplayLabel = 'Num Parcela'
      FieldName = 'N_PARCELA'
      Size = 23
    end
    object qConsultaPAR_VALOR: TIBBCDField
      DisplayLabel = 'Valor parcela'
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_VALOR_PAGO: TIBBCDField
      DisplayLabel = 'Valor pago parcela'
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_VENCTO: TDateField
      DisplayLabel = 'Data Vencto'
      FieldName = 'PAR_VENCTO'
      Origin = 'PARCELAS.PAR_VENCTO'
    end
  end
  object dsCadastro: TDataSource
    DataSet = qCadastro
    Left = 448
    Top = 384
  end
  object dsConsulta: TDataSource
    DataSet = qConsulta
    Left = 448
    Top = 432
  end
  object qAPagar: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransactionRead
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '#39'N'#39' selecao,financeiro.fin_descricao,'
      
        '       parcelas.par_numero||'#39'/'#39'||parcelas.par_quantidade n_parce' +
        'la,'
      '       parcelas.par_vencto,'
      '       parcelas.par_valor,'
      '       parcelas.par_valor_pago,'
      '       parcelas.par_pago'
      '  from parcelas'
      ' join financeiro on financeiro.fin_id=parcelas.par_fin_id'
      ' where 1=1'
      '   and extract(month from parcelas.par_vencto) = :mes'
      '   and extract(year from parcelas.par_vencto) = :ano'
      '   and parcelas.par_pago = :pago'
      'order by financeiro.fin_descricao')
    Left = 280
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pago'
        ParamType = ptUnknown
      end>
    object qAPagarFIN_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FIN_DESCRICAO'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object qAPagarN_PARCELA: TIBStringField
      DisplayLabel = 'Num parcelas'
      FieldName = 'N_PARCELA'
      Size = 23
    end
    object qAPagarPAR_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'PAR_VENCTO'
      Origin = 'PARCELAS.PAR_VENCTO'
    end
    object qAPagarPAR_VALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object qAPagarPAR_VALOR_PAGO: TIBBCDField
      DisplayLabel = 'Valor pago'
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object qAPagarPAR_PAGO: TIntegerField
      DisplayLabel = 'Pago'
      FieldName = 'PAR_PAGO'
      Origin = 'PARCELAS.PAR_PAGO'
    end
    object qAPagarSELECAO: TIBStringField
      FieldName = 'SELECAO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsAPagar: TDataSource
    DataSet = cdsAPagar
    Left = 408
    Top = 88
  end
  object dsPago: TDataSource
    DataSet = qPago
    Left = 552
    Top = 80
  end
  object qPago: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransactionRead
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select financeiro.fin_descricao,'
      
        '       parcelas.par_numero||'#39'/'#39'||parcelas.par_quantidade n_parce' +
        'la,'
      '       parcelas.par_vencto,'
      '       parcelas.par_valor,'
      '       parcelas.par_valor_pago,'
      '       parcelas.par_pago'
      '  from parcelas'
      ' join financeiro on financeiro.fin_id=parcelas.par_fin_id'
      ' where 1=1'
      '   and extract(month from parcelas.par_vencto) = :mes'
      '   and extract(year from parcelas.par_vencto) = :ano'
      '   and parcelas.par_pago = :pago'
      'order by financeiro.fin_descricao')
    Left = 504
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pago'
        ParamType = ptUnknown
      end>
    object qPagoFIN_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FIN_DESCRICAO'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object qPagoN_PARCELA: TIBStringField
      DisplayLabel = 'Num parcelas'
      FieldName = 'N_PARCELA'
      Size = 23
    end
    object qPagoPAR_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'PAR_VENCTO'
      Origin = 'PARCELAS.PAR_VENCTO'
    end
    object qPagoPAR_VALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object qPagoPAR_VALOR_PAGO: TIBBCDField
      DisplayLabel = 'Valor pago'
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object qPagoPAR_PAGO: TIntegerField
      DisplayLabel = 'Pago'
      FieldName = 'PAR_PAGO'
      Origin = 'PARCELAS.PAR_PAGO'
    end
  end
  object qParcelas: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from parcelas'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    InsertSQL.Strings = (
      'insert into parcelas'
      '  (PAR_ID, PAR_FIN_ID, PAR_NUMERO, PAR_QUANTIDADE, PAR_VENCTO, '
      'PAR_VALOR, '
      '   PAR_VALOR_PAGO, PAR_PAGO)'
      'values'
      
        '  (:PAR_ID, :PAR_FIN_ID, :PAR_NUMERO, :PAR_QUANTIDADE, :PAR_VENC' +
        'TO, '
      ':PAR_VALOR, '
      '   :PAR_VALOR_PAGO, :PAR_PAGO)')
    RefreshSQL.Strings = (
      'Select *'
      'from parcelas '
      'where'
      '  PAR_ID = :PAR_ID')
    SelectSQL.Strings = (
      'select *'
      '  from parcelas p'
      
        ' where extract(year from p.par_vencto) = extract(year from curre' +
        'nt_date)'
      '   and p.par_fin_id=:FIN_ID')
    ModifySQL.Strings = (
      'update parcelas'
      'set'
      '  PAR_ID = :PAR_ID,'
      '  PAR_FIN_ID = :PAR_FIN_ID,'
      '  PAR_NUMERO = :PAR_NUMERO,'
      '  PAR_QUANTIDADE = :PAR_QUANTIDADE,'
      '  PAR_VENCTO = :PAR_VENCTO,'
      '  PAR_VALOR = :PAR_VALOR,'
      '  PAR_VALOR_PAGO = :PAR_VALOR_PAGO,'
      '  PAR_PAGO = :PAR_PAGO'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    GeneratorField.Field = 'PAR_ID'
    GeneratorField.Generator = 'GEN_PARCELAS'
    DataSource = dsCadastro
    Left = 408
    Top = 336
    object qParcelasPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PARCELAS.PAR_ID'
      Required = True
    end
    object qParcelasPAR_FIN_ID: TIntegerField
      FieldName = 'PAR_FIN_ID'
      Origin = 'PARCELAS.PAR_FIN_ID'
      Required = True
    end
    object qParcelasPAR_NUMERO: TIntegerField
      FieldName = 'PAR_NUMERO'
      Origin = 'PARCELAS.PAR_NUMERO'
    end
    object qParcelasPAR_QUANTIDADE: TIntegerField
      FieldName = 'PAR_QUANTIDADE'
      Origin = 'PARCELAS.PAR_QUANTIDADE'
    end
    object qParcelasPAR_VENCTO: TDateField
      FieldName = 'PAR_VENCTO'
      Origin = 'PARCELAS.PAR_VENCTO'
    end
    object qParcelasPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_VALOR_PAGO: TIBBCDField
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_PAGO: TIntegerField
      FieldName = 'PAR_PAGO'
      Origin = 'PARCELAS.PAR_PAGO'
    end
  end
  object dsParcelas: TDataSource
    DataSet = qParcelas
    Left = 448
    Top = 336
  end
  object qAVencer: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransactionRead
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select financeiro.fin_descricao,'
      
        '       parcelas.par_numero||'#39'/'#39'||parcelas.par_quantidade n_parce' +
        'la,'
      '       parcelas.par_vencto,'
      '       parcelas.par_valor,'
      '       parcelas.par_valor_pago,'
      '       parcelas.par_pago'
      '  from parcelas'
      ' join financeiro on financeiro.fin_id=parcelas.par_fin_id'
      ' where 1=1'
      '   and extract(month from parcelas.par_vencto) = :mes'
      '   and extract(year from parcelas.par_vencto) = :ano'
      'order by financeiro.fin_descricao')
    Left = 504
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ano'
        ParamType = ptUnknown
      end>
    object IBStringField1: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FIN_DESCRICAO'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object IBStringField2: TIBStringField
      DisplayLabel = 'Num parcelas'
      FieldName = 'N_PARCELA'
      Size = 23
    end
    object DateField1: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'PAR_VENCTO'
      Origin = 'PARCELAS.PAR_VENCTO'
    end
    object IBBCDField1: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      DisplayLabel = 'Valor pago'
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Pago'
      FieldName = 'PAR_PAGO'
      Origin = 'PARCELAS.PAR_PAGO'
    end
  end
  object dsAVencer: TDataSource
    DataSet = qAVencer
    Left = 552
    Top = 136
  end
  object cdsAPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAPagar'
    Left = 360
    Top = 88
    object cdsAPagarFIN_DESCRICAO: TStringField
      FieldName = 'FIN_DESCRICAO'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object cdsAPagarN_PARCELA: TStringField
      FieldName = 'N_PARCELA'
      Size = 23
    end
    object cdsAPagarPAR_VENCTO: TDateField
      FieldName = 'PAR_VENCTO'
      Origin = 'PARCELAS.PAR_VENCTO'
    end
    object cdsAPagarPAR_VALOR: TBCDField
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object cdsAPagarPAR_VALOR_PAGO: TBCDField
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object cdsAPagarPAR_PAGO: TIntegerField
      FieldName = 'PAR_PAGO'
      Origin = 'PARCELAS.PAR_PAGO'
    end
    object cdsAPagarSELECAO: TStringField
      FieldName = 'SELECAO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspAPagar: TDataSetProvider
    DataSet = qAPagar
    Left = 328
    Top = 88
  end
end
