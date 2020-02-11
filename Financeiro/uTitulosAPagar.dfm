object FTitulosAPagar: TFTitulosAPagar
  Left = 219
  Top = 128
  Width = 800
  Height = 600
  Caption = 'Titulos a pagar'
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
    Top = 543
    Width = 784
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 543
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Titulos a pagar'
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
      object rbImpTudo: TRadioButton
        Left = 152
        Top = 474
        Width = 57
        Height = 17
        Caption = 'Tudo'
        Checked = True
        TabOrder = 12
        TabStop = True
      end
      object rbImpPrevPag: TRadioButton
        Left = 208
        Top = 474
        Width = 123
        Height = 17
        Caption = 'Previs'#227'o pagamento'
        TabOrder = 13
      end
      object cbConsiderarAtrasados: TCheckBox
        Left = 296
        Top = 20
        Width = 137
        Height = 17
        Caption = 'Considerar atrasados'
        TabOrder = 14
      end
      object btReceber: TBitBtn
        Left = 656
        Top = 31
        Width = 20
        Height = 22
        Caption = '...'
        TabOrder = 15
        OnClick = btReceberClick
      end
      object cbSomatoria: TCheckBox
        Left = 344
        Top = 474
        Width = 97
        Height = 17
        Caption = 'Com Somat'#243'ria'
        TabOrder = 16
      end
      object RadioButton1: TRadioButton
        Left = 152
        Top = 493
        Width = 113
        Height = 17
        Caption = 'Detalhado'
        TabOrder = 17
      end
    end
  end
  object qAPagar: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransactionRead
    BufferChunks = 1000
    CachedUpdates = False
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
  object frxReport1: TfrxReport
    Version = '4.9.38'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42503.689077060200000000
    ReportOptions.LastChange = 42859.496609270800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var '
      '    bVisible : Boolean;'
      
        '    sSomatoria : String;                                        ' +
        '          '
      '      '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo3.Text      := '#39'M'#202'S DE '#39'+<MESREFERENCIA>;'
      '  mCredito.Text   := '#39'CREDITO: '#39' +<CREDITO>;       '
      '  mDebito.Text    := '#39'DEBITO: '#39'  +<DEBITO>;    '
      '  mResultado.Text := '#39'RESULTADO: '#39'+<RESULTADO>;'
      ''
      ' (*'
      '  sSomatoria := <SOMATORIA>;'
      '  ShowMessage( sSomatoria );'
      '          '
      '  bVisible           := false;//(<SOMATORIA> = '#39'S'#39');'
      '  mTotal.Visible     := bVisible;'
      '  mCredito.Visible   := bVisible;'
      '  mDebito.Visible    := bVisible;'
      '  mResultado.Visible := bVisible;                          '
      ' *)            '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  MasterData1.Visible := (<frxAPagarPrevisao."PAR_PAGO">=0);    ' +
        '    '
      '  if <frxAPagarPrevisao."SELECAO">='#39'S'#39' then'
      '  begin              '
      '    frxAPagarFIN_DESCRICAO.Font.Color := clBlack;'
      '    frxAPagarN_PARCELA.Font.Color := clBlack;  '
      '    frxAPagarPAR_VENCTO.Font.Color := clBlack;  '
      '    frxAPagarPAR_VALOR.Font.Color := clBlack;'
      ''
      '    frxAPagarFIN_DESCRICAO.Font.Style := 0;'
      '    frxAPagarN_PARCELA.Font.Style     := 0;  '
      '    frxAPagarPAR_VENCTO.Font.Style    := 0;  '
      '    frxAPagarPAR_VALOR.Font.Style     := 0;'
      '  end                '
      '  else'
      '  begin              '
      '    frxAPagarFIN_DESCRICAO.Font.Color := clRed;'
      '    frxAPagarN_PARCELA.Font.Color := clRed;  '
      '    frxAPagarPAR_VENCTO.Font.Color := clRed;  '
      '    frxAPagarPAR_VALOR.Font.Color := clRed;'
      '      '
      '    frxAPagarFIN_DESCRICAO.Font.Style := fsStrikeOut;'
      '    frxAPagarN_PARCELA.Font.Style     := fsStrikeOut;  '
      '    frxAPagarPAR_VENCTO.Font.Style    := fsStrikeOut;  '
      '    frxAPagarPAR_VALOR.Font.Style     := fsStrikeOut;'
      '      '
      '  end;                '
      '  //if MasterData1.Visible then        '
      '  //cbPagar.Checked := (<frxAPagarPrevisao."SELECAO">='#39'S'#39');'
      '  if <frxAPagarPrevisao."DIAS_ATRASO"> =0 then'
      '    Memo15.Text := '#39#39
      '  else'
      '  if <frxAPagarPrevisao."DIAS_ATRASO"> >0 then'
      '    Memo15.Text := <frxAPagarPrevisao."DIAS_ATRASO">;     '
      '      '
      'end;'
      ''
      'begin'
      ''
      'end.                                    ')
    Left = 68
    Top = 216
    Datasets = <
      item
        DataSet = frxAPagarPrevisao
        DataSetName = 'frxAPagarPrevisao'
      end>
    Variables = <
      item
        Name = 'MESREFERENCIA'
        Value = Null
      end
      item
        Name = 'DEBITO'
        Value = Null
      end
      item
        Name = 'CREDITO'
        Value = Null
      end
      item
        Name = 'RESULTADO'
        Value = Null
      end
      item
        Name = 'SOMATORIA'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 37.795275590000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO DE T'#195#141'TULOS A PAGAR - PREVIS'#195#402'O')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 582.047620000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 582.047620000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DATE] [TIME]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795275590000000000
        Top = 72.000000000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'MES DE MAIO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 18.897637800000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 404.409710000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Parcelas')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 453.543600000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Vencimento')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 532.913730000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Dias atraso')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 224.000000000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 128.000000000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxAPagarPrevisao
        DataSetName = 'frxAPagarPrevisao'
        RowCount = 0
        object Memo1: TfrxMemoView
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = 15066597
          Highlight.Condition = '<line> mod 2 = 0'
          ParentFont = False
        end
        object frxAPagarFIN_DESCRICAO: TfrxMemoView
          Left = 3.779530000000000000
          Width = 400.629918820000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxAPagarPrevisao."FIN_DESCRICAO"]')
          ParentFont = False
        end
        object frxAPagarN_PARCELA: TfrxMemoView
          Left = 404.409710000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxAPagarPrevisao."N_PARCELA"]')
          ParentFont = False
        end
        object frxAPagarPAR_VENCTO: TfrxMemoView
          Left = 453.543600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxAPagarPrevisao."PAR_VENCTO"]')
          ParentFont = False
        end
        object frxAPagarPAR_VALOR: TfrxMemoView
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxAPagarPrevisao."PAR_VALOR"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 532.913730000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxAPagarPrevisao."DIAS_ATRASO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 37.795275590000000000
        Top = 168.000000000000000000
        Width = 718.110700000000000000
        object mDebito: TfrxMemoView
          Left = 325.039580000000000000
          Top = 17.897650000000000000
          Width = 154.960639690000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Debito:')
          ParentFont = False
        end
        object mTotal: TfrxMemoView
          Top = 17.897650000000000000
          Width = 170.078476540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object mCredito: TfrxMemoView
          Left = 170.078850000000000000
          Top = 17.897650000000000000
          Width = 154.960356540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Credito: ')
          ParentFont = False
        end
        object mResultado: TfrxMemoView
          Left = 480.000310000000000000
          Top = 17.897650000000000000
          Width = 154.960639690000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAPagar
          DataSetName = 'frxAPagar'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Resultado:')
          ParentFont = False
        end
      end
    end
  end
  object frxAPagar: TfrxDBDataset
    UserName = 'frxAPagar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FIN_DESCRICAO=FIN_DESCRICAO'
      'N_PARCELA=N_PARCELA'
      'PAR_VENCTO=PAR_VENCTO'
      'PAR_VALOR=PAR_VALOR'
      'PAR_PAGO=PAR_PAGO'
      'SELECAO=SELECAO'
      'PAR_ID=PAR_ID'
      'DIAS_ATRASO=DIAS_ATRASO')
    DataSet = qAPagar
    BCDToCurrency = False
    Left = 112
    Top = 248
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 148
    Top = 192
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 188
    Top = 192
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAPagar'
    Left = 344
    Top = 256
    object cdsRelatorioFIN_DESCRICAO: TStringField
      FieldName = 'FIN_DESCRICAO'
      Size = 100
    end
    object cdsRelatorioN_PARCELA: TStringField
      FieldName = 'N_PARCELA'
      Size = 23
    end
    object cdsRelatorioPAR_VENCTO: TDateField
      FieldName = 'PAR_VENCTO'
    end
    object cdsRelatorioPAR_VALOR: TBCDField
      FieldName = 'PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object cdsRelatorioPAR_PAGO: TIntegerField
      FieldName = 'PAR_PAGO'
    end
    object cdsRelatorioSELECAO: TStringField
      FieldName = 'SELECAO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsRelatorio: TDataSource
    DataSet = cdsRelatorio
    Left = 392
    Top = 256
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
      
        '  (PAR_DATA, PAR_DESCONTOSABAT, PAR_FIN_ID, PAR_ID, PAR_JUROSMUL' +
        'TA, PAR_NUMERO, '
      
        '   PAR_OBSERVACAO, PAR_OUTACRESCIMOS, PAR_OUTDEDUCOES, PAR_PAGO,' +
        ' PAR_QUANTIDADE, '
      '   PAR_VALOR, PAR_VALOR_PAGO, PAR_VENCTO)'
      'values'
      
        '  (:PAR_DATA, :PAR_DESCONTOSABAT, :PAR_FIN_ID, :PAR_ID, :PAR_JUR' +
        'OSMULTA, '
      
        '   :PAR_NUMERO, :PAR_OBSERVACAO, :PAR_OUTACRESCIMOS, :PAR_OUTDED' +
        'UCOES, '
      
        '   :PAR_PAGO, :PAR_QUANTIDADE, :PAR_VALOR, :PAR_VALOR_PAGO, :PAR' +
        '_VENCTO)')
    RefreshSQL.Strings = (
      'Select '
      '  PAR_ID,'
      '  PAR_FIN_ID,'
      '  PAR_NUMERO,'
      '  PAR_QUANTIDADE,'
      '  PAR_VENCTO,'
      '  PAR_VALOR,'
      '  PAR_VALOR_PAGO,'
      '  PAR_PAGO,'
      '  PAR_OBSERVACAO,'
      '  PAR_DATA,'
      '  PAR_DESCONTOSABAT,'
      '  PAR_OUTDEDUCOES,'
      '  PAR_JUROSMULTA,'
      '  PAR_OUTACRESCIMOS'
      'from parcelas '
      'where'
      '  PAR_ID = :PAR_ID')
    SelectSQL.Strings = (
      'select parcelas.* from parcelas'
      ' where par_id = :PAR_ID')
    ModifySQL.Strings = (
      'update parcelas'
      'set'
      '  PAR_DATA = :PAR_DATA,'
      '  PAR_DESCONTOSABAT = :PAR_DESCONTOSABAT,'
      '  PAR_FIN_ID = :PAR_FIN_ID,'
      '  PAR_ID = :PAR_ID,'
      '  PAR_JUROSMULTA = :PAR_JUROSMULTA,'
      '  PAR_NUMERO = :PAR_NUMERO,'
      '  PAR_OBSERVACAO = :PAR_OBSERVACAO,'
      '  PAR_OUTACRESCIMOS = :PAR_OUTACRESCIMOS,'
      '  PAR_OUTDEDUCOES = :PAR_OUTDEDUCOES,'
      '  PAR_PAGO = :PAR_PAGO,'
      '  PAR_QUANTIDADE = :PAR_QUANTIDADE,'
      '  PAR_VALOR = :PAR_VALOR,'
      '  PAR_VALOR_PAGO = :PAR_VALOR_PAGO,'
      '  PAR_VENCTO = :PAR_VENCTO'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    GeneratorField.Field = 'PAR_ID'
    GeneratorField.Generator = 'GEN_PARCELAS'
    Left = 408
    Top = 328
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
      DisplayLabel = 'Numero'
      FieldName = 'PAR_NUMERO'
      Origin = 'PARCELAS.PAR_NUMERO'
    end
    object qParcelasPAR_QUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'PAR_QUANTIDADE'
      Origin = 'PARCELAS.PAR_QUANTIDADE'
    end
    object qParcelasPAR_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'PAR_VENCTO'
      Origin = 'PARCELAS.PAR_VENCTO'
    end
    object qParcelasPAR_VALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_VALOR_PAGO: TIBBCDField
      DisplayLabel = 'Valor pago'
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_PAGO: TIntegerField
      DisplayLabel = 'Pago'
      FieldName = 'PAR_PAGO'
      Origin = 'PARCELAS.PAR_PAGO'
    end
    object qParcelasPAR_OBSERVACAO: TIBStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'PAR_OBSERVACAO'
      Origin = 'PARCELAS.PAR_OBSERVACAO'
      Size = 100
    end
    object qParcelasPAR_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'PAR_DATA'
      Origin = 'PARCELAS.PAR_DATA'
    end
    object qParcelasPAR_DESCONTOSABAT: TIBBCDField
      FieldName = 'PAR_DESCONTOSABAT'
      Origin = '"PARCELAS"."PAR_DESCONTOSABAT"'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_OUTDEDUCOES: TIBBCDField
      FieldName = 'PAR_OUTDEDUCOES'
      Origin = '"PARCELAS"."PAR_OUTDEDUCOES"'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_JUROSMULTA: TIBBCDField
      FieldName = 'PAR_JUROSMULTA'
      Origin = '"PARCELAS"."PAR_JUROSMULTA"'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_OUTACRESCIMOS: TIBBCDField
      FieldName = 'PAR_OUTACRESCIMOS'
      Origin = '"PARCELAS"."PAR_OUTACRESCIMOS"'
      Precision = 18
      Size = 2
    end
  end
  object dsParcelas: TDataSource
    DataSet = qParcelas
    Left = 448
    Top = 328
  end
  object qSaldo: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransactionRead
    BufferChunks = 1000
    CachedUpdates = False
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
  object frxAPagarPrevisao: TfrxDBDataset
    UserName = 'frxAPagarPrevisao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FIN_DESCRICAO=FIN_DESCRICAO'
      'N_PARCELA=N_PARCELA'
      'PAR_VENCTO=PAR_VENCTO'
      'PAR_VALOR=PAR_VALOR'
      'PAR_PAGO=PAR_PAGO'
      'SELECAO=SELECAO'
      'PAR_ID=PAR_ID'
      'DIAS_ATRASO=DIAS_ATRASO')
    DataSet = cdsAPagar
    BCDToCurrency = False
    Left = 496
    Top = 192
  end
end
