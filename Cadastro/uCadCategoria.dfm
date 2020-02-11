inherited FCadCategoria: TFCadCategoria
  Caption = 'Cadastro Categoria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1CAT_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CAT_ID'
          end
          object cxGrid1DBTableView1CAT_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'CAT_DESCRICAO'
            Width = 400
          end
          object cxGrid1DBTableView1CAT_CATG_ID: TcxGridDBColumn
            DataBinding.FieldName = 'CAT_CATG_ID'
            Visible = False
          end
          object cxGrid1DBTableView1CAT_INATIVO: TcxGridDBColumn
            DataBinding.FieldName = 'CAT_INATIVO'
            Visible = False
          end
          object cxGrid1DBTableView1CAT_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'CAT_DH_CA'
            Visible = False
          end
          object cxGrid1DBTableView1CATG_DESCRICAO: TcxGridDBColumn
            Caption = 'Grupo'
            DataBinding.FieldName = 'CATG_DESCRICAO'
            Width = 290
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
        Top = 56
        Width = 38
        Height = 13
        Caption = 'CAT_ID'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 104
        Top = 96
        Width = 89
        Height = 13
        Caption = 'CAT_DESCRICAO'
        FocusControl = DBEdit2
      end
      inherited Panel3: TPanel
        Top = 453
        Width = 776
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 72
        Width = 80
        Height = 21
        DataField = 'CAT_ID'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 104
        Top = 112
        Width = 400
        Height = 21
        DataField = 'CAT_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 440
        Top = 72
        Width = 65
        Height = 17
        Caption = 'Inativo'
        DataField = 'CAT_INATIVO'
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
      'delete from categoria'
      'where'
      '  CAT_ID = :OLD_CAT_ID')
    InsertSQL.Strings = (
      'insert into categoria'
      '  (CAT_CATG_ID, CAT_DESCRICAO, CAT_DH_CA, CAT_ID, CAT_INATIVO)'
      'values'
      
        '  (:CAT_CATG_ID, :CAT_DESCRICAO, :CAT_DH_CA, :CAT_ID, :CAT_INATI' +
        'VO)')
    RefreshSQL.Strings = (
      'Select '
      '  CAT_ID,'
      '  CAT_DESCRICAO,'
      '  CAT_CATG_ID,'
      '  CAT_INATIVO,'
      '  CAT_DH_CA'
      'from categoria '
      'where'
      '  CAT_ID = :CAT_ID')
    SelectSQL.Strings = (
      'select * from categoria where categoria.cat_id = :cat_id')
    ModifySQL.Strings = (
      'update categoria'
      'set'
      '  CAT_CATG_ID = :CAT_CATG_ID,'
      '  CAT_DESCRICAO = :CAT_DESCRICAO,'
      '  CAT_DH_CA = :CAT_DH_CA,'
      '  CAT_ID = :CAT_ID,'
      '  CAT_INATIVO = :CAT_INATIVO'
      'where'
      '  CAT_ID = :OLD_CAT_ID')
    GeneratorField.Field = 'CAT_ID'
    GeneratorField.Generator = 'GEN_CATEGORIA'
    DataSource = dsConsulta
    object qCadastroCAT_ID: TIntegerField
      FieldName = 'CAT_ID'
      Origin = '"CATEGORIA"."CAT_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCadastroCAT_DESCRICAO: TIBStringField
      FieldName = 'CAT_DESCRICAO'
      Origin = '"CATEGORIA"."CAT_DESCRICAO"'
      Size = 100
    end
    object qCadastroCAT_CATG_ID: TIntegerField
      FieldName = 'CAT_CATG_ID'
      Origin = '"CATEGORIA"."CAT_CATG_ID"'
      Required = True
    end
    object qCadastroCAT_INATIVO: TIBStringField
      FieldName = 'CAT_INATIVO'
      Origin = '"CATEGORIA"."CAT_INATIVO"'
      FixedChar = True
      Size = 1
    end
    object qCadastroCAT_DH_CA: TDateTimeField
      FieldName = 'CAT_DH_CA'
      Origin = '"CATEGORIA"."CAT_DH_CA"'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select categoria.*,'
      '       categoria_grupo.catg_descricao'
      '  from categoria'
      
        ' join categoria_grupo on (categoria_grupo.catg_id=categoria.cat_' +
        'catg_id)'
      
        ' where ((coalesce(categoria.cat_dh_ca,'#39'N'#39')=:inativo) or (:inativ' +
        'o = '#39' '#39'))'
      'order by categoria_grupo.catg_descricao,categoria.cat_descricao')
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
    object qConsultaCAT_ID: TIntegerField
      FieldName = 'CAT_ID'
      Origin = '"CATEGORIA"."CAT_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaCAT_DESCRICAO: TIBStringField
      FieldName = 'CAT_DESCRICAO'
      Origin = '"CATEGORIA"."CAT_DESCRICAO"'
      Size = 100
    end
    object qConsultaCAT_CATG_ID: TIntegerField
      FieldName = 'CAT_CATG_ID'
      Origin = '"CATEGORIA"."CAT_CATG_ID"'
      Required = True
    end
    object qConsultaCAT_INATIVO: TIBStringField
      FieldName = 'CAT_INATIVO'
      Origin = '"CATEGORIA"."CAT_INATIVO"'
      FixedChar = True
      Size = 1
    end
    object qConsultaCAT_DH_CA: TDateTimeField
      FieldName = 'CAT_DH_CA'
      Origin = '"CATEGORIA"."CAT_DH_CA"'
    end
    object qConsultaCATG_DESCRICAO: TIBStringField
      FieldName = 'CATG_DESCRICAO'
      Origin = '"CATEGORIA_GRUPO"."CATG_DESCRICAO"'
      Size = 100
    end
  end
  object qGrupo: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    SQL.Strings = (
      
        'select * from categoria_grupo order by categoria_grupo.catg_desc' +
        'ricao')
    Left = 384
    Top = 288
    object qGrupoCATG_ID: TIntegerField
      FieldName = 'CATG_ID'
      Origin = '"CATEGORIA_GRUPO"."CATG_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qGrupoCATG_DESCRICAO: TIBStringField
      FieldName = 'CATG_DESCRICAO'
      Origin = '"CATEGORIA_GRUPO"."CATG_DESCRICAO"'
      Size = 100
    end
    object qGrupoCATG_INATIVO: TIBStringField
      FieldName = 'CATG_INATIVO'
      Origin = '"CATEGORIA_GRUPO"."CATG_INATIVO"'
      FixedChar = True
      Size = 1
    end
    object qGrupoCATG_DH_CA: TDateTimeField
      FieldName = 'CATG_DH_CA'
      Origin = '"CATEGORIA_GRUPO"."CATG_DH_CA"'
    end
  end
  object dsGrupo: TDataSource
    DataSet = qGrupo
    Left = 424
    Top = 288
  end
end
