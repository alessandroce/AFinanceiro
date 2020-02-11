object FTitulosAnual: TFTitulosAnual
  Left = 229
  Top = 173
  Width = 930
  Height = 650
  Caption = 'Titulos anual'
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
    Top = 592
    Width = 914
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 50
    Width = 914
    Height = 542
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Titulos anual'
      ImageIndex = 2
      object cxGrid2: TcxGrid
        Left = 0
        Top = 55
        Width = 906
        Height = 459
        Align = alClient
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
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
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
              Kind = skSum
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
              Kind = skSum
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
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_01
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_02
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_03
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_04
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_05
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_06
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_07
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_08
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_09
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_10
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_11
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1MES_12
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_01
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_02
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_03
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_04
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_05
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_06
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_07
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_08
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_09
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_10
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_11
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_12
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
              Kind = skSum
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
              Kind = skSum
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
              Kind = skSum
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
              Kind = skSum
              Column = cxGrid2DBTableView1MES_01
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_02
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_03
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_04
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_05
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_06
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_07
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_08
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_09
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_10
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_11
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1MES_12
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          object cxGrid2DBTableView1NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Width = 230
          end
          object cxGrid2DBTableView1MES_01_PA: TcxGridDBColumn
            Caption = ' 01'
            DataBinding.FieldName = 'MES_01_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_01: TcxGridDBColumn
            DataBinding.FieldName = 'MES_01'
            Width = 70
          end
          object cxGrid2DBTableView1MES_02_PA: TcxGridDBColumn
            Caption = ' 02'
            DataBinding.FieldName = 'MES_02_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_02: TcxGridDBColumn
            DataBinding.FieldName = 'MES_02'
            Width = 70
          end
          object cxGrid2DBTableView1MES_03_PA: TcxGridDBColumn
            Caption = '  03'
            DataBinding.FieldName = 'MES_03_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_03: TcxGridDBColumn
            DataBinding.FieldName = 'MES_03'
            Width = 70
          end
          object cxGrid2DBTableView1MES_04_PA: TcxGridDBColumn
            Caption = ' 04'
            DataBinding.FieldName = 'MES_04_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_04: TcxGridDBColumn
            DataBinding.FieldName = 'MES_04'
            Width = 70
          end
          object cxGrid2DBTableView1MES_05_PA: TcxGridDBColumn
            Caption = '  05'
            DataBinding.FieldName = 'MES_05_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_05: TcxGridDBColumn
            DataBinding.FieldName = 'MES_05'
            Width = 70
          end
          object cxGrid2DBTableView1MES_06_PA: TcxGridDBColumn
            Caption = ' 06'
            DataBinding.FieldName = 'MES_06_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_06: TcxGridDBColumn
            DataBinding.FieldName = 'MES_06'
            Width = 70
          end
          object cxGrid2DBTableView1MES_07_PA: TcxGridDBColumn
            Caption = ' 07'
            DataBinding.FieldName = 'MES_07_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_07: TcxGridDBColumn
            DataBinding.FieldName = 'MES_07'
            Width = 70
          end
          object cxGrid2DBTableView1MES_08_PA: TcxGridDBColumn
            Caption = ' 08'
            DataBinding.FieldName = 'MES_08_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_08: TcxGridDBColumn
            DataBinding.FieldName = 'MES_08'
            Width = 70
          end
          object cxGrid2DBTableView1MES_09_PA: TcxGridDBColumn
            Caption = ' 09'
            DataBinding.FieldName = 'MES_09_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_09: TcxGridDBColumn
            DataBinding.FieldName = 'MES_09'
            Width = 70
          end
          object cxGrid2DBTableView1MES_10_PA: TcxGridDBColumn
            Caption = ' 10'
            DataBinding.FieldName = 'MES_10_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_10: TcxGridDBColumn
            DataBinding.FieldName = 'MES_10'
            Width = 70
          end
          object cxGrid2DBTableView1MES_11_PA: TcxGridDBColumn
            Caption = ' 11'
            DataBinding.FieldName = 'MES_11_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_11: TcxGridDBColumn
            DataBinding.FieldName = 'MES_11'
            Width = 70
          end
          object cxGrid2DBTableView1MES_12_PA: TcxGridDBColumn
            Caption = ' 12'
            DataBinding.FieldName = 'MES_12_PA'
            Visible = False
            Width = 70
          end
          object cxGrid2DBTableView1MES_12: TcxGridDBColumn
            DataBinding.FieldName = 'MES_12'
            Width = 70
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 906
        Height = 55
        Align = alTop
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 16
          Top = 2
          Width = 153
          Height = 44
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 18
            Width = 23
            Height = 13
            Caption = 'Ano'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object speAno: TSpinEdit
            Left = 48
            Top = 13
            Width = 65
            Height = 22
            MaxLength = 4
            MaxValue = 2050
            MinValue = 2010
            TabOrder = 0
            Value = 2015
          end
        end
        object GroupBox2: TGroupBox
          Left = 176
          Top = 2
          Width = 185
          Height = 44
          TabOrder = 1
          object CheckBox1: TCheckBox
            Left = 16
            Top = 16
            Width = 160
            Height = 17
            Caption = 'Mostar coluna parcelas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = CheckBox1Click
          end
        end
        object rgAtivo: TRadioGroup
          Left = 368
          Top = 2
          Width = 247
          Height = 44
          Caption = '  Mostrar registros  '
          Columns = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemIndex = 1
          Items.Strings = (
            'Todos'
            'Ativo'
            'Inativo')
          ParentFont = False
          TabOrder = 2
        end
        object btLocalizar: TBitBtn
          Left = 640
          Top = 14
          Width = 75
          Height = 25
          Caption = 'Localizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btLocalizarClick
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 50
    Align = alTop
    TabOrder = 2
    object btCancelar: TBitBtn
      Left = 0
      Top = 5
      Width = 75
      Height = 40
      Hint = 'Voltar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btCancelarClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F7E7E700E7DEDE00F7E7E700000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000DED6CE004A6B310018520000426329008C947B00DED6
        CE00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000EFE7E70042632100088C000000EF000000CE0000108C0000316B
        1800737B6300D6CEC60000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000EFDEDE00000000000000
        0000000000007B8C6B00106B000000FF000000FF000000FF000000FF000000EF
        0000089C0000396B180073846B00E7DEDE000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000ADAD9C00BDBDB500000000000000
        0000E7DEDE00395A180008B5000000FF000000FF000000FF000000FF000000FF
        000000FF000000D600001863000042632100D6CEC60000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000E7DEDE00316B1800949C9C00000000000000
        0000949C84001863000000EF000000FF000000FF000000FF000000FF000000FF
        000000FF000000FF000000FF0000089C000039631800B5B5AD00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000F7E7E7005273390018520000C6BDBD0000000000EFE7
        E70039632100109C000008F7080000F7000000FF000000FF000000FF000000FF
        000000FF000000FF000000FF000000FF000000C60000396B1800BDB5B5000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000006B845A00185200004A7339000000000000000000B5B5
        AD00185A000010CE080008E7080000EF080000F7000000FF000000FF000000FF
        000000FF000000FF000000FF000000FF000000FF000000CE000039632100EFE7
        E700000000000000000000000000000000000000000000000000000000000000
        00000000000084947300317B2100088C000073846B000000000000000000637B
        4A00217B000018D6210010D6100008E7080000EF000000F7000000FF000000FF
        000000FF000000FF000000FF000000FF000000FF000000FF0000185A0000DED6
        D600000000000000000000000000000000000000000000000000000000000000
        0000949C84003963180000D6000008A500009C9C940000000000EFE7E7003963
        2100299C180029D6290018D6180010DE100008E7080000EF000000F7000000FF
        000000FF000000FF000000FF000000FF000000FF000008A5000039632100F7E7
        E70000000000000000000000000000000000000000000000000000000000B5B5
        AD00395A180000AD000000FF0000107B0000BDBDB500000000008C948C00215A
        000042C6390039DE390021D6210010CE100010DE100008E7080000EF000000F7
        000000FF000000FF000000FF000000BD0000106B0000526B3900DED6CE000000
        00000000000000000000000000000000000000000000000000009C9C8C003963
        210000AD000000FF000000F70000396B1800E7DEDE000000000063845A002963
        000063E763004AE7520039DE390029D6290010D6100008D6080008E7080008EF
        080008EF080008E7080008E710001084000021420000BDBDB500000000000000
        000000000000000000000000000000000000E7DED600637B5200185A000000C6
        000000FF000000FF000008B500005A734A0000000000000000006B8C6300185A
        00006BCE630063E763004AD64A0031C6290031BD29005AEF5A0063EF63005AE7
        5A0042D6420029CE290018D6100010DE1000108400004A6B3900B5B5A500EFE7
        DE00F7EFE700F7E7E700D6CECE008C947B00395A1800107B000000EF000000FF
        000000FF000000FF000010730000BDBDB5000000000000000000E7DED600396B
        1800215A0000317308002163000018520000316B0800C6F7C600A5F7AD0084EF
        7B0063E7630042DE420029CE290018D6180010DE10001084000018520000184A
        00002142080018420000184A0000185A000008A5000000FF000000FF000000FF
        000000FF000000D6000039631800EFE7E700000000000000000000000000D6CE
        CE008C9C7B00738C63008C947B00949C8400315A180073A55A00DEFFE700ADFF
        AD008CEF8C006BE76B004ADE4A0031D6310018CE180010D6100010BD08001094
        0000108C00001094000008BD000000EF000000FF000000FF000000FF000000FF
        000000FF0000107300009CA59400000000000000000000000000000000000000
        000000000000000000000000000000000000A5AD9400396B1800ADCE9400EFFF
        F700B5FFBD0094F794007BEF7B005ADE5A0039DE390021CE210010D6180008E7
        100008EF080008F7080000FF000000FF000000FF000000FF000000FF000000FF
        000000940000526B4200F7EFE700000000000000000000000000000000000000
        00000000000000000000000000000000000000000000738C6B00215A0000B5CE
        9C00F7FFF700CEFFCE00A5F7A5007BEF840063E763004ADE420029D6290018CE
        180010D6100008DE080008EF080000EF000000F7000000FF000000FF0000089C
        000042632100E7DED60000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000F7EFE7005A7B42001852
        0000A5BD8C00FFFFFF00D6FFDE00B5F7AD008CEF8C006BE76B0052DE520031D6
        310021CE180010D6100010DE100008E7080000F7080000F70000108C00003963
        1800CECEC6000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EFE7E7006384
        520031631800739C5200D6EFCE00DEFFE700BDFFC6009CF79C0073EF7B0052E7
        5A0039D6390021D6290010DE180010DE100008BD0000187B000039632100C6C6
        B500000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000B5BDAD0039632100215A00005A8C31008CBD730094D6840084DE840073DE
        6B0052CE4A0031B529002194080018730000396321007B8C6300EFDEDE000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000F7E7E700BDBDAD00637B5A003163210021520000215A0000215A
        0000215A0000396B18004A6B3100949C8400DED6D60000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F7E7E700E7DED600D6CEC600CECE
        C600D6D6CE00EFDEDE0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object btExportar: TBitBtn
      Left = 92
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Exportar'
      TabOrder = 1
      OnClick = btExportarClick
    end
    object rgDebitoCredito: TRadioGroup
      Left = 180
      Top = 8
      Width = 269
      Height = 35
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Titulos a pagar'
        'Titulos a receber')
      ParentFont = False
      TabOrder = 2
      OnClick = rgDebitoCreditoClick
    end
  end
  object qAPagar: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransactionRead
    SQL.Strings = (
      'select '#39'N'#39' selecao,'
      '       sp_rel_tituloanual.*'
      '  from SP_REL_TITULOANUAL (:ativo,:debcred,:ano,:usuario)'
      ' order by sp_rel_tituloanual.nome')
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
        Name = 'debcred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
    object qAPagarSELECAO: TIBStringField
      FieldName = 'SELECAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qAPagarNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object qAPagarANO: TSmallintField
      FieldName = 'ANO'
    end
    object qAPagarMES_01_PA: TIBStringField
      FieldName = 'MES_01_PA'
      Size = 23
    end
    object qAPagarMES_01: TIBBCDField
      FieldName = 'MES_01'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qAPagarMES_02_PA: TIBStringField
      FieldName = 'MES_02_PA'
      Size = 23
    end
    object qAPagarMES_02: TIBBCDField
      FieldName = 'MES_02'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qAPagarMES_03_PA: TIBStringField
      FieldName = 'MES_03_PA'
      Size = 23
    end
    object qAPagarMES_03: TIBBCDField
      FieldName = 'MES_03'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qAPagarMES_04_PA: TIBStringField
      FieldName = 'MES_04_PA'
      Size = 23
    end
    object qAPagarMES_04: TIBBCDField
      FieldName = 'MES_04'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qAPagarMES_05_PA: TIBStringField
      FieldName = 'MES_05_PA'
      Size = 23
    end
    object qAPagarMES_05: TIBBCDField
      FieldName = 'MES_05'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qAPagarMES_06_PA: TIBStringField
      FieldName = 'MES_06_PA'
      Size = 23
    end
    object qAPagarMES_06: TIBBCDField
      FieldName = 'MES_06'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qAPagarMES_07_PA: TIBStringField
      FieldName = 'MES_07_PA'
      Size = 23
    end
    object qAPagarMES_07: TIBBCDField
      FieldName = 'MES_07'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qAPagarMES_08_PA: TIBStringField
      FieldName = 'MES_08_PA'
      Size = 23
    end
    object qAPagarMES_08: TIBBCDField
      FieldName = 'MES_08'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qAPagarMES_09_PA: TIBStringField
      FieldName = 'MES_09_PA'
      Size = 23
    end
    object qAPagarMES_09: TIBBCDField
      FieldName = 'MES_09'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qAPagarMES_10_PA: TIBStringField
      FieldName = 'MES_10_PA'
      Size = 23
    end
    object qAPagarMES_10: TIBBCDField
      FieldName = 'MES_10'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qAPagarMES_11_PA: TIBStringField
      FieldName = 'MES_11_PA'
      Size = 23
    end
    object qAPagarMES_11: TIBBCDField
      FieldName = 'MES_11'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qAPagarMES_12_PA: TIBStringField
      FieldName = 'MES_12_PA'
      Size = 23
    end
    object qAPagarMES_12: TIBBCDField
      FieldName = 'MES_12'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
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
    object cdsAPagarSELECAO: TStringField
      FieldName = 'SELECAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsAPagarNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object cdsAPagarANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
    end
    object cdsAPagarMES_01_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_01_PA'
      Size = 23
    end
    object cdsAPagarMES_01: TBCDField
      DisplayLabel = 'JAN'
      FieldName = 'MES_01'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarMES_02_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_02_PA'
      Size = 23
    end
    object cdsAPagarMES_02: TBCDField
      DisplayLabel = 'FEV'
      FieldName = 'MES_02'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarMES_03_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_03_PA'
      Size = 23
    end
    object cdsAPagarMES_03: TBCDField
      DisplayLabel = 'MAR'
      FieldName = 'MES_03'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarMES_04_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_04_PA'
      Size = 23
    end
    object cdsAPagarMES_04: TBCDField
      DisplayLabel = 'ABR'
      FieldName = 'MES_04'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarMES_05_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_05_PA'
      Size = 23
    end
    object cdsAPagarMES_05: TBCDField
      DisplayLabel = 'MAI'
      FieldName = 'MES_05'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarMES_06_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_06_PA'
      Size = 23
    end
    object cdsAPagarMES_06: TBCDField
      DisplayLabel = 'JUN'
      FieldName = 'MES_06'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarMES_07_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_07_PA'
      Size = 23
    end
    object cdsAPagarMES_07: TBCDField
      DisplayLabel = 'JUL'
      FieldName = 'MES_07'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarMES_08_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_08_PA'
      Size = 23
    end
    object cdsAPagarMES_08: TBCDField
      DisplayLabel = 'AGO'
      FieldName = 'MES_08'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarMES_09_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_09_PA'
      Size = 23
    end
    object cdsAPagarMES_09: TBCDField
      DisplayLabel = 'SET'
      FieldName = 'MES_09'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarMES_10_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_10_PA'
      Size = 23
    end
    object cdsAPagarMES_10: TBCDField
      DisplayLabel = 'OUT'
      FieldName = 'MES_10'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarMES_11_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_11_PA'
      Size = 23
    end
    object cdsAPagarMES_11: TBCDField
      DisplayLabel = 'NOV'
      FieldName = 'MES_11'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsAPagarMES_12_PA: TStringField
      DisplayLabel = ' '
      FieldName = 'MES_12_PA'
      Size = 23
    end
    object cdsAPagarMES_12: TBCDField
      DisplayLabel = 'DEZ'
      FieldName = 'MES_12'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
  end
  object dspAPagar: TDataSetProvider
    DataSet = qAPagar
    Left = 312
    Top = 176
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'csv'
    Filter = 'Arquivos CSV (*.csv)|*.csv'
    Left = 456
    Top = 192
  end
  object qAPagarEx: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransactionRead
    SQL.Strings = (
      'select * from SP_REL_TITULOANUAL (:ativo,:debcred,:ano,:usuario)'
      ' order by sp_rel_tituloanual.nome')
    Left = 264
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'debcred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
    object qAPagarExNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object qAPagarExMES_01: TIBBCDField
      FieldName = 'MES_01'
      Precision = 18
      Size = 2
    end
    object qAPagarExMES_02: TIBBCDField
      FieldName = 'MES_02'
      Precision = 18
      Size = 2
    end
    object qAPagarExMES_03: TIBBCDField
      FieldName = 'MES_03'
      Precision = 18
      Size = 2
    end
    object qAPagarExMES_04: TIBBCDField
      FieldName = 'MES_04'
      Precision = 18
      Size = 2
    end
    object qAPagarExMES_05: TIBBCDField
      FieldName = 'MES_05'
      Precision = 18
      Size = 2
    end
    object qAPagarExMES_06: TIBBCDField
      FieldName = 'MES_06'
      Precision = 18
      Size = 2
    end
    object qAPagarExMES_07: TIBBCDField
      FieldName = 'MES_07'
      Precision = 18
      Size = 2
    end
    object qAPagarExMES_08: TIBBCDField
      FieldName = 'MES_08'
      Precision = 18
      Size = 2
    end
    object qAPagarExMES_09: TIBBCDField
      FieldName = 'MES_09'
      Precision = 18
      Size = 2
    end
    object qAPagarExMES_10: TIBBCDField
      FieldName = 'MES_10'
      Precision = 18
      Size = 2
    end
    object qAPagarExMES_11: TIBBCDField
      FieldName = 'MES_11'
      Precision = 18
      Size = 2
    end
    object qAPagarExMES_12: TIBBCDField
      FieldName = 'MES_12'
      Precision = 18
      Size = 2
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = qAPagarEx
    BCDToCurrency = False
    Left = 116
    Top = 282
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
    Left = 156
    Top = 282
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
    Left = 196
    Top = 282
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
    ReportOptions.LastChange = 42947.723416273150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxAPagar."PAR_PAGO">=0 then'
      '    Memo1.text := '#39'Titulos a pagar'#39
      '  else'
      '    Memo1.Text := '#39'Titulos j'#225' Pagos'#39';'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo3.Text := <Filtro>;                                      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 68
    Top = 282
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = 'Filtro'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 18.897637800000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Memo4: TfrxMemoView
          Width = 857.952609450000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TITULOS ANUAL')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 857.953310000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'P'#195#161'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 971.339210000000000000
          Width = 56.692913390000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DATE]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 1028.032160000000000000
          Width = 56.692913390000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[TIME]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015748030000000000
        Top = 60.472480000000000000
        Width = 1084.725110000000000000
        object Memo3: TfrxMemoView
          Width = 1084.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Filtro: ')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Top = 18.897637800000000000
          Width = 404.409536690000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DESCRI'#195#8225#195#402'O')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 404.409710000000000000
          Top = 18.897637800000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'JAN')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 461.102660000000000000
          Top = 18.897637800000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'FEV')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 517.795610000000000000
          Top = 18.897637800000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'MAR')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 574.488560000000000000
          Top = 18.897637800000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'ABR')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 631.181510000000000000
          Top = 18.897637800000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'MAI')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 687.874460000000000000
          Top = 18.897637800000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'JUN')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 744.567410000000000000
          Top = 18.897637800000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'JUL')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 801.260360000000000000
          Top = 18.897637800000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'AGO')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 857.953310000000000000
          Top = 18.897637800000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'SET')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 914.646260000000000000
          Top = 18.897637800000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'OUT')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 971.339210000000000000
          Top = 18.897637800000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'NOV')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 1028.032160000000000000
          Top = 18.897637800000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'DEZ')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 15.118110240000000000
        Top = 291.023810000000000000
        Width = 1084.725110000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 15.118107800000000000
        Top = 177.637910000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo43: TfrxMemoView
          Width = 1084.725110000000000000
          Height = 15.118110240000000000
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
          Highlight.Color = 15987699
          Highlight.Condition = '<line> mod 2 = 0'
          ParentFont = False
        end
        object Memo0: TfrxMemoView
          Width = 404.409536690000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."NOME"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 404.409710000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_01">=0,null,<frxDBDataset1."MES_01">)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 461.102660000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_02">=0,null,<frxDBDataset1."MES_02">)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 517.795610000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_03">=0,null,<frxDBDataset1."MES_03">)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 574.488560000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_04">=0,null,<frxDBDataset1."MES_04">)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 631.181510000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_05">=0,null,<frxDBDataset1."MES_05">)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 687.874460000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_06">=0,null,<frxDBDataset1."MES_06">)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 744.567410000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_07">=0,null,<frxDBDataset1."MES_07">)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 801.260360000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_08">=0,null,<frxDBDataset1."MES_08">)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 857.953310000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_09">=0,null,<frxDBDataset1."MES_09">)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 914.646260000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_10">=0,null,<frxDBDataset1."MES_10">)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 971.339210000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_11">=0,null,<frxDBDataset1."MES_11">)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 1028.032160000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxDBDataset1."MES_12">=0,null,<frxDBDataset1."MES_12">)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Top = 154.960730000000000000
        Width = 1084.725110000000000000
      end
      object Footer1: TfrxFooter
        Height = 15.118110240000000000
        Top = 215.433210000000000000
        Width = 1084.725110000000000000
        object Memo27: TfrxMemoView
          Left = 404.409710000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_01">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 461.102660000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_02">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 517.795610000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_03">,MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 574.488560000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_04">,MasterData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 631.181510000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_05">,MasterData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 687.874460000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_06">,MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 744.567410000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_07">,MasterData1)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 801.260360000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_08">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 857.953310000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_09">,MasterData1)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 914.646260000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_10">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 971.339210000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_11">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 1028.032160000000000000
          Width = 56.692913390000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."MES_12">,MasterData1)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Width = 404.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 260.008040000000000000
          Width = 139.842610000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData1)] registros')
          ParentFont = False
        end
      end
    end
  end
end
