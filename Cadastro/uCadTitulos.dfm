object FCadTitulos: TFCadTitulos
  Left = 161
  Top = 76
  Width = 800
  Height = 600
  Caption = 'Cadastro de titulos'
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
    Top = 20
    Width = 784
    Height = 523
    ActivePage = tsConsulta
    Align = alClient
    TabOrder = 1
    object tsConsulta: TTabSheet
      Caption = 'Consulta'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 41
        Width = 776
        Height = 413
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = dsConsulta
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
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1FIN_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_DESCRICAO'
            Width = 300
          end
          object cxGrid1DBTableView1PAR_VENCTO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VENCTO'
            Width = 94
          end
          object cxGrid1DBTableView1N_PARCELA: TcxGridDBColumn
            DataBinding.FieldName = 'N_PARCELA'
            Width = 95
          end
          object cxGrid1DBTableView1PAR_VALOR: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR'
            Width = 96
          end
          object cxGrid1DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR_PAGO'
          end
          object cxGrid1DBTableView1PAR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_PAGO'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label14: TLabel
          Left = 16
          Top = 14
          Width = 100
          Height = 13
          Caption = 'M'#234's/Ano refer'#234'ncia: '
        end
        object ComboBox2: TComboBox
          Left = 120
          Top = 10
          Width = 89
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
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
        object SpinEdit2: TSpinEdit
          Left = 216
          Top = 9
          Width = 57
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
        end
        object BitBtn3: TBitBtn
          Left = 280
          Top = 5
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
          OnClick = BitBtn3Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 454
        Width = 776
        Height = 41
        Align = alBottom
        TabOrder = 2
        object btNovo: TBitBtn
          Left = 0
          Top = 1
          Width = 75
          Height = 40
          Caption = 'NOVO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btNovoClick
        end
        object btAlterar: TBitBtn
          Left = 75
          Top = 1
          Width = 75
          Height = 40
          Caption = 'ALTERAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btAlterarClick
        end
        object btApagar: TBitBtn
          Left = 151
          Top = 1
          Width = 75
          Height = 40
          Caption = 'APAGAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object btSair: TBitBtn
          Left = 709
          Top = 1
          Width = 75
          Height = 40
          Caption = 'SAIR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btSairClick
        end
      end
    end
    object tsCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Bevel6: TBevel
        Left = 16
        Top = 14
        Width = 721
        Height = 218
      end
      object Label10: TLabel
        Left = 16
        Top = 0
        Width = 41
        Height = 13
        Caption = 'T'#237'tulos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 56
        Top = 24
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label5: TLabel
        Left = 56
        Top = 64
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEdit2
      end
      object Label6: TLabel
        Left = 56
        Top = 104
        Width = 40
        Height = 13
        Caption = 'Pesssoa'
      end
      object Label7: TLabel
        Left = 56
        Top = 144
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object Label8: TLabel
        Left = 232
        Top = 144
        Width = 45
        Height = 13
        Caption = 'Categoria'
      end
      object Panel3: TPanel
        Left = 0
        Top = 454
        Width = 776
        Height = 41
        Align = alBottom
        TabOrder = 0
        object btGravar: TBitBtn
          Left = 707
          Top = 1
          Width = 75
          Height = 40
          Caption = 'GRAVAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btGravarClick
        end
        object btCancelar: TBitBtn
          Left = 631
          Top = 1
          Width = 75
          Height = 40
          Caption = 'CANCELAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btCancelarClick
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 211
        Width = 776
        Height = 243
        ActivePage = tsParcelas
        Align = alBottom
        TabOrder = 1
        object tsParcelas: TTabSheet
          Caption = 'Parcelas'
          object Label11: TLabel
            Left = 10
            Top = 14
            Width = 55
            Height = 13
            Caption = 'Quantidade'
          end
          object Label12: TLabel
            Left = 130
            Top = 14
            Width = 24
            Height = 13
            Caption = 'Valor'
          end
          object cxGrid4: TcxGrid
            Left = 10
            Top = 32
            Width = 705
            Height = 177
            TabOrder = 0
            object cxGrid4DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Edit.Visible = True
              DataController.DataSource = dsParcelas
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.DeletingConfirmation = False
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGrid4DBTableView1PAR_NUMERO: TcxGridDBColumn
                Caption = 'Numero'
                DataBinding.FieldName = 'PAR_NUMERO'
                Width = 103
              end
              object cxGrid4DBTableView1PAR_QUANTIDADE: TcxGridDBColumn
                Caption = 'Quantidade'
                DataBinding.FieldName = 'PAR_QUANTIDADE'
                Width = 81
              end
              object cxGrid4DBTableView1PAR_VENCTO: TcxGridDBColumn
                Caption = 'Vencimento'
                DataBinding.FieldName = 'PAR_VENCTO'
                Width = 94
              end
              object cxGrid4DBTableView1PAR_VALOR: TcxGridDBColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'PAR_VALOR'
              end
              object cxGrid4DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn
                Caption = 'Valor Pago'
                DataBinding.FieldName = 'PAR_VALOR_PAGO'
              end
              object cxGrid4DBTableView1PAR_PAGO: TcxGridDBColumn
                Caption = 'Pago'
                DataBinding.FieldName = 'PAR_PAGO'
                Width = 93
              end
            end
            object cxGrid4Level1: TcxGridLevel
              GridView = cxGrid4DBTableView1
            end
          end
          object edQuant: TEdit
            Left = 74
            Top = 6
            Width = 50
            Height = 21
            TabOrder = 1
            OnKeyPress = edQuantKeyPress
          end
          object edValor: TEdit
            Left = 162
            Top = 6
            Width = 89
            Height = 21
            TabOrder = 2
            OnKeyPress = edQuantKeyPress
          end
          object BitBtn2: TBitBtn
            Left = 256
            Top = 4
            Width = 113
            Height = 25
            Caption = 'gerar parcelas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = BitBtn2Click
          end
        end
        object tsContratos: TTabSheet
          Caption = 'Contratos'
          ImageIndex = 1
        end
      end
      object DBEdit1: TDBEdit
        Left = 56
        Top = 40
        Width = 134
        Height = 21
        DataField = 'FIN_ID'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 56
        Top = 80
        Width = 137
        Height = 21
        DataField = 'FIN_DATA'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 56
        Top = 120
        Width = 393
        Height = 21
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'PES_NOME_FANTASIA'#9'70'#9'Fantasia'#9'F')
        DataField = 'FIN_PES_ID'
        DataSource = dsCadastro
        LookupTable = qPessoa
        LookupField = 'PES_ID'
        Navigator = False
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 56
        Top = 160
        Width = 169
        Height = 21
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CATG_DESCRICAO'#9'60'#9'Descri'#231#227'o'#9'F')
        LookupTable = qCategoriaG
        LookupField = 'CATG_ID'
        Navigator = False
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 232
        Top = 160
        Width = 217
        Height = 21
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CAT_DESCRICAO'#9'60'#9'Descri'#231#227'o'#9'F')
        LookupTable = qCategoria
        LookupField = 'CAT_ID'
        Navigator = False
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 216
        Top = 63
        Width = 145
        Height = 38
        Columns = 2
        DataField = 'FIN_DEBCRED'
        DataSource = dsCadastro
        Items.Strings = (
          'D'#233'bito'
          'Cr'#233'dito')
        TabOrder = 7
        Values.Strings = (
          'D'
          'C')
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 20
    Align = alTop
    TabOrder = 2
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
  object qPessoa: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from pessoa p order by p.pes_nome_razao, p.pes_nome_fan' +
        'tasia')
    Left = 384
    Top = 136
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
    Left = 416
    Top = 136
  end
  object qCategoria: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsCategoriaG
    SQL.Strings = (
      'select * from categoria c where c.cat_catg_id = :catg_id')
    Left = 312
    Top = 208
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
    Left = 344
    Top = 208
  end
  object qCategoriaG: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from categoria_grupo g order by g.catg_descricao')
    Left = 248
    Top = 208
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
    Left = 280
    Top = 208
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
end
