inherited FCadControleCondominio: TFCadControleCondominio
  Left = 209
  Top = 92
  Caption = 'Controle Condominio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1CON_VALOR
            end
            item
              Kind = skCount
              Column = cxGrid1DBTableView1CON_ID
            end>
          object cxGrid1DBTableView1CON_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CON_ID'
          end
          object cxGrid1DBTableView1MES: TcxGridDBColumn
            Caption = 'M'#234's Ref'
            DataBinding.FieldName = 'MES'
            Width = 136
          end
          object cxGrid1DBTableView1CON_ANO: TcxGridDBColumn
            Caption = 'Ano'
            DataBinding.FieldName = 'CON_ANO'
            Width = 75
          end
          object cxGrid1DBTableView1CON_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'CON_DESCRICAO'
            Width = 362
          end
          object cxGrid1DBTableView1CON_VALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'CON_VALOR'
          end
          object cxGrid1DBTableView1CLASSIF: TcxGridDBColumn
            Caption = 'Classifica'#231#227'o'
            DataBinding.FieldName = 'CLASSIF'
            Width = 250
          end
        end
      end
      inherited Panel1: TPanel
        object cxButton1: TcxButton
          Left = 2
          Top = 1
          Width = 63
          Height = 40
          Hint = 'Importar'
          Caption = 'Importar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = cxButton1Click
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
        end
        object cxButton2: TcxButton
          Left = 66
          Top = 1
          Width = 13
          Height = 40
          Hint = 'Mensagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = cxButton2Click
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
        end
      end
      inherited Panel2: TPanel
        inherited rgAtivo: TRadioGroup
          Left = 316
        end
        object TBImprimir: TcxButton
          Left = 227
          Top = 3
          Width = 75
          Height = 38
          Hint = 'Imprimir listagem'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = TBImprimirClick
          Glyph.Data = {
            F2060000424DF206000000000000360400002800000019000000190000000100
            080000000000BC020000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000009B07070707070707
            0707070752000000000000000000000000000000A4FFFFFFFFFFFFFFFFFFFFFF
            52000000000000000000000000000000A4FFFFFFFFFFFFFFFFFFFFF649000000
            0000000000000000000000009BFFFFFFFFFFFFFFFFFFFFF60000000000000000
            00000000525B5B52A4F6F6F6F6F6F6F6F6F6F608525B5B5B5200000000000052
            F7F7F7A49BF7F7F7F7F7F7F7F7F707F79BF7F7F7F749000000000052070708A4
            495252525252525252525B52490707070752000000000052080808F749000000
            000000000000000052070808075200000000005208F608080707070707070707
            0707070708F608F60852000000000052F6F6F6F6F60707070707070707070708
            F6F6F6F6F652000000000052F6FFFFFFF7524949495252494949495BFFFFFFFF
            F652000000000052FFFFFFF6A4490000004991480000005BFFFFFFFFF6520000
            00000052F6FFFFF6A4520000000000000000009BFFFFFFFFF652000000000052
            F6FFFFF6A4525252525252525252525BFFF6F6FF084900000000004907EF0707
            5B4949494949494949494949F707070707490000000000005B9DA3A352525252
            52525252525252525BA4A4A45B00000000000000000000005208080808080808
            0808F6A40000000000000000000000000000000052F6F6F6F6F6F6F6F6F6F6A4
            0000000000000000000000000000000052F6F6F6F6F6F6F6F6F6FFA400000000
            00000000000000000000000052FFFFFFFFFFFFFFFFFFFFA40000000000000000
            000000000000000052FFFFFFFFFFFFFFFFFFFF07000000000000000000000000
            0000000052080808080808080808080700000000000000000000000000000000
            00494949494949494949494900000000000000000000}
          LookAndFeel.Kind = lfStandard
          LookAndFeel.SkinName = 'LondonLiquidSky'
          SpeedButtonOptions.Flat = True
        end
      end
      object pnmensagem: TPanel
        Left = 96
        Top = 104
        Width = 569
        Height = 265
        BevelOuter = bvNone
        BorderWidth = 10
        Color = clGradientInactiveCaption
        TabOrder = 3
        Visible = False
        object lblmensagem: TLabel
          Left = 10
          Top = 10
          Width = 549
          Height = 22
          Align = alTop
          Caption = 'Mensagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 10
          Top = 220
          Width = 549
          Height = 35
          Align = alBottom
          Shape = bsSpacer
        end
        object SpeedButton1: TSpeedButton
          Left = 256
          Top = 226
          Width = 60
          Height = 22
          Caption = 'OK'
          OnClick = SpeedButton1Click
        end
        object mmensagem: TMemo
          Left = 10
          Top = 32
          Width = 549
          Height = 188
          Align = alClient
          BevelOuter = bvNone
          BorderStyle = bsNone
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 160
        Top = 16
        Width = 19
        Height = 13
        Caption = 'Ano'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 64
        Top = 16
        Width = 20
        Height = 13
        Caption = 'Mes'
      end
      object Label3: TLabel [2]
        Left = 64
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Descric'#227'o'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 64
        Top = 96
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [4]
        Left = 249
        Top = 16
        Width = 62
        Height = 13
        Caption = 'Classifica'#231#227'o'
        FocusControl = DBEdit1
      end
      inherited Panel3: TPanel
        Top = 454
      end
      object DBEdit1: TDBEdit
        Left = 160
        Top = 32
        Width = 80
        Height = 21
        DataField = 'CON_ANO'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 64
        Top = 72
        Width = 500
        Height = 21
        DataField = 'CON_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 64
        Top = 112
        Width = 100
        Height = 21
        DataField = 'CON_VALOR'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object cbMes: TComboBox
        Left = 64
        Top = 32
        Width = 89
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
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
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 248
        Top = 30
        Width = 273
        Height = 21
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CNT_DESCRICAO'#9'50'#9'DESCRICAO'#9'F')
        DataField = 'CON_CLASSIF'
        DataSource = dsCadastro
        LookupTable = qClassif
        LookupField = 'CNT_ID'
        Navigator = False
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
    end
  end
  inherited qCadastro: TIBDataSet
    AfterOpen = qCadastroAfterOpen
    BeforePost = qCadastroBeforePost
    OnNewRecord = qCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from condominio'
      'where'
      '  CON_ID = :OLD_CON_ID')
    InsertSQL.Strings = (
      'insert into condominio'
      '  (CON_ID, CON_USU_ID, CON_ANO, CON_MESREF, CON_DESCRICAO, '
      'CON_VALOR, CON_DH_CA, '
      '   CON_CLASSIF, CON_VENCTO)'
      'values'
      '  (:CON_ID, :CON_USU_ID, :CON_ANO, :CON_MESREF, :CON_DESCRICAO, '
      ':CON_VALOR, '
      '   :CON_DH_CA, :CON_CLASSIF, :CON_VENCTO)')
    RefreshSQL.Strings = (
      'Select *'
      'from condominio '
      'where'
      '  CON_ID = :CON_ID')
    SelectSQL.Strings = (
      'select * from condominio where condominio.con_id=:con_id')
    ModifySQL.Strings = (
      'update condominio'
      'set'
      '  CON_ID = :CON_ID,'
      '  CON_USU_ID = :CON_USU_ID,'
      '  CON_ANO = :CON_ANO,'
      '  CON_MESREF = :CON_MESREF,'
      '  CON_DESCRICAO = :CON_DESCRICAO,'
      '  CON_VALOR = :CON_VALOR,'
      '  CON_DH_CA = :CON_DH_CA,'
      '  CON_CLASSIF = :CON_CLASSIF,'
      '  CON_VENCTO = :CON_VENCTO'
      'where'
      '  CON_ID = :OLD_CON_ID')
    GeneratorField.Field = 'CON_ID'
    GeneratorField.Generator = 'GEN_CONDOMINIO'
    DataSource = dsConsulta
    Left = 384
    object qCadastroCON_ID: TIntegerField
      FieldName = 'CON_ID'
      Origin = '"CONDOMINIO"."CON_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCadastroCON_ANO: TIntegerField
      FieldName = 'CON_ANO'
      Origin = '"CONDOMINIO"."CON_ANO"'
      Required = True
    end
    object qCadastroCON_MESREF: TIntegerField
      FieldName = 'CON_MESREF'
      Origin = '"CONDOMINIO"."CON_MESREF"'
      Required = True
    end
    object qCadastroCON_DESCRICAO: TIBStringField
      FieldName = 'CON_DESCRICAO'
      Origin = '"CONDOMINIO"."CON_DESCRICAO"'
      Size = 100
    end
    object qCadastroCON_VALOR: TIBBCDField
      FieldName = 'CON_VALOR'
      Origin = '"CONDOMINIO"."CON_VALOR"'
      Precision = 18
      Size = 2
    end
    object qCadastroCON_DH_CA: TDateTimeField
      FieldName = 'CON_DH_CA'
      Origin = '"CONDOMINIO"."CON_DH_CA"'
    end
    object qCadastroCON_USU_ID: TIntegerField
      FieldName = 'CON_USU_ID'
      Origin = '"CONDOMINIO"."CON_USU_ID"'
      Required = True
    end
    object qCadastroMES: TStringField
      FieldKind = fkCalculated
      FieldName = 'MES'
      Size = 50
      Calculated = True
    end
    object qCadastroCON_CLASSIF: TIntegerField
      FieldName = 'CON_CLASSIF'
      Origin = 'CONDOMINIO.CON_CLASSIF'
    end
    object qCadastroCON_VENCTO: TDateField
      FieldName = 'CON_VENCTO'
      Origin = 'CONDOMINIO.CON_VENCTO'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select condominio.*,'
      
        '       upper((select resultado from mes_extenso( condominio.con_' +
        'mesref))) mes,'
      '       condominio_conta.cnt_descricao classif'
      '  from condominio'
      
        '  left join condominio_conta on (condominio_conta.cnt_id = condo' +
        'minio.con_classif)'
      
        'order by con_ano, con_mesref, condominio_conta.cnt_descricao, co' +
        'n_descricao')
    object qConsultaCON_ID: TIntegerField
      FieldName = 'CON_ID'
      Origin = '"CONDOMINIO"."CON_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaCON_ANO: TIntegerField
      FieldName = 'CON_ANO'
      Origin = '"CONDOMINIO"."CON_ANO"'
      Required = True
    end
    object qConsultaCON_MESREF: TIntegerField
      FieldName = 'CON_MESREF'
      Origin = '"CONDOMINIO"."CON_MESREF"'
      Required = True
    end
    object qConsultaCON_DESCRICAO: TIBStringField
      FieldName = 'CON_DESCRICAO'
      Origin = '"CONDOMINIO"."CON_DESCRICAO"'
      Size = 100
    end
    object qConsultaCON_VALOR: TIBBCDField
      FieldName = 'CON_VALOR'
      Origin = '"CONDOMINIO"."CON_VALOR"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qConsultaCON_DH_CA: TDateTimeField
      FieldName = 'CON_DH_CA'
      Origin = '"CONDOMINIO"."CON_DH_CA"'
    end
    object qConsultaCON_USU_ID: TIntegerField
      FieldName = 'CON_USU_ID'
      Origin = '"CONDOMINIO"."CON_USU_ID"'
      Required = True
    end
    object qConsultaMES: TIBStringField
      FieldName = 'MES'
      ProviderFlags = []
      Size = 10
    end
    object qConsultaCLASSIF: TIBStringField
      FieldName = 'CLASSIF'
      Origin = 'CONDOMINIO_CONTA.CNT_DESCRICAO'
      Size = 100
    end
  end
  inherited dsCadastro: TDataSource
    OnDataChange = dsCadastroDataChange
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
    ReportOptions.LastChange = 44888.068697951390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      '  IBXQuery1.Close;'
      '  IBXQuery1.Open;              '
      ''
      'end.')
    Left = 400
    Top = 296
    Datasets = <
      item
        DataSet = frxReport1.IBXQuery1
        DataSetName = 'IBXQuery1'
      end>
    Variables = <
      item
        Name = 'DEBITO'
        Value = Null
      end
      item
        Name = 'CREDITO'
        Value = Null
      end
      item
        Name = 'usuario'
        Value = '4'
      end
      item
        Name = 'nomeusuario'
        Value = #39'MARIA HELENA'#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object IBXQuery1: TfrxIBXQuery
        UserName = 'IBXQuery1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select condominio.con_ano,'
          '       condominio_conta.cnt_descricao con_descricao,'
          '       sum(case when(con_mesref=1)  then con_valor end) mes_01,'
          '       sum(case when(con_mesref=2)  then con_valor end) mes_02,'
          '       sum(case when(con_mesref=3)  then con_valor end) mes_03,'
          '       sum(case when(con_mesref=4)  then con_valor end) mes_04,'
          '       sum(case when(con_mesref=5)  then con_valor end) mes_05,'
          '       sum(case when(con_mesref=6)  then con_valor end) mes_06,'
          '       sum(case when(con_mesref=7)  then con_valor end) mes_07,'
          '       sum(case when(con_mesref=8)  then con_valor end) mes_08,'
          '       sum(case when(con_mesref=9)  then con_valor end) mes_09,'
          '       sum(case when(con_mesref=10) then con_valor end) mes_10,'
          '       sum(case when(con_mesref=11) then con_valor end) mes_11,'
          '       sum(case when(con_mesref=12) then con_valor end) mes_12'
          '  from condominio'
          
            '  left join condominio_conta on (condominio_conta.cnt_id = condo' +
            'minio.con_classif)'
          ' group by condominio.con_ano,condominio_conta.cnt_descricao'
          '     ')
        pLeft = 32
        pTop = 16
        Parameters = <>
      end
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 56.692913385826800000
        Top = 16.000000000000000000
        Width = 1084.725110000000000000
        object Memo4: TfrxMemoView
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 948.662030000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DATE] [TIME]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 948.662030000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Top = 18.897650000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 152.000000000000000000
        Width = 1084.725110000000000000
        DataSet = frxReport1.IBXQuery1
        DataSetName = 'IBXQuery1'
        RowCount = 0
        object IBXQuery1CON_DESCRICAO: TfrxMemoView
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CON_DESCRICAO'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[IBXQuery1."CON_DESCRICAO"]')
          ParentFont = False
        end
        object IBXQuery1MES_01: TfrxMemoView
          Left = 177.637910000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_01"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 253.228510000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_02"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 328.819110000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_03"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 404.409710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_04"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 480.000310000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_05"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 555.590910000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_06"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 631.181510000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_07"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 706.772110000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_08"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 782.362710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_09"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 857.953310000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_10"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 933.543910000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_11"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 1009.134510000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXQuery1."MES_12"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897637800000000000
        Top = 112.000000000000000000
        Width = 1084.725110000000000000
        Condition = 'IBXQuery1."CON_ANO"'
        object IBXQuery1CON_ANO: TfrxMemoView
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CON_ANO'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IBXQuery1."CON_ANO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 177.637910000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            'JAN')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 253.228510000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            'FEV')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 328.819110000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            'MAR')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 404.409710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            'ABR')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 480.000310000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'MAI')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 555.590910000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'JUN')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 631.181510000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'JUL')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 706.772110000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'AGO')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 782.362710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'SET')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 857.953310000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'OUT')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 933.543910000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'NOV')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 1009.134510000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'DEZ')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 37.795275590000000000
        Top = 192.000000000000000000
        Width = 1084.725110000000000000
        object Memo26: TfrxMemoView
          Left = 177.637910000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_01">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 253.228510000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_02">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 328.819110000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_03">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 404.409710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_04">,MasterData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 480.000310000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_05">,MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 555.590910000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_06">,MasterData1)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 631.181510000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_07">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 706.772110000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_08">,MasterData1)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 782.362710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_09">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 857.953310000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_10">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 933.543910000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_11">,MasterData1)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 1009.134510000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<IBXQuery1."MES_12">,MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = 13421772
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Top = 92.000000000000000000
        Width = 1084.725110000000000000
      end
      object Footer1: TfrxFooter
        Top = 248.000000000000000000
        Width = 1084.725110000000000000
      end
    end
  end
  object frxIBXComponents1: TfrxIBXComponents
    DefaultDatabase = DMConexao.IBConexao
    Left = 500
    Top = 332
  end
  object OpenDialog1: TOpenDialog
    Left = 656
    Top = 216
  end
  object qClassif: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from condominio_conta ct order by ct.cnt_descricao')
    Left = 512
    Top = 392
    object qClassifCNT_DESCRICAO: TIBStringField
      DisplayLabel = 'DESCRICAO'
      DisplayWidth = 50
      FieldName = 'CNT_DESCRICAO'
      Origin = 'CONDOMINIO_CONTA.CNT_DESCRICAO'
      Size = 100
    end
    object qClassifCNT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CNT_ID'
      Origin = 'CONDOMINIO_CONTA.CNT_ID'
      Required = True
      Visible = False
    end
  end
  object dsClassif: TDataSource
    DataSet = qClassif
    Left = 544
    Top = 392
  end
end
