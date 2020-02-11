object FTitulosVencidos: TFTitulosVencidos
  Left = 302
  Top = 167
  Width = 800
  Height = 600
  Caption = 'Titulos vencidos'
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
    Top = 542
    Width = 784
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 542
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Titulos a pagar'
      ImageIndex = 2
      object Bevel1: TBevel
        Left = 8
        Top = 4
        Width = 515
        Height = 41
      end
      object Bevel2: TBevel
        Left = 8
        Top = 52
        Width = 761
        Height = 469
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
      object Bevel4: TBevel
        Left = 528
        Top = 4
        Width = 241
        Height = 41
      end
      object Label4: TLabel
        Left = 616
        Top = 19
        Width = 79
        Height = 16
        Caption = 'Soma titulos: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 704
        Top = 19
        Width = 7
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cxGrid2: TcxGrid
        Left = 12
        Top = 72
        Width = 753
        Height = 449
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = cxGrid2DBTableView1CustomDrawCell
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
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid2DBTableView1PAR_VALOR
            end
            item
              Format = '0.00'
              Position = spFooter
              Column = cxGrid2DBTableView1PAR_VALOR
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
            end
            item
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid2DBTableView1PAR_VALOR
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cxGrid2DBTableView1SELECAO: TcxGridDBColumn
            DataBinding.FieldName = 'SELECAO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Options.Filtering = False
            Width = 30
            IsCaptionAssigned = True
          end
          object cxGrid2DBTableView1FIN_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'FIN_DESCRICAO'
            Width = 299
          end
          object cxGrid2DBTableView1N_PARCELA: TcxGridDBColumn
            Caption = 'Numero parcelas'
            DataBinding.FieldName = 'N_PARCELA'
            Width = 102
          end
          object cxGrid2DBTableView1PAR_VENCTO: TcxGridDBColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'PAR_VENCTO'
            Width = 100
          end
          object cxGrid2DBTableView1PAR_VALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'PAR_VALOR'
            Width = 100
          end
          object cxGrid2DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn
            Caption = 'Valor pago'
            DataBinding.FieldName = 'PAR_VALOR_PAGO'
            Width = 100
          end
          object cxGrid2DBTableView1PAR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_PAGO'
            Visible = False
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object BitBtn2: TBitBtn
        Left = 544
        Top = 13
        Width = 51
        Height = 25
        Caption = 'Calcular'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object rgAtivo: TRadioGroup
        Left = 332
        Top = 8
        Width = 183
        Height = 35
        Columns = 3
        ItemIndex = 1
        Items.Strings = (
          'Todos'
          'Ativo'
          'Inativo')
        TabOrder = 2
        OnClick = rgAtivoClick
      end
    end
  end
  object qAPagar: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransactionRead
    SQL.Strings = (
      'select '#39'N'#39' selecao,financeiro.fin_descricao,'
      
        '       parcelas.par_numero||'#39'/'#39'||parcelas.par_quantidade n_parce' +
        'la,'
      '       parcelas.par_vencto,'
      '       parcelas.par_valor,'
      '       parcelas.par_valor_pago,'
      '       parcelas.par_pago'
      '  from parcelas'
      ' join financeiro on (financeiro.fin_id=parcelas.par_fin_id)'
      ' where 1=1'
      '   and parcelas.par_vencto<current_date'
      '   and parcelas.par_pago=0'
      
        '   and ((coalesce(financeiro.fin_inativo,'#39'N'#39') = :ativo ) or ( :a' +
        'tivo2 = '#39' '#39' ))'
      '   and financeiro.fin_debcred='#39'D'#39
      '   and coalesce(parcelas.par_provisionar,'#39'N'#39')='#39'N'#39
      '   and coalesce(financeiro.fin_provisionar,'#39'N'#39')='#39'N'#39
      '   and exists (select usuario_visao.UVIS_USU_FILHO'
      '                 from usuario_visao'
      '                where usuario_visao.UVIS_USU_PAI=:usuario'
      
        '                  and usuario_visao.UVIS_USU_FILHO=financeiro.FI' +
        'N_USU_ID )'
      'order by parcelas.par_pago asc,financeiro.fin_descricao')
    Left = 264
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
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
    Left = 392
    Top = 176
  end
  object cdsAPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAPagar'
    Left = 344
    Top = 176
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
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarPAR_VALOR_PAGO: TBCDField
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      DisplayFormat = '0.00'
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
    Left = 312
    Top = 176
  end
end
