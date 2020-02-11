inherited FCadCategoriaGrupo: TFCadCategoriaGrupo
  Caption = 'Cadastro Categoria Grupo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1CATG_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CATG_ID'
          end
          object cxGrid1DBTableView1CATG_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'CATG_DESCRICAO'
          end
          object cxGrid1DBTableView1CATG_INATIVO: TcxGridDBColumn
            DataBinding.FieldName = 'CATG_INATIVO'
            Visible = False
          end
          object cxGrid1DBTableView1CATG_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'CATG_DH_CA'
            Visible = False
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
        Left = 104
        Top = 32
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 104
        Top = 72
        Width = 97
        Height = 13
        Caption = 'CATG_DESCRICAO'
        FocusControl = DBEdit2
      end
      inherited Panel3: TPanel
        Top = 453
        Width = 776
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 48
        Width = 134
        Height = 21
        DataField = 'CATG_ID'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 104
        Top = 88
        Width = 400
        Height = 21
        DataField = 'CATG_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 256
        Top = 48
        Width = 97
        Height = 17
        Caption = 'Inativo'
        DataField = 'CATG_INATIVO'
        DataSource = dsCadastro
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
  end
  inherited qCadastro: TIBDataSet
    AfterPost = qCadastroAfterPost
    OnNewRecord = qCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from categoria_grupo'
      'where'
      '  CATG_ID = :OLD_CATG_ID')
    InsertSQL.Strings = (
      'insert into categoria_grupo'
      '  (CATG_DESCRICAO, CATG_DH_CA, CATG_ID, CATG_INATIVO)'
      'values'
      '  (:CATG_DESCRICAO, :CATG_DH_CA, :CATG_ID, :CATG_INATIVO)')
    RefreshSQL.Strings = (
      'Select '
      '  CATG_ID,'
      '  CATG_DESCRICAO,'
      '  CATG_INATIVO,'
      '  CATG_DH_CA'
      'from categoria_grupo '
      'where'
      '  CATG_ID = :CATG_ID')
    SelectSQL.Strings = (
      
        'select * from categoria_grupo where categoria_grupo.catg_id = :c' +
        'atg_id')
    ModifySQL.Strings = (
      'update categoria_grupo'
      'set'
      '  CATG_DESCRICAO = :CATG_DESCRICAO,'
      '  CATG_DH_CA = :CATG_DH_CA,'
      '  CATG_ID = :CATG_ID,'
      '  CATG_INATIVO = :CATG_INATIVO'
      'where'
      '  CATG_ID = :OLD_CATG_ID')
    GeneratorField.Field = 'CATG_ID'
    GeneratorField.Generator = 'GEN_CATEGORIA_GRUPO'
    DataSource = dsConsulta
    object qCadastroCATG_ID: TIntegerField
      FieldName = 'CATG_ID'
      Origin = '"CATEGORIA_GRUPO"."CATG_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCadastroCATG_DESCRICAO: TIBStringField
      FieldName = 'CATG_DESCRICAO'
      Origin = '"CATEGORIA_GRUPO"."CATG_DESCRICAO"'
      Size = 100
    end
    object qCadastroCATG_INATIVO: TIBStringField
      FieldName = 'CATG_INATIVO'
      Origin = '"CATEGORIA_GRUPO"."CATG_INATIVO"'
      FixedChar = True
      Size = 1
    end
    object qCadastroCATG_DH_CA: TDateTimeField
      FieldName = 'CATG_DH_CA'
      Origin = '"CATEGORIA_GRUPO"."CATG_DH_CA"'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select * from categoria_grupo'
      
        'where ((coalesce(categoria_grupo.catg_inativo,'#39'N'#39')=:inativo) or ' +
        '(:inativo = '#39' '#39'))'
      'order by categoria_grupo.catg_descricao')
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
    object qConsultaCATG_ID: TIntegerField
      FieldName = 'CATG_ID'
      Origin = '"CATEGORIA_GRUPO"."CATG_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaCATG_DESCRICAO: TIBStringField
      FieldName = 'CATG_DESCRICAO'
      Origin = '"CATEGORIA_GRUPO"."CATG_DESCRICAO"'
      Size = 100
    end
    object qConsultaCATG_INATIVO: TIBStringField
      FieldName = 'CATG_INATIVO'
      Origin = '"CATEGORIA_GRUPO"."CATG_INATIVO"'
      FixedChar = True
      Size = 1
    end
    object qConsultaCATG_DH_CA: TDateTimeField
      FieldName = 'CATG_DH_CA'
      Origin = '"CATEGORIA_GRUPO"."CATG_DH_CA"'
    end
  end
end
