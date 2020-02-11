inherited FCadTitulos2: TFCadTitulos2
  Left = 232
  Top = 172
  Caption = 'Cadastro Titulos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          object cxGrid1DBTableView1FIN_ID: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_ID'
          end
          object cxGrid1DBTableView1FIN_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_DESCRICAO'
          end
          object cxGrid1DBTableView1PAGO: TcxGridDBColumn
            Caption = 'Pago'
            DataBinding.FieldName = 'PAGO'
            Visible = False
          end
        end
      end
      inherited Panel1: TPanel
        object rgDebitoCredito: TRadioGroup
          Left = 12
          Top = 1
          Width = 229
          Height = 35
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Titulos a pagar'
            'Titulos a receber')
          TabOrder = 0
          OnClick = rgDebitoCreditoClick
        end
      end
      inherited Panel2: TPanel
        inherited rgAtivo: TRadioGroup
          ItemIndex = 1
          OnClick = rgAtivoClick
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Bevel1: TBevel [0]
        Left = 24
        Top = 240
        Width = 728
        Height = 216
      end
      object Label4: TLabel [1]
        Left = 24
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label5: TLabel [2]
        Left = 168
        Top = 16
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label6: TLabel [3]
        Left = 24
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
      end
      object Label7: TLabel [4]
        Left = 24
        Top = 98
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object Label8: TLabel [5]
        Left = 200
        Top = 98
        Width = 45
        Height = 13
        Caption = 'Categoria'
      end
      object Label3: TLabel [6]
        Left = 312
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label2: TLabel [7]
        Left = 24
        Top = 144
        Width = 37
        Height = 13
        Caption = 'Numero'
        FocusControl = DBEdit3
      end
      object Label9: TLabel [8]
        Left = 96
        Top = 144
        Width = 55
        Height = 13
        Caption = 'Quantidade'
        FocusControl = DBEdit4
      end
      object Label10: TLabel [9]
        Left = 160
        Top = 144
        Width = 56
        Height = 13
        Caption = 'Vencimento'
        FocusControl = DBEdit5
      end
      object Label13: TLabel [10]
        Left = 264
        Top = 144
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = DBEdit6
      end
      object Label14: TLabel [11]
        Left = 56
        Top = 192
        Width = 51
        Height = 13
        Caption = 'Valor pago'
        FocusControl = DBEdit7
      end
      object Label15: TLabel [12]
        Left = 24
        Top = 192
        Width = 25
        Height = 13
        Caption = 'Pago'
      end
      object Label16: TLabel [13]
        Left = 392
        Top = 144
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        FocusControl = DBEdit8
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 32
        Width = 134
        Height = 21
        DataField = 'FIN_ID'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 1
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 24
        Top = 72
        Width = 281
        Height = 21
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'PES_NOME_FANTASIA'#9'70'#9'Fantasia'#9'F'#9)
        DataField = 'FIN_PES_ID'
        DataSource = dsCadastro
        LookupTable = qPessoa
        LookupField = 'PES_ID'
        Navigator = False
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 24
        Top = 114
        Width = 169
        Height = 21
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CATG_DESCRICAO'#9'60'#9'Descri'#231#227'o'#9'F')
        LookupTable = qCategoriaG
        LookupField = 'CATG_ID'
        Navigator = False
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 200
        Top = 114
        Width = 217
        Height = 21
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CAT_DESCRICAO'#9'60'#9'Descri'#231#227'o'#9'F')
        DataField = 'FIN_CAT_ID'
        DataSource = dsCadastro
        LookupTable = qCategoria
        LookupField = 'CAT_ID'
        Navigator = False
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 352
        Top = 15
        Width = 145
        Height = 38
        Caption = '  Tipo  '
        Columns = 2
        DataField = 'FIN_DEBCRED'
        DataSource = dsCadastro
        Items.Strings = (
          'D'#233'bito'
          'Cr'#233'dito')
        TabOrder = 5
        Values.Strings = (
          'D'
          'C')
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 168
        Top = 32
        Width = 137
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'FIN_DATA'
        DataSource = dsCadastro
        Epoch = 1950
        ShowButton = True
        TabOrder = 6
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 504
        Top = 15
        Width = 145
        Height = 38
        Caption = '  Situa'#231#227'o  '
        Columns = 2
        DataField = 'FIN_INATIVO'
        DataSource = dsCadastro
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 7
        Values.Strings = (
          'N'
          'S')
      end
      object DBEdit2: TDBEdit
        Left = 312
        Top = 72
        Width = 400
        Height = 21
        DataField = 'FIN_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 8
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 34
        Top = 328
        Width = 180
        Height = 22
        Buttons.ConfirmDelete = False
        Buttons.First.Visible = False
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Visible = False
        Buttons.Next.Visible = False
        Buttons.NextPage.Visible = False
        Buttons.Last.Visible = False
        Buttons.Insert.Hint = 'Inserir'
        Buttons.Delete.Hint = 'Apagar'
        Buttons.Delete.Visible = True
        Buttons.Edit.Hint = 'Editar'
        Buttons.Post.Hint = 'Gravar'
        Buttons.Post.Visible = True
        Buttons.Cancel.Hint = 'Cancelar'
        Buttons.Cancel.Visible = True
        Buttons.Refresh.Visible = True
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = dsParcelas
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        TabOrder = 9
      end
      object cxGrid2: TcxGrid
        Left = 34
        Top = 352
        Width = 708
        Height = 98
        TabOrder = 10
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = cxGrid2DBTableView1CustomDrawCell
          DataController.DataSource = dsParcelas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1PAR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_PAGO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 25
            IsCaptionAssigned = True
          end
          object cxGrid2DBTableView1PAR_NUMERO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_NUMERO'
            Width = 77
          end
          object cxGrid2DBTableView1PAR_QUANTIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_QUANTIDADE'
            Width = 84
          end
          object cxGrid2DBTableView1PAR_DATA: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_DATA'
            Width = 93
          end
          object cxGrid2DBTableView1PAR_VENCTO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VENCTO'
            Width = 104
          end
          object cxGrid2DBTableView1PAR_VALOR: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR'
          end
          object cxGrid2DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR_PAGO'
          end
          object cxGrid2DBTableView1PAR_OBSERVACAO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_OBSERVACAO'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object gbGerarParcelasAuto: TGroupBox
        Left = 32
        Top = 251
        Width = 711
        Height = 63
        Enabled = False
        TabOrder = 11
        object Label11: TLabel
          Left = 10
          Top = 36
          Width = 35
          Height = 13
          Caption = 'Quant.:'
        end
        object Label12: TLabel
          Left = 116
          Top = 36
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label1: TLabel
          Left = 250
          Top = 36
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object sbinc: TSpeedButton
          Left = 392
          Top = 30
          Width = 19
          Height = 24
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
        object edQuant: TEdit
          Left = 48
          Top = 32
          Width = 50
          Height = 21
          TabOrder = 0
          OnKeyPress = edQuantKeyPress
        end
        object edValor: TEdit
          Left = 145
          Top = 32
          Width = 89
          Height = 21
          TabOrder = 1
          OnKeyPress = edQuantKeyPress
        end
        object edDataParcela: TDateTimePicker
          Left = 280
          Top = 32
          Width = 103
          Height = 21
          Date = 42468.553416620370000000
          Time = 42468.553416620370000000
          TabOrder = 2
        end
      end
      object cbGerarParcelasAuto: TCheckBox
        Left = 40
        Top = 248
        Width = 148
        Height = 17
        Caption = 'Gerar parcelas autom'#225'tico'
        TabOrder = 12
        OnClick = cbGerarParcelasAutoClick
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 160
        Width = 60
        Height = 21
        DataField = 'PAR_NUMERO'
        DataSource = dsParcelas
        TabOrder = 13
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 160
        Width = 60
        Height = 21
        DataField = 'PAR_QUANTIDADE'
        DataSource = dsParcelas
        TabOrder = 14
      end
      object DBEdit5: TDBEdit
        Left = 160
        Top = 160
        Width = 100
        Height = 21
        DataField = 'PAR_VENCTO'
        DataSource = dsParcelas
        TabOrder = 15
      end
      object DBEdit6: TDBEdit
        Left = 264
        Top = 160
        Width = 100
        Height = 21
        DataField = 'PAR_VALOR'
        DataSource = dsParcelas
        TabOrder = 16
      end
      object DBEdit7: TDBEdit
        Left = 56
        Top = 208
        Width = 100
        Height = 21
        DataField = 'PAR_VALOR_PAGO'
        DataSource = dsParcelas
        TabOrder = 17
      end
      object DBCheckBox1: TDBCheckBox
        Left = 27
        Top = 210
        Width = 15
        Height = 17
        DataField = 'PAR_PAGO'
        DataSource = dsParcelas
        TabOrder = 18
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBEdit8: TDBEdit
        Left = 392
        Top = 160
        Width = 200
        Height = 21
        DataField = 'PAR_OBSERVACAO'
        DataSource = dsParcelas
        TabOrder = 19
      end
    end
  end
  inherited qCadastro: TIBDataSet
    AfterOpen = qCadastroAfterOpen
    BeforeDelete = qCadastroBeforeDelete
    BeforePost = qCadastroBeforePost
    DeleteSQL.Strings = (
      'delete from financeiro'
      'where'
      '  FIN_ID = :OLD_FIN_ID')
    InsertSQL.Strings = (
      'insert into financeiro'
      
        '  (FIN_CAT_ID, FIN_DATA, FIN_DEBCRED, FIN_DESCRICAO, FIN_ID, FIN' +
        '_INATIVO, '
      '   FIN_PES_ID, FIN_TIPO_DC, FIN_USU_ID)'
      'values'
      
        '  (:FIN_CAT_ID, :FIN_DATA, :FIN_DEBCRED, :FIN_DESCRICAO, :FIN_ID' +
        ', :FIN_INATIVO, '
      '   :FIN_PES_ID, :FIN_TIPO_DC, :FIN_USU_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  FIN_ID,'
      '  FIN_DATA,'
      '  FIN_DESCRICAO,'
      '  FIN_PES_ID,'
      '  FIN_CAT_ID,'
      '  FIN_DEBCRED,'
      '  FIN_TIPO_DC,'
      '  FIN_INATIVO,'
      '  FIN_USU_ID'
      'from financeiro '
      'where'
      '  FIN_ID = :FIN_ID')
    SelectSQL.Strings = (
      'select * from financeiro f where f.fin_id = :FIN_ID')
    ModifySQL.Strings = (
      'update financeiro'
      'set'
      '  FIN_CAT_ID = :FIN_CAT_ID,'
      '  FIN_DATA = :FIN_DATA,'
      '  FIN_DEBCRED = :FIN_DEBCRED,'
      '  FIN_DESCRICAO = :FIN_DESCRICAO,'
      '  FIN_ID = :FIN_ID,'
      '  FIN_INATIVO = :FIN_INATIVO,'
      '  FIN_PES_ID = :FIN_PES_ID,'
      '  FIN_TIPO_DC = :FIN_TIPO_DC,'
      '  FIN_USU_ID = :FIN_USU_ID'
      'where'
      '  FIN_ID = :OLD_FIN_ID')
    GeneratorField.Field = 'FIN_ID'
    GeneratorField.Generator = 'GEN_FINANCEIRO'
    DataSource = dsConsulta
    object qCadastroFIN_ID: TIntegerField
      FieldName = 'FIN_ID'
      Origin = 'FINANCEIRO.FIN_ID'
      Required = True
    end
    object qCadastroFIN_DATA: TDateTimeField
      FieldName = 'FIN_DATA'
      Origin = 'FINANCEIRO.FIN_DATA'
    end
    object qCadastroFIN_DESCRICAO: TIBStringField
      FieldName = 'FIN_DESCRICAO'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object qCadastroFIN_PES_ID: TIntegerField
      FieldName = 'FIN_PES_ID'
      Origin = 'FINANCEIRO.FIN_PES_ID'
    end
    object qCadastroFIN_CAT_ID: TIntegerField
      FieldName = 'FIN_CAT_ID'
      Origin = 'FINANCEIRO.FIN_CAT_ID'
      Required = True
    end
    object qCadastroFIN_DEBCRED: TIBStringField
      FieldName = 'FIN_DEBCRED'
      Origin = 'FINANCEIRO.FIN_DEBCRED'
      FixedChar = True
      Size = 1
    end
    object qCadastroFIN_TIPO_DC: TIntegerField
      FieldName = 'FIN_TIPO_DC'
      Origin = 'FINANCEIRO.FIN_TIPO_DC'
    end
    object qCadastroFIN_INATIVO: TIBStringField
      FieldName = 'FIN_INATIVO'
      Origin = 'FINANCEIRO.FIN_INATIVO'
      FixedChar = True
      Size = 1
    end
    object qCadastroFIN_USU_ID: TIntegerField
      FieldName = 'FIN_USU_ID'
      Origin = '"FINANCEIRO"."FIN_USU_ID"'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select financeiro.fin_id,'
      '       financeiro.fin_descricao,'
      '       (select count(*) pago'
      '                from parcelas'
      '               where parcelas.par_fin_id=financeiro.fin_id'
      '                and parcelas.par_pago=0)'
      '  from financeiro'
      '  left join pessoa on pessoa.pes_id=financeiro.fin_pes_id'
      
        ' where ((coalesce(financeiro.fin_inativo,'#39'N'#39')=:ativo) or ( :ativ' +
        'o = '#39' '#39' ))'
      'and fin_debcred = :debcred'
      '   and exists (select usuario_visao.UVIS_USU_FILHO'
      '                 from usuario_visao'
      '                where usuario_visao.UVIS_USU_PAI=:usuario'
      
        '                  and usuario_visao.UVIS_USU_FILHO=financeiro.FI' +
        'N_USU_ID )'
      'order by financeiro.fin_descricao')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
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
        Name = 'usuario'
        ParamType = ptUnknown
      end>
    object qConsultaFIN_ID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'FIN_ID'
      Origin = 'FINANCEIRO.FIN_ID'
      Required = True
    end
    object qConsultaFIN_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FIN_DESCRICAO'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object qConsultaPAGO: TIntegerField
      FieldName = 'PAGO'
    end
  end
  object qParcelas: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    AfterInsert = qParcelasAfterInsert
    BeforeInsert = qParcelasBeforeInsert
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
      '   PAR_VALOR_PAGO, PAR_PAGO, PAR_OBSERVACAO, PAR_DATA)'
      'values'
      
        '  (:PAR_ID, :PAR_FIN_ID, :PAR_NUMERO, :PAR_QUANTIDADE, :PAR_VENC' +
        'TO, '
      ':PAR_VALOR, '
      '   :PAR_VALOR_PAGO, :PAR_PAGO, :PAR_OBSERVACAO, :PAR_DATA)')
    RefreshSQL.Strings = (
      'Select *'
      'from parcelas '
      'where'
      '  PAR_ID = :PAR_ID')
    SelectSQL.Strings = (
      'select * from parcelas'
      ' where par_fin_id = :FIN_ID')
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
      '  PAR_PAGO = :PAR_PAGO,'
      '  PAR_OBSERVACAO = :PAR_OBSERVACAO,'
      '  PAR_DATA = :PAR_DATA'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    GeneratorField.Field = 'PAR_ID'
    GeneratorField.Generator = 'GEN_PARCELAS'
    DataSource = dsCadastro
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
  end
  object dsParcelas: TDataSource
    DataSet = qParcelas
    Left = 448
    Top = 328
  end
  object qPessoa: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from pessoa p order by p.pes_nome_razao, p.pes_nome_fan' +
        'tasia')
    Left = 520
    Top = 240
    object qPessoaPES_NOME_FANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 70
      FieldName = 'PES_NOME_FANTASIA'
      Origin = 'PESSOA.PES_NOME_FANTASIA'
      Size = 100
    end
    object qPessoaPES_NOME_RAZAO: TIBStringField
      DisplayLabel = 'Raz'#227'o'
      DisplayWidth = 60
      FieldName = 'PES_NOME_RAZAO'
      Origin = 'PESSOA.PES_NOME_RAZAO'
      Visible = False
      Size = 100
    end
    object qPessoaPES_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PES_ID'
      Origin = 'PESSOA.PES_ID'
      Required = True
      Visible = False
    end
    object qPessoaPES_TIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'PES_TIPO'
      Origin = 'PESSOA.PES_TIPO'
      Visible = False
    end
    object qPessoaPES_TIPO_PESSOA: TIntegerField
      DisplayWidth = 10
      FieldName = 'PES_TIPO_PESSOA'
      Origin = 'PESSOA.PES_TIPO_PESSOA'
      Visible = False
    end
    object qPessoaPES_CNPJ: TIBStringField
      DisplayWidth = 20
      FieldName = 'PES_CNPJ'
      Origin = 'PESSOA.PES_CNPJ'
      Visible = False
    end
    object qPessoaPES_INSC_EST: TIBStringField
      DisplayWidth = 20
      FieldName = 'PES_INSC_EST'
      Origin = 'PESSOA.PES_INSC_EST'
      Visible = False
    end
    object qPessoaPES_EMAIL: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_EMAIL'
      Origin = 'PESSOA.PES_EMAIL'
      Visible = False
      Size = 100
    end
    object qPessoaPES_TEL_COMERCIAL: TIBStringField
      DisplayWidth = 20
      FieldName = 'PES_TEL_COMERCIAL'
      Origin = 'PESSOA.PES_TEL_COMERCIAL'
      Visible = False
    end
    object qPessoaPES_TEL_CELULAR: TIBStringField
      DisplayWidth = 20
      FieldName = 'PES_TEL_CELULAR'
      Origin = 'PESSOA.PES_TEL_CELULAR'
      Visible = False
    end
    object qPessoaPES_CONTATO: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_CONTATO'
      Origin = 'PESSOA.PES_CONTATO'
      Visible = False
      Size = 100
    end
    object qPessoaPES_ENDERECO: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_ENDERECO'
      Origin = 'PESSOA.PES_ENDERECO'
      Visible = False
      Size = 100
    end
    object qPessoaPES_NUMERO: TIntegerField
      DisplayWidth = 10
      FieldName = 'PES_NUMERO'
      Origin = 'PESSOA.PES_NUMERO'
      Visible = False
    end
    object qPessoaPES_COMPLEMENTO: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_COMPLEMENTO'
      Origin = 'PESSOA.PES_COMPLEMENTO'
      Visible = False
      Size = 100
    end
    object qPessoaPES_BAIRRO: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_BAIRRO'
      Origin = 'PESSOA.PES_BAIRRO'
      Visible = False
      Size = 100
    end
    object qPessoaPES_CEP: TIBStringField
      DisplayWidth = 20
      FieldName = 'PES_CEP'
      Origin = 'PESSOA.PES_CEP'
      Visible = False
    end
    object qPessoaPES_CIDADE: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_CIDADE'
      Origin = 'PESSOA.PES_CIDADE'
      Visible = False
      Size = 100
    end
    object qPessoaPES_UF: TIBStringField
      DisplayWidth = 2
      FieldName = 'PES_UF'
      Origin = 'PESSOA.PES_UF'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object qPessoaPES_ANIVERSARIO: TDateField
      DisplayWidth = 10
      FieldName = 'PES_ANIVERSARIO'
      Origin = 'PESSOA.PES_ANIVERSARIO'
      Visible = False
    end
    object qPessoaPES_DESCRICAO: TIBStringField
      DisplayWidth = 255
      FieldName = 'PES_DESCRICAO'
      Origin = 'PESSOA.PES_DESCRICAO'
      Visible = False
      Size = 255
    end
  end
  object dsPessoa: TDataSource
    DataSet = qPessoa
    Left = 552
    Top = 240
  end
  object qCategoriaG: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from categoria_grupo g order by g.catg_descricao')
    Left = 600
    Top = 240
    object qCategoriaGCATG_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'CATG_DESCRICAO'
      Origin = 'CATEGORIA_GRUPO.CATG_DESCRICAO'
      Size = 100
    end
    object qCategoriaGCATG_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CATG_ID'
      Origin = 'CATEGORIA_GRUPO.CATG_ID'
      Required = True
      Visible = False
    end
  end
  object dsCategoriaG: TDataSource
    DataSet = qCategoriaG
    Left = 632
    Top = 240
  end
  object qCategoria: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsCategoriaG
    SQL.Strings = (
      'select * from categoria c where c.cat_catg_id = :catg_id')
    Left = 664
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'catg_id'
        ParamType = ptUnknown
      end>
    object qCategoriaCAT_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'CAT_DESCRICAO'
      Origin = 'CATEGORIA.CAT_DESCRICAO'
      Size = 100
    end
    object qCategoriaCAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CAT_ID'
      Origin = 'CATEGORIA.CAT_ID'
      Required = True
      Visible = False
    end
    object qCategoriaCAT_CATG_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CAT_CATG_ID'
      Origin = 'CATEGORIA.CAT_CATG_ID'
      Required = True
      Visible = False
    end
  end
  object dsCategoria: TDataSource
    DataSet = qCategoria
    Left = 696
    Top = 240
  end
end
