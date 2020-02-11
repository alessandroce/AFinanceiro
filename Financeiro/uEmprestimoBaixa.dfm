object FEmprestimoBaixa: TFEmprestimoBaixa
  Left = 287
  Top = 168
  Width = 800
  Height = 600
  Caption = 'Baixa Emprestimo'
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
      Caption = 'Emprestimo a pagar'
      ImageIndex = 2
      object Bevel1: TBevel
        Left = 8
        Top = 4
        Width = 516
        Height = 70
      end
      object Bevel2: TBevel
        Left = 8
        Top = 90
        Width = 761
        Height = 371
      end
      object Label1: TLabel
        Left = 16
        Top = 96
        Width = 176
        Height = 13
        Caption = 'Emprestimo a pagar no periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 24
        Top = 55
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
      object Bevel4: TBevel
        Left = 528
        Top = 4
        Width = 241
        Height = 69
      end
      object Label4: TLabel
        Left = 544
        Top = 12
        Width = 12
        Height = 16
        Caption = '(-)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblDebito: TLabel
        Left = 648
        Top = 12
        Width = 7
        Height = 16
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 544
        Top = 32
        Width = 15
        Height = 16
        Caption = '(+)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 544
        Top = 53
        Width = 15
        Height = 16
        Caption = '(=)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblResultado: TLabel
        Left = 648
        Top = 53
        Width = 7
        Height = 16
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Bevel3: TBevel
        Left = 8
        Top = 467
        Width = 446
        Height = 47
      end
      object cxGrid2: TcxGrid
        Left = 12
        Top = 120
        Width = 753
        Height = 334
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
              Column = cxGrid2DBTableView1PAR_VALOR
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          object cxGrid2DBTableView1SELECAO: TcxGridDBColumn
            DataBinding.FieldName = 'SELECAO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 26
            IsCaptionAssigned = True
          end
          object cxGrid2DBTableView1FIN_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'FIN_DESCRICAO'
            Width = 314
          end
          object cxGrid2DBTableView1N_PARCELA: TcxGridDBColumn
            Caption = 'Quant parcelas'
            DataBinding.FieldName = 'N_PARCELA'
            Width = 93
          end
          object cxGrid2DBTableView1PAR_VENCTO: TcxGridDBColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'PAR_VENCTO'
            Width = 81
          end
          object cxGrid2DBTableView1PAR_VALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'PAR_VALOR'
          end
          object cxGrid2DBTableView1PAR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_PAGO'
            Visible = False
            GroupIndex = 0
          end
          object cxGrid2DBTableView1DIAS_ATRASO: TcxGridDBColumn
            Caption = 'Dias atraso'
            DataBinding.FieldName = 'DIAS_ATRASO'
            Width = 80
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object btOKTitpagar: TBitBtn
        Left = 440
        Top = 26
        Width = 64
        Height = 32
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btOKTitpagarClick
      end
      object cbMes: TComboBox
        Left = 96
        Top = 51
        Width = 113
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
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
        Top = 50
        Width = 65
        Height = 22
        MaxLength = 4
        MaxValue = 2050
        MinValue = 2010
        TabOrder = 3
        Value = 2015
      end
      object btCalcular: TBitBtn
        Left = 696
        Top = 26
        Width = 64
        Height = 32
        Caption = 'Calcular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = btCalcularClick
      end
      object rgAtivo: TRadioGroup
        Left = 25
        Top = 8
        Width = 256
        Height = 35
        Columns = 3
        ItemIndex = 1
        Items.Strings = (
          'Todos'
          'Ativo'
          'Inativo')
        TabOrder = 5
      end
      object edCredito: TEdit
        Left = 568
        Top = 30
        Width = 87
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Text = '0'
        OnKeyPress = edCreditoKeyPress
      end
      object BitBtn1: TBitBtn
        Left = 192
        Top = 96
        Width = 75
        Height = 20
        Caption = 'Todos'
        TabOrder = 7
        OnClick = BitBtn1Click
      end
      object BitBtn3: TBitBtn
        Left = 272
        Top = 96
        Width = 75
        Height = 20
        Caption = 'Inverter'
        TabOrder = 8
        OnClick = BitBtn3Click
      end
      object btDesfazerPagamento: TBitBtn
        Left = 458
        Top = 475
        Width = 150
        Height = 35
        Caption = 'Desfazer pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = btDesfazerPagamentoClick
      end
      object btEfetuarPagamento: TBitBtn
        Left = 616
        Top = 475
        Width = 150
        Height = 35
        Caption = 'Efetuar pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = btEfetuarPagamentoClick
      end
      object btImprimir: TBitBtn
        Left = 16
        Top = 475
        Width = 126
        Height = 35
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = btImprimirClick
      end
      object btReceber: TBitBtn
        Left = 656
        Top = 31
        Width = 20
        Height = 22
        Caption = '...'
        TabOrder = 12
        OnClick = btReceberClick
      end
    end
  end
  object qAPagar: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransactionRead
    SQL.Strings = (
      'select *'
      
        '  from sp_apagar(:p_dataatraso, :p_mes, :p_ano, :p_atraso, :p_at' +
        'ivo, :p_usuario)'
      ' order by par_pago asc,fin_descricao')
    Left = 264
    Top = 176
    ParamData = <
      item
        DataType = ftDate
        Name = 'p_dataatraso'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_atraso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_ativo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_usuario'
        ParamType = ptInput
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
      DisplayFormat = '0.00'
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
    object qAPagarPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PARCELAS.PAR_ID'
      Required = True
    end
    object qAPagarDIAS_ATRASO: TIntegerField
      FieldName = 'DIAS_ATRASO'
      ProviderFlags = []
    end
  end
  object dsAPagar: TDataSource
    DataSet = cdsAPagar
    Left = 392
    Top = 176
  end
  object cdsAPagar: TClientDataSet
    Active = True
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
    object cdsAPagarPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PARCELAS.PAR_ID'
      Required = True
    end
    object cdsAPagarDIAS_ATRASO: TIntegerField
      FieldName = 'DIAS_ATRASO'
      ProviderFlags = []
    end
  end
  object dspAPagar: TDataSetProvider
    DataSet = qAPagar
    Left = 312
    Top = 176
  end
  object dsAPagarRel: TDataSource
    DataSet = qAPagar
    Left = 272
    Top = 224
  end
  object qSaldo: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransactionRead
    SQL.Strings = (
      'select valor'
      '  from sp_rel_tituloanual_saldo_mes(:ano,:usu,:mes)'
      ' where ordem = 1'
      '')
    Left = 608
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usu'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mes'
        ParamType = ptUnknown
      end>
    object qSaldoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'SP_REL_TITULOANUAL_SALDO_MES.VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
  end
end
