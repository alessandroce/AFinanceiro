inherited FCadCentroCusto: TFCadCentroCusto
  Left = 160
  Top = 79
  Caption = 'Cadastro Centro Custo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1CCT_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CCT_ID'
          end
          object cxGrid1DBTableView1CCT_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'CCT_DESCRICAO'
          end
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
      object Label1: TLabel [0]
        Left = 40
        Top = 24
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object Label2: TLabel [1]
        Left = 40
        Top = 64
        Width = 43
        Height = 13
        Caption = 'Decri'#231#227'o'
      end
      inherited Panel3: TPanel
        Top = 454
        Width = 776
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 40
        Width = 80
        Height = 21
        DataField = 'CCT_ID'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 80
        Width = 400
        Height = 21
        DataField = 'CCT_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 144
        Top = 42
        Width = 97
        Height = 17
        Caption = 'Inativo'
        DataField = 'CCT_INATIVO'
        DataSource = dsCadastro
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
  end
  inherited qCadastro: TIBDataSet
    OnNewRecord = qCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from centro_custo'
      'where'
      '  CCT_ID = :OLD_CCT_ID')
    InsertSQL.Strings = (
      'insert into centro_custo'
      '  (CCT_ID, CCT_DESCRICAO, CCT_DH_CA)'
      'values'
      '  (:CCT_ID, :CCT_DESCRICAO, :CCT_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from centro_custo '
      'where'
      '  CCT_ID = :CCT_ID')
    SelectSQL.Strings = (
      'select *'
      '  from centro_custo'
      'where centro_custo.cct_id = :cct_id')
    ModifySQL.Strings = (
      'update centro_custo'
      'set'
      '  CCT_ID = :CCT_ID,'
      '  CCT_DESCRICAO = :CCT_DESCRICAO,'
      '  CCT_DH_CA = :CCT_DH_CA'
      'where'
      '  CCT_ID = :OLD_CCT_ID')
    GeneratorField.Field = 'CCT_ID'
    GeneratorField.Generator = 'GEN_CENTRO_CUSTO'
    DataSource = dsConsulta
    object qCadastroCCT_ID: TIntegerField
      FieldName = 'CCT_ID'
      Origin = 'CENTRO_CUSTO.CCT_ID'
      Required = True
    end
    object qCadastroCCT_DESCRICAO: TIBStringField
      FieldName = 'CCT_DESCRICAO'
      Origin = 'CENTRO_CUSTO.CCT_DESCRICAO'
      Size = 100
    end
    object qCadastroCCT_DH_CA: TDateTimeField
      FieldName = 'CCT_DH_CA'
      Origin = 'CENTRO_CUSTO.CCT_DH_CA'
    end
    object qCadastroCCT_INATIVO: TIBStringField
      FieldName = 'CCT_INATIVO'
      Origin = 'CENTRO_CUSTO.CCT_INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select *'
      '  from centro_custo'
      
        ' where ((coalesce(centro_custo.cct_inativo,'#39'N'#39')=:inativo) or (:i' +
        'nativo = '#39' '#39'))'
      'order by centro_custo.cct_descricao'
      '')
    ParamData = <
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
    object qConsultaCCT_ID: TIntegerField
      FieldName = 'CCT_ID'
      Origin = 'CENTRO_CUSTO.CCT_ID'
      Required = True
    end
    object qConsultaCCT_DESCRICAO: TIBStringField
      FieldName = 'CCT_DESCRICAO'
      Origin = 'CENTRO_CUSTO.CCT_DESCRICAO'
      Size = 100
    end
    object qConsultaCCT_DH_CA: TDateTimeField
      FieldName = 'CCT_DH_CA'
      Origin = 'CENTRO_CUSTO.CCT_DH_CA'
    end
    object qConsultaCCT_INATIVO: TIBStringField
      DisplayLabel = 'Inativo'
      FieldName = 'CCT_INATIVO'
      Origin = 'CENTRO_CUSTO.CCT_INATIVO'
      FixedChar = True
      Size = 1
    end
  end
end
