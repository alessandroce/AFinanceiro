inherited FCadAquisicao: TFCadAquisicao
  Top = 165
  Caption = 'Cadastro Aquisi'#231#227'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
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
              Column = cxGrid1DBTableView1AQU_VALOR_CUSTO
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid1DBTableView1AQU_VALOR_PAGO
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
              Column = cxGrid1DBTableView1AQU_VALOR_CUSTO
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1AQU_VALOR_PAGO
            end>
          object cxGrid1DBTableView1AQU_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'AQU_DESCRICAO'
            Width = 250
          end
          object cxGrid1DBTableView1AQU_DATAAQUISICAO: TcxGridDBColumn
            Caption = 'Data Aquisi'#231#227'o'
            DataBinding.FieldName = 'AQU_DATAAQUISICAO'
            Width = 80
          end
          object cxGrid1DBTableView1AQU_DATADURACAO: TcxGridDBColumn
            Caption = 'Data Dura'#231#227'o'
            DataBinding.FieldName = 'AQU_DATADURACAO'
            Width = 80
          end
          object cxGrid1DBTableView1AQU_DATA_CAD: TcxGridDBColumn
            Caption = 'Data cadastro'
            DataBinding.FieldName = 'AQU_DATA_CAD'
            Width = 80
          end
          object cxGrid1DBTableView1AQU_ADQUIRIDO: TcxGridDBColumn
            Caption = 'Adquirido'
            DataBinding.FieldName = 'AQU_ADQUIRIDO'
            Visible = False
            Width = 50
          end
          object cxGrid1DBTableView1AQU_VALOR_CUSTO: TcxGridDBColumn
            Caption = 'Valor Custo'
            DataBinding.FieldName = 'AQU_VALOR_CUSTO'
            Width = 80
          end
          object cxGrid1DBTableView1AQU_VALOR_PAGO: TcxGridDBColumn
            Caption = 'Valor Pago'
            DataBinding.FieldName = 'AQU_VALOR_PAGO'
            Width = 80
          end
          object cxGrid1DBTableView1TIPO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TIPO'
            Width = 120
          end
        end
      end
      inherited Panel1: TPanel
        object Bevel1: TBevel
          Left = 8
          Top = 3
          Width = 277
          Height = 32
          Shape = bsFrame
        end
        object rbAdquirido: TRadioButton
          Left = 96
          Top = 8
          Width = 73
          Height = 17
          Caption = 'Adquirido'
          TabOrder = 0
          OnClick = rbAdquiridoClick
        end
        object rbAquisicaoFutura: TRadioButton
          Left = 172
          Top = 8
          Width = 105
          Height = 17
          Caption = 'Aquisi'#231#227'o futura'
          TabOrder = 1
          OnClick = rbAquisicaoFuturaClick
        end
        object rbTodos: TRadioButton
          Left = 26
          Top = 8
          Width = 57
          Height = 17
          Caption = 'Todos'
          Checked = True
          TabOrder = 2
          TabStop = True
          OnClick = rbTodosClick
        end
      end
      inherited Panel2: TPanel
        inherited rgAtivo: TRadioGroup
          ItemIndex = 0
          OnClick = rgAtivoClick
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 120
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label2: TLabel [1]
        Left = 120
        Top = 88
        Width = 72
        Height = 13
        Caption = 'Data Aquisi'#231#227'o'
      end
      object Label3: TLabel [2]
        Left = 256
        Top = 88
        Width = 65
        Height = 13
        Caption = 'Data dura'#231#227'o'
      end
      object Label4: TLabel [3]
        Left = 392
        Top = 88
        Width = 67
        Height = 13
        Caption = 'Data cadastro'
      end
      object Label6: TLabel [4]
        Left = 120
        Top = 128
        Width = 53
        Height = 13
        Caption = 'Valor custo'
      end
      object Label7: TLabel [5]
        Left = 256
        Top = 128
        Width = 51
        Height = 13
        Caption = 'Valor pago'
      end
      object Label5: TLabel [6]
        Left = 120
        Top = 8
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      inherited Panel3: TPanel
        TabOrder = 9
      end
      object DBEdit1: TDBEdit
        Left = 120
        Top = 64
        Width = 400
        Height = 21
        DataField = 'AQU_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBEdit2: TDBEdit
        Left = 120
        Top = 104
        Width = 134
        Height = 21
        DataField = 'AQU_DATAAQUISICAO'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object DBEdit3: TDBEdit
        Left = 256
        Top = 104
        Width = 134
        Height = 21
        DataField = 'AQU_DATADURACAO'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 392
        Top = 104
        Width = 134
        Height = 21
        DataField = 'AQU_DATA_CAD'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 120
        Top = 144
        Width = 134
        Height = 21
        DataField = 'AQU_VALOR_CUSTO'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 256
        Top = 144
        Width = 134
        Height = 21
        DataField = 'AQU_VALOR_PAGO'
        DataSource = dsCadastro
        TabOrder = 8
      end
      object DBCheckBox1: TDBCheckBox
        Left = 384
        Top = 26
        Width = 65
        Height = 17
        Caption = 'Adquirido'
        DataField = 'AQU_ADQUIRIDO'
        DataSource = dsCadastro
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 464
        Top = 26
        Width = 56
        Height = 17
        Caption = 'Inativo'
        DataField = 'AQU_INATIVO'
        DataSource = dsCadastro
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 120
        Top = 24
        Width = 249
        Height = 21
        DataField = 'AQU_TIPO'
        DataSource = dsCadastro
        KeyField = 'AQT_ID'
        ListField = 'AQT_DESCRICAO'
        ListSource = dsTipo
        TabOrder = 0
      end
    end
  end
  inherited qCadastro: TIBDataSet
    OnNewRecord = qCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from aquisicao'
      'where'
      '  AQU_ID = :OLD_AQU_ID')
    InsertSQL.Strings = (
      'insert into aquisicao'
      '  (AQU_ID, AQU_TIPO, AQU_DESCRICAO, AQU_DATAAQUISICAO, '
      'AQU_DATADURACAO, '
      '   AQU_DH_CA, AQU_ADQUIRIDO, AQU_VALOR_CUSTO, AQU_VALOR_PAGO, '
      'AQU_USU_ID, '
      '   AQU_INATIVO, AQU_DATA_CAD)'
      'values'
      '  (:AQU_ID, :AQU_TIPO, :AQU_DESCRICAO, :AQU_DATAAQUISICAO, '
      ':AQU_DATADURACAO, '
      
        '   :AQU_DH_CA, :AQU_ADQUIRIDO, :AQU_VALOR_CUSTO, :AQU_VALOR_PAGO' +
        ', '
      ':AQU_USU_ID, '
      '   :AQU_INATIVO, :AQU_DATA_CAD)')
    RefreshSQL.Strings = (
      'Select *'
      'from aquisicao '
      'where'
      '  AQU_ID = :AQU_ID')
    SelectSQL.Strings = (
      'select *'
      '  from aquisicao'
      ' where aquisicao.aqu_id = :aqu_id')
    ModifySQL.Strings = (
      'update aquisicao'
      'set'
      '  AQU_ID = :AQU_ID,'
      '  AQU_TIPO = :AQU_TIPO,'
      '  AQU_DESCRICAO = :AQU_DESCRICAO,'
      '  AQU_DATAAQUISICAO = :AQU_DATAAQUISICAO,'
      '  AQU_DATADURACAO = :AQU_DATADURACAO,'
      '  AQU_DH_CA = :AQU_DH_CA,'
      '  AQU_ADQUIRIDO = :AQU_ADQUIRIDO,'
      '  AQU_VALOR_CUSTO = :AQU_VALOR_CUSTO,'
      '  AQU_VALOR_PAGO = :AQU_VALOR_PAGO,'
      '  AQU_USU_ID = :AQU_USU_ID,'
      '  AQU_INATIVO = :AQU_INATIVO,'
      '  AQU_DATA_CAD = :AQU_DATA_CAD'
      'where'
      '  AQU_ID = :OLD_AQU_ID')
    GeneratorField.Field = 'AQU_ID'
    GeneratorField.Generator = 'GEN_AQUISICAO'
    DataSource = dsConsulta
    object qCadastroAQU_ID: TIntegerField
      FieldName = 'AQU_ID'
      Origin = 'AQUISICAO.AQU_ID'
      Required = True
    end
    object qCadastroAQU_TIPO: TIntegerField
      FieldName = 'AQU_TIPO'
      Origin = 'AQUISICAO.AQU_TIPO'
    end
    object qCadastroAQU_DESCRICAO: TIBStringField
      FieldName = 'AQU_DESCRICAO'
      Origin = 'AQUISICAO.AQU_DESCRICAO'
      Size = 100
    end
    object qCadastroAQU_DATAAQUISICAO: TDateField
      FieldName = 'AQU_DATAAQUISICAO'
      Origin = 'AQUISICAO.AQU_DATAAQUISICAO'
      EditMask = '!99/99/0000;1;_'
    end
    object qCadastroAQU_DATADURACAO: TDateField
      FieldName = 'AQU_DATADURACAO'
      Origin = 'AQUISICAO.AQU_DATADURACAO'
      EditMask = '!99/99/0000;1;_'
    end
    object qCadastroAQU_DH_CA: TDateTimeField
      FieldName = 'AQU_DH_CA'
      Origin = 'AQUISICAO.AQU_DH_CA'
      EditMask = '!99/99/0000;1;_'
    end
    object qCadastroAQU_ADQUIRIDO: TIBStringField
      FieldName = 'AQU_ADQUIRIDO'
      Origin = 'AQUISICAO.AQU_ADQUIRIDO'
      FixedChar = True
      Size = 1
    end
    object qCadastroAQU_VALOR_CUSTO: TIBBCDField
      FieldName = 'AQU_VALOR_CUSTO'
      Origin = 'AQUISICAO.AQU_VALOR_CUSTO'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qCadastroAQU_VALOR_PAGO: TIBBCDField
      FieldName = 'AQU_VALOR_PAGO'
      Origin = 'AQUISICAO.AQU_VALOR_PAGO'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qCadastroAQU_USU_ID: TIntegerField
      FieldName = 'AQU_USU_ID'
      Origin = 'AQUISICAO.AQU_USU_ID'
      Required = True
    end
    object qCadastroAQU_INATIVO: TIBStringField
      FieldName = 'AQU_INATIVO'
      Origin = 'AQUISICAO.AQU_INATIVO'
      FixedChar = True
      Size = 1
    end
    object qCadastroAQU_DATA_CAD: TDateField
      FieldName = 'AQU_DATA_CAD'
      Origin = 'AQUISICAO.AQU_DATA_CAD'
    end
  end
  inherited qConsulta: TIBQuery
    AfterOpen = qConsultaAfterOpen
    SQL.Strings = (
      'select *'
      '  from aquisicao'
      ' where aquisicao.aqu_usu_id = :usu_id'
      
        '   and ((coalesce(aquisicao.aqu_adquirido,'#39'N'#39') = :adquirido) or ' +
        '(:adquirido = '#39' '#39'))'
      
        '   and ((coalesce(aquisicao.aqu_inativo,'#39'F'#39') = :inativo) or (:in' +
        'ativo = '#39' '#39'))')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usu_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adquirido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adquirido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'inativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'inativo'
        ParamType = ptUnknown
      end>
    object qConsultaAQU_ID: TIntegerField
      FieldName = 'AQU_ID'
      Origin = 'AQUISICAO.AQU_ID'
      Required = True
    end
    object qConsultaAQU_TIPO: TIntegerField
      FieldName = 'AQU_TIPO'
      Origin = 'AQUISICAO.AQU_TIPO'
    end
    object qConsultaAQU_DESCRICAO: TIBStringField
      FieldName = 'AQU_DESCRICAO'
      Origin = 'AQUISICAO.AQU_DESCRICAO'
      Size = 100
    end
    object qConsultaAQU_DATAAQUISICAO: TDateField
      FieldName = 'AQU_DATAAQUISICAO'
      Origin = 'AQUISICAO.AQU_DATAAQUISICAO'
    end
    object qConsultaAQU_DATADURACAO: TDateField
      FieldName = 'AQU_DATADURACAO'
      Origin = 'AQUISICAO.AQU_DATADURACAO'
    end
    object qConsultaAQU_DH_CA: TDateTimeField
      FieldName = 'AQU_DH_CA'
      Origin = 'AQUISICAO.AQU_DH_CA'
    end
    object qConsultaAQU_ADQUIRIDO: TIBStringField
      FieldName = 'AQU_ADQUIRIDO'
      Origin = 'AQUISICAO.AQU_ADQUIRIDO'
      FixedChar = True
      Size = 1
    end
    object qConsultaAQU_VALOR_CUSTO: TIBBCDField
      FieldName = 'AQU_VALOR_CUSTO'
      Origin = 'AQUISICAO.AQU_VALOR_CUSTO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qConsultaAQU_VALOR_PAGO: TIBBCDField
      FieldName = 'AQU_VALOR_PAGO'
      Origin = 'AQUISICAO.AQU_VALOR_PAGO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qConsultaAQU_USU_ID: TIntegerField
      FieldName = 'AQU_USU_ID'
      Origin = 'AQUISICAO.AQU_USU_ID'
      Required = True
    end
    object qConsultaAQU_INATIVO: TIBStringField
      FieldName = 'AQU_INATIVO'
      Origin = 'AQUISICAO.AQU_INATIVO'
      FixedChar = True
      Size = 1
    end
    object qConsultaTIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPO'
      LookupDataSet = qTipo
      LookupKeyFields = 'AQT_ID'
      LookupResultField = 'AQT_DESCRICAO'
      KeyFields = 'AQU_TIPO'
      Size = 100
      Lookup = True
    end
    object qConsultaAQU_DATA_CAD: TDateField
      FieldName = 'AQU_DATA_CAD'
      Origin = 'AQUISICAO.AQU_DATA_CAD'
    end
  end
  object qTipo: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    SQL.Strings = (
      'select aquisicao_tipo.aqt_id,'
      '       aquisicao_tipo.aqt_descricao'
      '  from aquisicao_tipo'
      ' order by aquisicao_tipo.aqt_descricao')
    Left = 480
    Top = 248
    object qTipoAQT_DESCRICAO: TIBStringField
      FieldName = 'AQT_DESCRICAO'
      Origin = 'AQUISICAO_TIPO.AQT_DESCRICAO'
      Size = 100
    end
    object qTipoAQT_ID: TIntegerField
      FieldName = 'AQT_ID'
      Origin = 'AQUISICAO_TIPO.AQT_ID'
      Required = True
    end
  end
  object dsTipo: TDataSource
    DataSet = qTipo
    Left = 536
    Top = 248
  end
end
