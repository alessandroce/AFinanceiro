inherited FCadTitulos: TFCadTitulos
  Left = 157
  Top = 97
  Caption = 'Titulos a pagar/receber'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      object Label2: TLabel [0]
        Left = 392
        Top = 0
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          object cxGrid1DBTableView1FIN_ID: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_ID'
          end
          object cxGrid1DBTableView1FIN_DATA: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_DATA'
          end
          object cxGrid1DBTableView1FIN_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_DESCRICAO'
            Width = 300
          end
          object cxGrid1DBTableView1PAR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_PAGO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 51
          end
          object cxGrid1DBTableView1N_PARCELA: TcxGridDBColumn
            DataBinding.FieldName = 'N_PARCELA'
            Width = 95
          end
          object cxGrid1DBTableView1PAR_VALOR: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR'
            Width = 90
          end
          object cxGrid1DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VALOR_PAGO'
            Width = 90
          end
          object cxGrid1DBTableView1PAR_VENCTO: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_VENCTO'
            Width = 100
          end
          object cxGrid1DBTableView1FIN_DEBCRED: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_DEBCRED'
            Width = 60
          end
          object cxGrid1DBTableView1PES_NOME_FANTASIA: TcxGridDBColumn
            DataBinding.FieldName = 'PES_NOME_FANTASIA'
            Width = 300
          end
          object cxGrid1DBTableView1CAT_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'CAT_DESCRICAO'
            Width = 300
          end
          object cxGrid1DBTableView1CATG_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'CATG_DESCRICAO'
            Width = 300
          end
        end
      end
      inherited Panel1: TPanel
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
      inherited Panel2: TPanel
        inherited rgAtivo: TRadioGroup
          ItemIndex = 1
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label4: TLabel [0]
        Left = 24
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label5: TLabel [1]
        Left = 24
        Top = 56
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label6: TLabel [2]
        Left = 184
        Top = 56
        Width = 40
        Height = 13
        Caption = 'Pesssoa'
      end
      object Label7: TLabel [3]
        Left = 24
        Top = 136
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object Label8: TLabel [4]
        Left = 200
        Top = 136
        Width = 45
        Height = 13
        Caption = 'Categoria'
      end
      object Label3: TLabel [5]
        Left = 24
        Top = 96
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      inherited Panel3: TPanel
        Top = 454
        Width = 776
      end
      object PageControl2: TPageControl
        Left = 24
        Top = 218
        Width = 753
        Height = 243
        ActivePage = tsParcelas
        TabOrder = 1
        object tsParcelas: TTabSheet
          Caption = 'Parcelas'
          object Label11: TLabel
            Left = 10
            Top = 10
            Width = 55
            Height = 13
            Caption = 'Quantidade'
          end
          object Label12: TLabel
            Left = 130
            Top = 10
            Width = 24
            Height = 13
            Caption = 'Valor'
          end
          object Label1: TLabel
            Left = 264
            Top = 8
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object cxGrid4: TcxGrid
            Left = 10
            Top = 32
            Width = 727
            Height = 177
            TabOrder = 0
            object cxGrid4DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Edit.Visible = True
              DataController.DataSource = dsGridParcelas
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = cxGrid4DBTableView1PAR_NUMERO
                end
                item
                  Kind = skSum
                  Column = cxGrid4DBTableView1PAR_VALOR
                end
                item
                  Kind = skSum
                  Column = cxGrid4DBTableView1PAR_VALOR_PAGO
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.DeletingConfirmation = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGrid4DBTableView1PAR_FIN_ID: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_FIN_ID'
              end
              object cxGrid4DBTableView1PAR_NUMERO: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_NUMERO'
              end
              object cxGrid4DBTableView1PAR_QUANTIDADE: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_QUANTIDADE'
              end
              object cxGrid4DBTableView1PAR_VENCTO: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_VENCTO'
              end
              object cxGrid4DBTableView1PAR_VALOR: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_VALOR'
              end
              object cxGrid4DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_VALOR_PAGO'
              end
              object cxGrid4DBTableView1PAR_PAGO: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_PAGO'
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
          object btGerarParcelas: TBitBtn
            Left = 440
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
            OnClick = btGerarParcelasClick
          end
          object edDataParcela: TDateTimePicker
            Left = 304
            Top = 4
            Width = 103
            Height = 21
            Date = 42468.553416620370000000
            Time = 42468.553416620370000000
            TabOrder = 4
          end
        end
        object tsContratos: TTabSheet
          Caption = 'Contratos'
          ImageIndex = 1
        end
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 32
        Width = 134
        Height = 21
        DataField = 'FIN_ID'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 2
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 184
        Top = 72
        Width = 393
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
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 24
        Top = 152
        Width = 169
        Height = 21
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CATG_DESCRICAO'#9'60'#9'Descri'#231#227'o'#9'F')
        LookupTable = qCategoriaG
        LookupField = 'CATG_ID'
        Navigator = False
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 200
        Top = 152
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
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 168
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
        TabOrder = 6
        Values.Strings = (
          'D'
          'C')
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 24
        Top = 72
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
        TabOrder = 7
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 320
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
        TabOrder = 8
        Values.Strings = (
          'N'
          'S')
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 112
        Width = 393
        Height = 21
        DataField = 'FIN_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 9
      end
    end
  end
  inherited qCadastro: TIBDataSet
    AfterOpen = qCadastroAfterOpen
    DeleteSQL.Strings = (
      'delete from financeiro'
      'where'
      '  FIN_ID = :OLD_FIN_ID')
    InsertSQL.Strings = (
      'insert into financeiro'
      
        '  (FIN_ID, FIN_DATA, FIN_DESCRICAO, FIN_PES_ID, FIN_CAT_ID, FIN_' +
        'DEBCRED, '
      '   FIN_TIPO_DC, FIN_INATIVO)'
      'values'
      
        '  (:FIN_ID, :FIN_DATA, :FIN_DESCRICAO, :FIN_PES_ID, :FIN_CAT_ID,' +
        ' '
      ':FIN_DEBCRED, '
      '   :FIN_TIPO_DC, :FIN_INATIVO)')
    RefreshSQL.Strings = (
      'Select *'
      'from financeiro '
      'where'
      '  FIN_ID = :FIN_ID')
    SelectSQL.Strings = (
      'select * from financeiro f where f.fin_id=:FId')
    ModifySQL.Strings = (
      'update financeiro'
      'set'
      '  FIN_ID = :FIN_ID,'
      '  FIN_DATA = :FIN_DATA,'
      '  FIN_DESCRICAO = :FIN_DESCRICAO,'
      '  FIN_PES_ID = :FIN_PES_ID,'
      '  FIN_CAT_ID = :FIN_CAT_ID,'
      '  FIN_DEBCRED = :FIN_DEBCRED,'
      '  FIN_TIPO_DC = :FIN_TIPO_DC,'
      '  FIN_INATIVO = :FIN_INATIVO'
      'where'
      '  FIN_ID = :OLD_FIN_ID')
    GeneratorField.Field = 'FIN_ID'
    GeneratorField.Generator = 'GEN_FINANCEIRO'
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
      DisplayLabel = 'Pessoa'
      FieldName = 'FIN_PES_ID'
      Origin = 'FINANCEIRO.FIN_PES_ID'
      Required = True
    end
    object qCadastroFIN_CAT_ID: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'FIN_CAT_ID'
      Origin = 'FINANCEIRO.FIN_CAT_ID'
      Required = True
    end
    object qCadastroFIN_DEBCRED: TIBStringField
      DisplayLabel = 'DebCred'
      FieldName = 'FIN_DEBCRED'
      Origin = 'FINANCEIRO.FIN_DEBCRED'
      FixedChar = True
      Size = 1
    end
    object qCadastroFIN_TIPO_DC: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'FIN_TIPO_DC'
      Origin = 'FINANCEIRO.FIN_TIPO_DC'
    end
    object qCadastroFIN_INATIVO: TIBStringField
      FieldName = 'FIN_INATIVO'
      Origin = 'FINANCEIRO.FIN_INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select financeiro.fin_id,'
      '       financeiro.fin_data,'
      '       financeiro.fin_debcred,'
      '       financeiro.fin_descricao,'
      '       pessoa.pes_nome_fantasia,'
      '       categoria.cat_id,'
      '       categoria.cat_descricao,'
      '       categoria_grupo.catg_id,'
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
      
        ' where ((coalesce(financeiro.fin_inativo,'#39'N'#39')=:ativo) or ( :ativ' +
        'o = '#39' '#39' ))'
      'order by a.par_pago,financeiro.fin_descricao')
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
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end>
    object qConsultaFIN_ID: TIntegerField
      DisplayLabel = 'Codigo'
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
      DisplayLabel = 'DebCred'
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
      DisplayLabel = 'Numero parcela'
      FieldName = 'N_PARCELA'
      Size = 23
    end
    object qConsultaPAR_VALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_VALOR_PAGO: TIBBCDField
      DisplayLabel = 'Valor pago'
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'PAR_VENCTO'
      Origin = 'PARCELAS.PAR_VENCTO'
    end
    object qConsultaCAT_ID: TIntegerField
      FieldName = 'CAT_ID'
      Origin = 'CATEGORIA.CAT_ID'
      Required = True
    end
    object qConsultaCATG_ID: TIntegerField
      FieldName = 'CATG_ID'
      Origin = 'CATEGORIA_GRUPO.CATG_ID'
      Required = True
    end
  end
  inherited dsConsulta: TDataSource
    OnDataChange = dsConsultaDataChange
  end
  object dsAVencer: TDataSource
    DataSet = qAVencer
    Left = 680
    Top = 48
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
    Left = 632
    Top = 48
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
  object dsPessoa: TDataSource
    DataSet = qPessoa
    Left = 576
    Top = 48
  end
  object qPessoa: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from pessoa p order by p.pes_nome_razao, p.pes_nome_fan' +
        'tasia')
    Left = 544
    Top = 48
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
  object dsCategoria: TDataSource
    DataSet = qCategoria
    Left = 696
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
  object dsCategoriaG: TDataSource
    DataSet = qCategoriaG
    Left = 632
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
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_VALOR_PAGO: TIBBCDField
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      DisplayFormat = '0.00'
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
  object cdsGridParcelas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PAR_FIN_ID'
        DataType = ftInteger
      end
      item
        Name = 'PAR_NUMERO'
        DataType = ftInteger
      end
      item
        Name = 'PAR_QUANTIDADE'
        DataType = ftInteger
      end
      item
        Name = 'PAR_VENCTO'
        DataType = ftDate
      end
      item
        Name = 'PAR_VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'PAR_VALOR_PAGO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'PAR_PAGO'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 232
    Top = 360
    Data = {
      DA0000009619E0BD010000001800000007000000000003000000DA000A504152
      5F46494E5F494404000100000000000A5041525F4E554D45524F040001000000
      00000E5041525F5155414E54494441444504000100000000000A5041525F5645
      4E43544F0400060000000000095041525F56414C4F520B000500000002000844
      4543494D414C530200020002000557494454480200020012000E5041525F5641
      4C4F525F5041474F0B0005000000020008444543494D414C5302000200020005
      5749445448020002001200085041525F5041474F04000100000000000000}
    object cdsGridParcelasPAR_FIN_ID: TIntegerField
      FieldName = 'PAR_FIN_ID'
    end
    object cdsGridParcelasPAR_NUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'PAR_NUMERO'
    end
    object cdsGridParcelasPAR_QUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'PAR_QUANTIDADE'
    end
    object cdsGridParcelasPAR_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'PAR_VENCTO'
    end
    object cdsGridParcelasPAR_VALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object cdsGridParcelasPAR_VALOR_PAGO: TBCDField
      DisplayLabel = 'Valor pago'
      FieldName = 'PAR_VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object cdsGridParcelasPAR_PAGO: TIntegerField
      DisplayLabel = 'Pago'
      FieldName = 'PAR_PAGO'
    end
  end
  object dsGridParcelas: TDataSource
    DataSet = cdsGridParcelas
    Left = 264
    Top = 360
  end
  object qBuscaParcelas: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from parcelas where parcelas.par_fin_id=:fin_id')
    Left = 232
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fin_id'
        ParamType = ptUnknown
      end>
    object qBuscaParcelasPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PARCELAS.PAR_ID'
      Required = True
    end
    object qBuscaParcelasPAR_FIN_ID: TIntegerField
      FieldName = 'PAR_FIN_ID'
      Origin = 'PARCELAS.PAR_FIN_ID'
      Required = True
    end
    object qBuscaParcelasPAR_NUMERO: TIntegerField
      FieldName = 'PAR_NUMERO'
      Origin = 'PARCELAS.PAR_NUMERO'
    end
    object qBuscaParcelasPAR_QUANTIDADE: TIntegerField
      FieldName = 'PAR_QUANTIDADE'
      Origin = 'PARCELAS.PAR_QUANTIDADE'
    end
    object qBuscaParcelasPAR_VENCTO: TDateField
      FieldName = 'PAR_VENCTO'
      Origin = 'PARCELAS.PAR_VENCTO'
    end
    object qBuscaParcelasPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object qBuscaParcelasPAR_VALOR_PAGO: TIBBCDField
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object qBuscaParcelasPAR_PAGO: TIntegerField
      FieldName = 'PAR_PAGO'
      Origin = 'PARCELAS.PAR_PAGO'
    end
  end
end
