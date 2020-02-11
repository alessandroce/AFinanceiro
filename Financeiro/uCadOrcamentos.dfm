inherited FCadOrcamentos: TFCadOrcamentos
  Left = 332
  Top = 175
  Caption = 'Cadastro de Or'#231'amentos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1ORC_ID: TcxGridDBColumn
            DataBinding.FieldName = 'ORC_ID'
            Visible = False
          end
          object cxGrid1DBTableView1ORC_USU_ID: TcxGridDBColumn
            DataBinding.FieldName = 'ORC_USU_ID'
            Visible = False
          end
          object cxGrid1DBTableView1ORC_PES_ID: TcxGridDBColumn
            DataBinding.FieldName = 'ORC_PES_ID'
            Visible = False
          end
          object cxGrid1DBTableView1ORC_CODIGO: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'ORC_CODIGO'
          end
          object cxGrid1DBTableView1ORC_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'ORC_DESCRICAO'
            Width = 465
          end
          object cxGrid1DBTableView1ORC_VALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'ORC_VALOR'
          end
          object cxGrid1DBTableView1ORC_DATA: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'ORC_DATA'
          end
          object cxGrid1DBTableView1ORC_INATIVO: TcxGridDBColumn
            Caption = 'Inativo'
            DataBinding.FieldName = 'ORC_INATIVO'
            Visible = False
            Width = 45
          end
          object cxGrid1DBTableView1ORC_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'ORC_DH_CA'
            Visible = False
          end
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 32
        Top = 32
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 32
        Top = 72
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label4: TLabel [2]
        Left = 120
        Top = 32
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Bevel1: TBevel [3]
        Left = 32
        Top = 128
        Width = 713
        Height = 284
      end
      object Label3: TLabel [4]
        Left = 48
        Top = 144
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label5: TLabel [5]
        Left = 384
        Top = 144
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label6: TLabel [6]
        Left = 496
        Top = 144
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object sbinc: TSpeedButton [7]
        Left = 582
        Top = 157
        Width = 25
        Height = 24
        Hint = 'Adicionar Parelas'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0048001E51001757001757001A5700155500FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A5D00176F0B17
          710D17710C16710C186300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF17600004790A057A0C05790B047A0B0F6701FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF186100027E0D00
          7F0D007E0D007F0D106903FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF1B630306891A008A17008916028B19156F0AFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF194C001C5B00195B00195C001C59001A680609952500
          931F00931F0396231576121B5B001A5D00195E001D5D00115500165A00057D0F
          028817028A19028C1A029220029E2A009E28009E28009D28029522028B1A0289
          1802861603821118610018570004932000A12A00A42D00A73000A83100A83100
          A83100A83100A62F00A42E00A22C009F29009A230095201766061959001DA23B
          0CAE3C04AC3700AE3600B03600B13700B13700B13700AF3500AC3300A93001A6
          3008A53119A63C1B690A14590043BA623FCC703BCB6E36CC6C2BCA651BC35618
          C25418C25318C05123C35A32C76538C5673DC46845C16A226C111745003A953D
          47A75544A75345A65355B86A55D98746D67D48D67D4DD7825DC57A48A85744A8
          5545A754409F4B186200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF206B0E63DF935A
          E39159E08F67E89D36913AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF226F146FE69F6EEDA46DEAA278F1AD38963EFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22731483EDB08B
          F4BA87F2B68EF9BF3D9942FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF1F7513A0F6C6B6FED8B1FCD4B3FFDB3F9E46FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF134E003183313C
          89393C8939398C3C1B670DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbincClick
      end
      object sbexc: TSpeedButton [8]
        Left = 609
        Top = 158
        Width = 23
        Height = 22
        Hint = 'Limpa'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFF5C58DA
          2722CE2622CF2722CE2520CB2420CB241FCB2520CB251FCA251FCA2620CD231E
          C82620CD5B56D9FFFFFF605FE12E2DFB2423EF0B06B6201DE52B29FA2824F428
          24F42723F42722F42925FC130DCE0A05B0211AEF2921FB5D5ADE2423D6272BEF
          1312B16A67BF1B1AB01F20E22D2EF4282AED2929EE2C2DF40E0DCA3F3CB59090
          CE1210B12321EE201CD22C2CD4100EBB918ED3FFFFFFADAAE0100FB21C20E030
          36F42F35F40D0DCE3835B8ECECF8FFFFFF6A67C60F0DC02B29D53034DB1D24D7
          433DC3EBEAF8FFFFFFAFADE31D1BB91D24DE171CD73934BEEEEDF9FFFFFFACAA
          E41F1BBD252CE72E2DD83136DC384FFA161ED43A32C5EDEDF9FFFFFFD0CEF020
          1FC11E1DC0E2E2F6FFFFFFB3B1E81511BF232DE53241F72F30D82E34DD364FF3
          3950F3151DD83E35CCDEDBF6FFFFFFCFCDF2CFCEF3FFFFFFD4D3F32321C7202C
          E33447F43144F22B2FDB5056E53B55F3334BEF3852F41F2ADF211DCBCDCCF4FF
          FFFFFFFFFFCDCBF42120CD2232E3354DF42F44EE364DF24E52E36E72EA6E82F7
          556AF24862F32B3BE8221FD2CDCBF3FFFFFFFFFFFFCDCBF4201DD2242FE4445D
          F35366F26A7DF66B6FE96B70EC7388F7788CF66472F1514BE0D5D2F7FFFFFFDC
          DAF8DCDAF8FFFFFFDCDAF8655EE2575EEA7588F66F83F6686DEA6C72EE7891F7
          6779F25550E6CAC6F6FFFFFFE9E8FC5851E65954E6E0DEFAFFFFFFF6F5FD6F69
          E9575FEC748CF76A6FED6E76EF6F82F35E59EBC2BFF7FFFFFFF2F1FD6E66EC5D
          68EF6472F15E57EBC5C1F8FFFFFFF1F0FD7670EC616BF16D74EF7078F15A5CEF
          928BF3FFFFFFF1F0FE6F68F05B64EF7A92F67A91F66775F25551EDC3BFF9FFFF
          FFAFA8F75857F06C71EF6C75F37A91F65A57F0AEA8F77771F35F68F27D96F679
          8EF5788EF57C94F66D7FF45F5BF0948CF55956F1758BF66A73F1949BF685A1F7
          7C94F65B5BF36975F584A1F88099F77F98F77F98F77E97F6819CF67588F55C5F
          F37990F5819DF79399F5FFFFFF969BF8757BF57278F5757CF5737AF5737AF572
          7AF5727AF5737AF57279F5737AF5737AF4737AF4959AF7FFFFFF}
        ParentShowHint = False
        ShowHint = True
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 48
        Width = 81
        Height = 21
        DataField = 'ORC_CODIGO'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 88
        Width = 500
        Height = 21
        DataField = 'ORC_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object cxGrid2: TcxGrid
        Left = 48
        Top = 192
        Width = 681
        Height = 209
        TabOrder = 3
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsCadastroItem
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid2DBTableView1ORI_VALOR
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1ORI_ID: TcxGridDBColumn
            DataBinding.FieldName = 'ORI_ID'
            Visible = False
          end
          object cxGrid2DBTableView1ORI_ORC_ID: TcxGridDBColumn
            DataBinding.FieldName = 'ORI_ORC_ID'
            Visible = False
          end
          object cxGrid2DBTableView1ORI_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'ORI_DESCRICAO'
            Width = 415
          end
          object cxGrid2DBTableView1ORI_DATA: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'ORI_DATA'
            Width = 97
          end
          object cxGrid2DBTableView1ORI_VALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'ORI_VALOR'
          end
          object cxGrid2DBTableView1ORI_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'ORI_DH_CA'
            Visible = False
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object edDataItem: TDateTimePicker
        Left = 384
        Top = 159
        Width = 103
        Height = 21
        Date = 42468.553416620370000000
        Time = 42468.553416620370000000
        TabOrder = 4
      end
      object edValor: TEdit
        Left = 495
        Top = 159
        Width = 60
        Height = 21
        TabOrder = 5
      end
      object edDescricao: TEdit
        Left = 48
        Top = 159
        Width = 329
        Height = 21
        TabOrder = 6
      end
      object edData: TwwDBDateTimePicker
        Left = 120
        Top = 48
        Width = 137
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'ORC_DATA'
        DataSource = dsCadastro
        Epoch = 1950
        ShowButton = True
        TabOrder = 7
      end
    end
  end
  inherited qCadastro: TIBDataSet
    AfterOpen = qCadastroAfterOpen
    DeleteSQL.Strings = (
      'delete from orcamento'
      'where'
      '  ORC_ID = :OLD_ORC_ID')
    InsertSQL.Strings = (
      'insert into orcamento'
      
        '  (ORC_CODIGO, ORC_DATA, ORC_DESCRICAO, ORC_DH_CA, ORC_ID, ORC_I' +
        'NATIVO, '
      '   ORC_PES_ID, ORC_USU_ID, ORC_VALOR)'
      'values'
      
        '  (:ORC_CODIGO, :ORC_DATA, :ORC_DESCRICAO, :ORC_DH_CA, :ORC_ID, ' +
        ':ORC_INATIVO, '
      '   :ORC_PES_ID, :ORC_USU_ID, :ORC_VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ORC_ID,'
      '  ORC_USU_ID,'
      '  ORC_PES_ID,'
      '  ORC_CODIGO,'
      '  ORC_DESCRICAO,'
      '  ORC_VALOR,'
      '  ORC_DATA,'
      '  ORC_INATIVO,'
      '  ORC_DH_CA'
      'from orcamento '
      'where'
      '  ORC_ID = :ORC_ID')
    SelectSQL.Strings = (
      'select * from orcamento where orc_id = :orc_id')
    ModifySQL.Strings = (
      'update orcamento'
      'set'
      '  ORC_CODIGO = :ORC_CODIGO,'
      '  ORC_DATA = :ORC_DATA,'
      '  ORC_DESCRICAO = :ORC_DESCRICAO,'
      '  ORC_DH_CA = :ORC_DH_CA,'
      '  ORC_ID = :ORC_ID,'
      '  ORC_INATIVO = :ORC_INATIVO,'
      '  ORC_PES_ID = :ORC_PES_ID,'
      '  ORC_USU_ID = :ORC_USU_ID,'
      '  ORC_VALOR = :ORC_VALOR'
      'where'
      '  ORC_ID = :OLD_ORC_ID')
    GeneratorField.Field = 'ORC_ID'
    GeneratorField.Generator = 'GEN_ORCAMENTO'
    DataSource = dsConsulta
    object qCadastroORC_ID: TIntegerField
      FieldName = 'ORC_ID'
      Origin = '"ORCAMENTO"."ORC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCadastroORC_USU_ID: TIntegerField
      FieldName = 'ORC_USU_ID'
      Origin = '"ORCAMENTO"."ORC_USU_ID"'
      Required = True
    end
    object qCadastroORC_PES_ID: TIntegerField
      FieldName = 'ORC_PES_ID'
      Origin = '"ORCAMENTO"."ORC_PES_ID"'
    end
    object qCadastroORC_CODIGO: TIntegerField
      FieldName = 'ORC_CODIGO'
      Origin = '"ORCAMENTO"."ORC_CODIGO"'
    end
    object qCadastroORC_DESCRICAO: TIBStringField
      FieldName = 'ORC_DESCRICAO'
      Origin = '"ORCAMENTO"."ORC_DESCRICAO"'
      Size = 100
    end
    object qCadastroORC_VALOR: TIBBCDField
      FieldName = 'ORC_VALOR'
      Origin = '"ORCAMENTO"."ORC_VALOR"'
      Precision = 18
      Size = 2
    end
    object qCadastroORC_DATA: TDateTimeField
      FieldName = 'ORC_DATA'
      Origin = '"ORCAMENTO"."ORC_DATA"'
    end
    object qCadastroORC_INATIVO: TIBStringField
      FieldName = 'ORC_INATIVO'
      Origin = '"ORCAMENTO"."ORC_INATIVO"'
      FixedChar = True
      Size = 1
    end
    object qCadastroORC_DH_CA: TDateTimeField
      FieldName = 'ORC_DH_CA'
      Origin = '"ORCAMENTO"."ORC_DH_CA"'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select * from orcamento')
    object qConsultaORC_ID: TIntegerField
      FieldName = 'ORC_ID'
      Origin = '"ORCAMENTO"."ORC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaORC_USU_ID: TIntegerField
      FieldName = 'ORC_USU_ID'
      Origin = '"ORCAMENTO"."ORC_USU_ID"'
      Required = True
    end
    object qConsultaORC_PES_ID: TIntegerField
      FieldName = 'ORC_PES_ID'
      Origin = '"ORCAMENTO"."ORC_PES_ID"'
    end
    object qConsultaORC_CODIGO: TIntegerField
      FieldName = 'ORC_CODIGO'
      Origin = '"ORCAMENTO"."ORC_CODIGO"'
    end
    object qConsultaORC_DESCRICAO: TIBStringField
      FieldName = 'ORC_DESCRICAO'
      Origin = '"ORCAMENTO"."ORC_DESCRICAO"'
      Size = 100
    end
    object qConsultaORC_VALOR: TIBBCDField
      FieldName = 'ORC_VALOR'
      Origin = '"ORCAMENTO"."ORC_VALOR"'
      Precision = 18
      Size = 2
    end
    object qConsultaORC_DATA: TDateTimeField
      FieldName = 'ORC_DATA'
      Origin = '"ORCAMENTO"."ORC_DATA"'
    end
    object qConsultaORC_INATIVO: TIBStringField
      FieldName = 'ORC_INATIVO'
      Origin = '"ORCAMENTO"."ORC_INATIVO"'
      FixedChar = True
      Size = 1
    end
    object qConsultaORC_DH_CA: TDateTimeField
      FieldName = 'ORC_DH_CA'
      Origin = '"ORCAMENTO"."ORC_DH_CA"'
    end
  end
  object ibCadastroItem: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    DeleteSQL.Strings = (
      'delete from orcamento_itens'
      'where'
      '  ORI_ID = :OLD_ORI_ID')
    InsertSQL.Strings = (
      'insert into orcamento_itens'
      
        '  (ORI_DATA, ORI_DESCRICAO, ORI_DH_CA, ORI_ID, ORI_ORC_ID, ORI_V' +
        'ALOR)'
      'values'
      
        '  (:ORI_DATA, :ORI_DESCRICAO, :ORI_DH_CA, :ORI_ID, :ORI_ORC_ID, ' +
        ':ORI_VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  ORI_ID,'
      '  ORI_ORC_ID,'
      '  ORI_DESCRICAO,'
      '  ORI_DATA,'
      '  ORI_VALOR,'
      '  ORI_DH_CA'
      'from orcamento_itens '
      'where'
      '  ORI_ID = :ORI_ID')
    SelectSQL.Strings = (
      'select * from orcamento_itens where ori_orc_id = :orc_id')
    ModifySQL.Strings = (
      'update orcamento_itens'
      'set'
      '  ORI_DATA = :ORI_DATA,'
      '  ORI_DESCRICAO = :ORI_DESCRICAO,'
      '  ORI_DH_CA = :ORI_DH_CA,'
      '  ORI_ID = :ORI_ID,'
      '  ORI_ORC_ID = :ORI_ORC_ID,'
      '  ORI_VALOR = :ORI_VALOR'
      'where'
      '  ORI_ID = :OLD_ORI_ID')
    GeneratorField.Field = 'ORI_ID'
    GeneratorField.Generator = 'GEN_ORCAMENTO_ITENS'
    DataSource = dsCadastro
    Left = 408
    Top = 320
    object ibCadastroItemORI_ID: TIntegerField
      FieldName = 'ORI_ID'
      Origin = '"ORCAMENTO_ITENS"."ORI_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroItemORI_ORC_ID: TIntegerField
      FieldName = 'ORI_ORC_ID'
      Origin = '"ORCAMENTO_ITENS"."ORI_ORC_ID"'
      Required = True
    end
    object ibCadastroItemORI_DESCRICAO: TIBStringField
      FieldName = 'ORI_DESCRICAO'
      Origin = '"ORCAMENTO_ITENS"."ORI_DESCRICAO"'
      Size = 100
    end
    object ibCadastroItemORI_DATA: TDateField
      FieldName = 'ORI_DATA'
      Origin = '"ORCAMENTO_ITENS"."ORI_DATA"'
    end
    object ibCadastroItemORI_VALOR: TIBBCDField
      FieldName = 'ORI_VALOR'
      Origin = '"ORCAMENTO_ITENS"."ORI_VALOR"'
      Precision = 18
      Size = 2
    end
    object ibCadastroItemORI_DH_CA: TDateTimeField
      FieldName = 'ORI_DH_CA'
      Origin = '"ORCAMENTO_ITENS"."ORI_DH_CA"'
    end
  end
  object dsCadastroItem: TDataSource
    DataSet = ibCadastroItem
    Left = 456
    Top = 320
  end
end
