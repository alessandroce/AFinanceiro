inherited FRelatorioPlanoContas: TFRelatorioPlanoContas
  Caption = 'Plano de Contas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Caption = 'Relat'#243'rio de Plano de Contas'
    Font.Height = -13
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel2: TPanel
    Caption = 'Listar Itens do Plano de Contas'
    inherited BitBtn1: TBitBtn
      OnClick = BitBtn1Click
    end
  end
  object qPlanoContas: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select   PLANO_CONTAS.id codigo,'
      '       PLANO_CONTAS.nivel,'
      '         lpad('#39#39',PLANO_CONTAS.nivel*3,'#39' '#39')||'
      '         PLANO_CONTAS.cod_contabil||'#39' '#39'||'
      '           PLANO_CONTAS.descricao descricao'
      '  from PLANO_CONTAS'
      ' order by PLANO_CONTAS.cod_contabil')
    Left = 72
    Top = 144
    object qPlanoContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PLANO_CONTAS.ID'
      Required = True
    end
    object qPlanoContasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 32765
    end
    object qPlanoContasNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Origin = 'PLANO_CONTAS.NIVEL'
    end
  end
  object frxReport1: TfrxReport
    Version = '4.9.38'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42635.879247233800000000
    ReportOptions.LastChange = 42646.922999907400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBDataset1."NIVEL">=1 then'
      '  begin          '
      '    frxDBDataset1DESCRICAO.Font.Style := fsBold;'
      '    frxDBDataset1DESCRICAO.Font.Name := '#39'Calibri'#39';'
      '    frxDBDataset1DESCRICAO.Font.Size := 11;'
      '  end'
      '  else            '
      '  if <frxDBDataset1."NIVEL">=2 then'
      '  begin          '
      '    frxDBDataset1DESCRICAO.Font.Style := 0;'
      '    frxDBDataset1DESCRICAO.Font.Name := '#39'Calibri'#39';'
      '    frxDBDataset1DESCRICAO.Font.Size := 11;'
      '  end'
      '  else'
      '  begin'
      '    frxDBDataset1DESCRICAO.Font.Style := 0;'
      '    frxDBDataset1DESCRICAO.Font.Name := '#39'Calibri'#39';'
      '    frxDBDataset1DESCRICAO.Font.Size := 12;'
      '  end;            '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 8
    Top = 145
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object TfrxDataPage
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
      object PageHeader1: TfrxPageHeader
        Height = 18.897637795275600000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'C'#195#179'd. Red.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 75.590600000000000000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '   Descri'#195#167#195#163'o')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CODIGO: TfrxMemoView
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."CODIGO"]   ')
          ParentFont = False
        end
        object frxDBDataset1DESCRICAO: TfrxMemoView
          Left = 75.590600000000000000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[frxDBDataset1."DESCRICAO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Top = 238.110390000000000000
        Width = 718.110700000000000000
      end
      object ReportTitle1: TfrxReportTitle
        Height = 75.590551180000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 718.110236220000000000
          Height = 75.590551180000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO DE PLANO DE CONTAS')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 517.795610000000000000
          Top = 18.897650000000000000
          Width = 200.315090000000000000
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
        object Memo5: TfrxMemoView
          Left = 517.795610000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Data/Hora [DATE] [TIME]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897637795275600000
        ParentFont = False
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AFinanceiro')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'NIVEL=NIVEL')
    DataSet = qPlanoContas
    BCDToCurrency = False
    Left = 40
    Top = 145
  end
end
