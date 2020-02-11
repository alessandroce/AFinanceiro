object FTituloDetalhe: TFTituloDetalhe
  Left = 232
  Top = 177
  Width = 363
  Height = 373
  Caption = 'Titulos detalhe'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 355
    Height = 323
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 24
      Top = 120
      Width = 299
      Height = 34
    end
    object Label3: TLabel
      Left = 24
      Top = 31
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
    object rgAtivo: TRadioGroup
      Left = 24
      Top = 56
      Width = 148
      Height = 57
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Ativo'
        'Inativo')
      TabOrder = 0
    end
    object rgDebitoCredito: TRadioGroup
      Left = 176
      Top = 56
      Width = 148
      Height = 57
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'D'#233'bito'
        'Cr'#233'dito')
      TabOrder = 1
    end
    object cbMes: TComboBox
      Left = 96
      Top = 27
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
      Top = 26
      Width = 65
      Height = 22
      MaxLength = 4
      MaxValue = 2050
      MinValue = 2010
      TabOrder = 3
      Value = 2015
    end
    object btImprimir: TBitBtn
      Left = 125
      Top = 264
      Width = 100
      Height = 40
      TabOrder = 4
      OnClick = btImprimirClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000110000
        001A000000190000001900000019000000190000001900000019000000190000
        001900000019000000190000001900000019000000180000000B000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003232327F3939
        3998373737973737379737373797373737973737379737373797373737973737
        3797373737973737379737373797373737973A3A3A9521212155000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B2B2B2F2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767A3000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000009B9B9BE0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5050508E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000949494CCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C3C3C77000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000002000000080000000C0000000C0000000000000000949494B6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF2323236C000000060000
        000C0000000C0000000C00000008000000020000000000000000000000000000
        000200000028050505640606066E0707076D0707076D040404777B7B7BC4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FE1D1D1D9A070707680707
        076D0707076D0606066E05050564000000290000000000000000000000000000
        000A31313194737373F7717171FB707070FB707070FB5D5D5DFA8C8C8CFCEAEA
        EAFFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
        E5FFE5E5E5FFE5E5E5FFE5E5E5FFE9E9E9FFD1D1D1FF5A5A5AFB656565FB7272
        72FB707070FB717171FB727272F73434349B0000000000000000000000000000
        00007A7A7AE59D9D9DFF979797FF979797FF979797FF6A6A6AFF7A7A7AFFAEAE
        AEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAE
        AEFFAEAEAEFFAEAEAEFFAEAEAEFFB1B1B1FF9C9C9CFF626262FF7A7A7AFF9B9B
        9BFF979797FF979797FF9D9D9DFF707070EF0000000000000000000000000000
        0000919191F5C8C8C8FFC2C2C2FFC2C2C2FFC6C6C6FF565656FF3D3D3DFF7575
        75FF787878FF777777FF777777FF777777FF777777FF777777FF777777FF7777
        77FF777777FF777777FF777777FF7B7B7BFF636363FF2E2E2EFF909090FFCACA
        CAFFC2C2C2FFC2C2C2FFC8C8C8FF838383F70000000000000000000000000000
        0000999999F5D0D0D0FFCACACAFFCACACAFFD1D1D1FF3C3C3CFF020202FF1919
        19FF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A
        1AFF1A1A1AFF1A1A1AFF1A1A1AFF1B1B1BFF141414FF000000FF8D8D8DFFD4D4
        D4FFCACACAFFCACACAFFD0D0D0FF8A8A8AF60000000000000000000000000000
        0000A1A1A1F5DBDBDBFFD4D4D4FFD4D4D4FFDBDBDBFF909090FF2A2A2AFF2222
        22FF232323FF232323FF232323FF232323FF232323FF232323FF232323FF2323
        23FF232323FF232323FF232323FF232323FF222222FF404040FFC0C0C0FFD8D8
        D8FFD4D4D4FFD4D4D4FFDBDBDBFF909090F60000000000000000000000000000
        0000A7A7A7F5E5E5E5FFDEDEDEFFDEDEDEFFDEDEDEFFE5E5E5FFDEDEDEFFDDDD
        DDFFE0E0E0FFE0E0E0FFE0E0E0FFDFDFDFFFDEDEDEFFDDDDDDFFDDDDDDFFDFDF
        DFFFE0E0E0FFE0E0E0FFE0E0E0FFDFDFDFFFDADADAFFE3E3E3FFE2E2E2FFDDDD
        DDFFDEDEDEFFDEDEDEFFE5E5E5FF959595F60000000000000000000000000000
        0000ADADADF5EFEFEFFFE8E8E8FFE8E8E8FFE7E7E7FFE8E8E8FFEFEFEFFFD7D7
        D7FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFD6D6D6FFD9D9D9FFD9D9D9FFD0D0
        D0FFCACACAFFCBCBCBFFCACACAFFCFCFCFFFEAEAEAFFECECECFFE7E7E7FFE8E8
        E8FFE8E8E8FFE8E8E8FFEFEFEFFF9B9B9BF60000000000000000000000000000
        0000B4B4B4F5FAFAFAFFF2F2F2FFF2F2F2FFF2F2F2FFF8F8F8FFA8A8A8FF5757
        57FF4F4F4FFF505050FF4F4F4FFF505050FF5D5E5FFF696C6DFF66686AFF5555
        55FF4F4F4FFF505050FF4F4F4FFF505050FF7D7D7DFFF4F4F4FFF2F2F2FFF2F2
        F2FFF2F2F2FFF2F2F2FFFAFAFAFFA1A1A1F60000000000000000000000000000
        0000BBBBBBF5FFFFFFFFFCFCFCFFFCFCFCFFFEFEFEFFE5E5E5FF666666FF3535
        35FF060606FF070707FF070707FF060606FF1F1611FF2F2018FF2C1E16FF0D0B
        09FF060606FF070707FF060606FF0F0F0FFF505050FFFFFFFFFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFFFFFFFFA7A7A7F60000000000000000000000000000
        0000B8B8B8F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCFF737373FF3737
        37FF000000FF040404FF040404FF010202FF523627FF7F533BFF795038FF1C14
        0FFF010202FF040404FF020202FF090909FF5E5E5EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A5F50000000000000000000000000000
        0000AEAEAEE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0FF787878FF4040
        40FF0B0B0BFF121212FF121212FF121212FF0E1010FF0D0E0FFF0D0F0FFF1111
        11FF121212FF121212FF101010FF171717FF656565FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9AEB0000000000000000000000000000
        0000939393D8FFFFFFFFFCFCFCFFFCFCFCFFFEFEFEFFDDDDDDFF676767FF4848
        48FF1F1F1FFF232323FF232323FF232323FF222222FF222222FF222222FF2222
        23FF232323FF232323FF202020FF2C2C2CFF595959FFFFFFFFFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFFFFFFFF828282DC0000000000000000000000000000
        00006A6A6ABFEBEBEAFFE4E4DCFFE1E0E0FFE7E5EAFFC8C8C8FF494949FF4444
        44FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF4343
        43FF434343FF434343FF434343FF454545FF3C3C3CFFEAEAEAFFE0E0E0FFE0E0
        E0FFDFDFDFFFE1E1E1FFEAEAEAFF6B6B6BC00000000000000000000000000000
        000046464299C0C0C6FF7A7BCDFFA0A6A5FF96AA74FFB6B6B7FF373737FF1818
        18FF1D1D1DFF1D1D1DFF1D1D1DFF1D1D1DFF1D1D1DFF1D1D1DFF1D1D1DFF1D1D
        1DFF1D1D1DFF1D1D1DFF1D1D1DFF1C1C1CFF191919FF868686FFA2A2A2FFA5A5
        A5FFACACACFF989898FFBFBFBFFF5454548E0000000000000000000000000000
        00001818182A737378BB5F608CCB737676CB6D775CCA7D7D7ED03B3B3CF93333
        33FF363636FF363636FF363636FF363636FF363636FF363636FF363636FF3636
        36FF363636FF363636FF363636FF363636FF313131FF626262E4757575C97777
        77CA797979CB747474CB737373BB1717172B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000454545E2DADA
        DAFFD5D5D5FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
        D4FFD4D4D4FFD4D4D4FFD4D4D4FFDBDBDBFF656565FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000434343E2E7E7
        E7FFE2E2E2FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
        E1FFE1E1E1FFE1E1E1FFE1E1E1FFE9E9E9FF5F5F5FFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000454545E2EFEF
        EFFFEAEAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9E9FFF2F2F2FF636363FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000474747E2FAFA
        FAFFF5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F4F4FFF4F4F4FFFDFDFDFF666666FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000484848E4FFFF
        FFFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFF6A6A6AFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000454545CAFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EFD00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000005050506FFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1E100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003E3E3E41B2B2
        B2BEAFAFAFBEAFAFAFBEAFAFAFBEAFAFAFBEAFAFAFBEAFAFAFBEAFAFAFBEAFAF
        AFBEAFAFAFBEAFAFAFBEAFAFAFBEB1B1B1BE9090909800000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object chSemAgrupamento: TCheckBox
      Left = 34
      Top = 130
      Width = 237
      Height = 17
      Caption = 'Sem agrupamento'
      TabOrder = 5
    end
    object rgConsiderar: TRadioGroup
      Left = 24
      Top = 160
      Width = 300
      Height = 90
      ItemIndex = 0
      Items.Strings = (
        'Considerar titulos que j'#225' foram pagos'
        'Considerar titulos que ainda n'#227'o foram pagos'
        'Considerar titulos pagos e n'#227'o pagos')
      TabOrder = 6
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 323
    Width = 355
    Height = 19
    Panels = <>
  end
  object qTitulos: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from sp_titulo_detalhe(:p_ativo,:p_debcred,:p_ano,:p_me' +
        's,:p_usuario,:p_pago)')
    Left = 264
    Top = 65520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p_debcred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p_ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p_mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p_usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p_pago'
        ParamType = ptUnknown
      end>
    object qTitulosFIN_DESCRICAO: TIBStringField
      FieldName = 'FIN_DESCRICAO'
      Origin = 'SP_TITULO_DETALHE.FIN_DESCRICAO'
      Size = 100
    end
    object qTitulosN_PARCELA: TIBStringField
      FieldName = 'N_PARCELA'
      Origin = 'SP_TITULO_DETALHE.N_PARCELA'
      Size = 5
    end
    object qTitulosPAR_VENCTO: TDateField
      FieldName = 'PAR_VENCTO'
      Origin = 'SP_TITULO_DETALHE.PAR_VENCTO'
    end
    object qTitulosPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = 'SP_TITULO_DETALHE.PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object qTitulosPAR_PAGO: TIBBCDField
      FieldName = 'PAR_PAGO'
      Origin = 'SP_TITULO_DETALHE.PAR_PAGO'
      Precision = 18
      Size = 2
    end
    object qTitulosPAR_OBSERVACAO: TIBStringField
      FieldName = 'PAR_OBSERVACAO'
      Origin = 'SP_TITULO_DETALHE.PAR_OBSERVACAO'
      Size = 100
    end
    object qTitulosPAR_DATA: TDateField
      FieldName = 'PAR_DATA'
      Origin = 'SP_TITULO_DETALHE.PAR_DATA'
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
    ReportOptions.CreateDate = 42503.689077060200000000
    ReportOptions.LastChange = 42587.616126273150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var sMes : String;                                            '
      'begin'
      '  sMes := '#39'M'#202'S DE '#39'+<MESREFERENCIA>;'
      '  Page1.Visible := (<COMAGRUPAMENTO> = '#39'S'#39');'
      '  if Page1.Visible then'
      '  begin'
      '    memo3.text := sMes;               '
      '  end;'
      '  Page2.Visible := (<COMAGRUPAMENTO> = '#39'N'#39');'
      '  if Page2.Visible then'
      '  begin'
      '    memo9.text := sMes;                 '
      '  end;            '
      'end.')
    Left = 56
    Top = 65520
    Datasets = <
      item
        DataSet = frxTitulos
        DataSetName = 'frxTitulos'
      end>
    Variables = <
      item
        Name = 'MESREFERENCIA'
        Value = Null
      end
      item
        Name = 'COMAGRUPAMENTO'
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
      object PageHeader1: TfrxPageHeader
        Height = 75.590551180000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Top = 18.897637800000000000
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 37.795275590000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 321.260050000000000000
          Top = 37.795275590000000000
          Width = 68.031471650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
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
          Left = 483.779840000000000000
          Top = 37.795275590000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
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
          Left = 578.268090000000000000
          Top = 37.795275590551200000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
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
        object Memo4: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TITULOS DETALHE')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 389.291590000000000000
          Top = 37.795300000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Lan'#195#167'amento')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = frxTitulos
        DataSetName = 'frxTitulos'
        RowCount = 0
        object frxAPagarFIN_DESCRICAO: TfrxMemoView
          Width = 321.259842520000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            '[frxTitulos."PAR_OBSERVACAO"]')
          ParentFont = False
        end
        object frxAPagarN_PARCELA: TfrxMemoView
          Left = 321.260050000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTitulos."N_PARCELA"]')
          ParentFont = False
        end
        object frxAPagarPAR_VENCTO: TfrxMemoView
          Left = 483.779840000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[IIF(<frxTitulos."PAR_VENCTO">='#39'0'#39','#39#39',<frxTitulos."PAR_VENCTO">)' +
              ']')
          ParentFont = False
        end
        object frxAPagarPAR_VALOR: TfrxMemoView
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
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
            '[frxTitulos."PAR_VALOR"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 389.291590000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IIF(<frxTitulos."PAR_DATA">='#39'0'#39','#39#39',<frxTitulos."PAR_DATA">)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897637800000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = '<frxTitulos."FIN_DESCRICAO">'
        object Memo26: TfrxMemoView
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxTitulos."FIN_DESCRICAO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 37.795275590000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxTitulos."PAR_VALOR">,MasterData1)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Top = 196.535560000000000000
        Width = 718.110700000000000000
      end
      object Footer1: TfrxFooter
        Height = 18.897637800000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxTitulos."PAR_VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData1)] Registro(s)')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader2: TfrxPageHeader
        Height = 75.590551180000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Top = 18.897637800000000000
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TITULOS DETALHE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 37.795300000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
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
        object Memo11: TfrxMemoView
          Left = 321.260050000000000000
          Top = 37.795300000000000000
          Width = 68.031471650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
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
        object Memo12: TfrxMemoView
          Left = 483.779840000000000000
          Top = 37.795300000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
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
        object Memo13: TfrxMemoView
          Left = 578.268090000000000000
          Top = 37.795300000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
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
        object Memo23: TfrxMemoView
          Left = 389.291590000000000000
          Top = 37.795324410000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Lan'#195#167'amento')
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
      end
      object MasterData2: TfrxMasterData
        Height = 18.897637800000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxTitulos
        DataSetName = 'frxTitulos'
        RowCount = 0
        object Memo27: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = 15263976
          Highlight.Condition = '<LINE> MOD 2 = 0'
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Width = 321.259842520000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTitulos."PAR_OBSERVACAO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 321.260050000000000000
          Width = 68.031496062992100000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTitulos."N_PARCELA"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 483.779840000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[IIF(<frxTitulos."PAR_VENCTO">='#39'0'#39','#39#39',<frxTitulos."PAR_VENCTO">)' +
              ']')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
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
            '[frxTitulos."PAR_VALOR"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 389.291590000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[IIF(<frxTitulos."PAR_DATA">='#39'0'#39','#39#39',<frxTitulos."PAR_DATA">)]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Top = 154.960730000000000000
        Width = 718.110700000000000000
      end
      object Footer2: TfrxFooter
        Height = 18.897637800000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        object Memo20: TfrxMemoView
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxTitulos."PAR_VALOR">,MasterData2)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FTitulosAPagar.frxAPagar
          DataSetName = 'frxAPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData2)] Registro(s)')
          ParentFont = False
        end
      end
    end
  end
  object frxTitulos: TfrxDBDataset
    UserName = 'frxTitulos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FIN_DESCRICAO=FIN_DESCRICAO'
      'N_PARCELA=N_PARCELA'
      'PAR_VENCTO=PAR_VENCTO'
      'PAR_VALOR=PAR_VALOR'
      'PAR_PAGO=PAR_PAGO'
      'PAR_OBSERVACAO=PAR_OBSERVACAO'
      'PAR_DATA=PAR_DATA')
    DataSet = qTitulos
    BCDToCurrency = False
    Left = 112
    Top = 65520
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
    Left = 180
    Top = 65520
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
    Left = 220
    Top = 65520
  end
end
