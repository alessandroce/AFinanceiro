inherited FCadConsultaMedica: TFCadConsultaMedica
  Left = 223
  Top = 143
  Caption = 'Cadastro Consulta M'#233'dica'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1CMED_ID: TcxGridDBColumn
            DataBinding.FieldName = 'CMED_ID'
            Visible = False
          end
          object cxGrid1DBTableView1CMED_DATA: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'CMED_DATA'
            Width = 75
          end
          object cxGrid1DBTableView1CMED_PESSOA: TcxGridDBColumn
            Caption = 'Pessoa'
            DataBinding.FieldName = 'CMED_PESSOA'
            Width = 200
          end
          object cxGrid1DBTableView1CMED_LOCAL: TcxGridDBColumn
            Caption = 'Local'
            DataBinding.FieldName = 'CMED_LOCAL'
            Width = 250
          end
          object cxGrid1DBTableView1CMED_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'CMED_DESCRICAO'
            Width = 250
          end
          object cxGrid1DBTableView1CMED_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'CMED_DH_CA'
            Visible = False
          end
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 40
        Top = 32
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 40
        Top = 72
        Width = 35
        Height = 13
        Caption = 'Pessoa'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 40
        Top = 112
        Width = 26
        Height = 13
        Caption = 'Local'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 40
        Top = 152
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      inherited Panel3: TPanel
        Top = 454
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 48
        Width = 80
        Height = 21
        DataField = 'CMED_DATA'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 88
        Width = 500
        Height = 21
        DataField = 'CMED_PESSOA'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 40
        Top = 128
        Width = 500
        Height = 21
        DataField = 'CMED_LOCAL'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBMemo1: TDBMemo
        Left = 40
        Top = 168
        Width = 500
        Height = 89
        DataField = 'CMED_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 4
      end
    end
  end
  inherited qCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from consulta_medica'
      'where'
      '  CMED_ID = :OLD_CMED_ID')
    InsertSQL.Strings = (
      'insert into consulta_medica'
      '  (CMED_ID, CMED_DATA, CMED_PESSOA, CMED_LOCAL, CMED_DESCRICAO, '
      'CMED_DH_CA)'
      'values'
      '  (:CMED_ID, :CMED_DATA, :CMED_PESSOA, :CMED_LOCAL, '
      ':CMED_DESCRICAO, :CMED_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from consulta_medica '
      'where'
      '  CMED_ID = :CMED_ID')
    SelectSQL.Strings = (
      'select * from consulta_medica where cmed_id = :cmed_id')
    ModifySQL.Strings = (
      'update consulta_medica'
      'set'
      '  CMED_ID = :CMED_ID,'
      '  CMED_DATA = :CMED_DATA,'
      '  CMED_PESSOA = :CMED_PESSOA,'
      '  CMED_LOCAL = :CMED_LOCAL,'
      '  CMED_DESCRICAO = :CMED_DESCRICAO,'
      '  CMED_DH_CA = :CMED_DH_CA'
      'where'
      '  CMED_ID = :OLD_CMED_ID')
    GeneratorField.Field = 'CMED_ID'
    GeneratorField.Generator = 'GEN_CONSULTA_MEDICA'
    object qCadastroCMED_ID: TIntegerField
      FieldName = 'CMED_ID'
      Origin = 'CONSULTA_MEDICA.CMED_ID'
      Required = True
    end
    object qCadastroCMED_DATA: TDateField
      FieldName = 'CMED_DATA'
      Origin = 'CONSULTA_MEDICA.CMED_DATA'
    end
    object qCadastroCMED_PESSOA: TIBStringField
      FieldName = 'CMED_PESSOA'
      Origin = 'CONSULTA_MEDICA.CMED_PESSOA'
      Size = 100
    end
    object qCadastroCMED_LOCAL: TIBStringField
      FieldName = 'CMED_LOCAL'
      Origin = 'CONSULTA_MEDICA.CMED_LOCAL'
      Size = 100
    end
    object qCadastroCMED_DESCRICAO: TIBStringField
      FieldName = 'CMED_DESCRICAO'
      Origin = 'CONSULTA_MEDICA.CMED_DESCRICAO'
      Size = 100
    end
    object qCadastroCMED_DH_CA: TDateTimeField
      FieldName = 'CMED_DH_CA'
      Origin = 'CONSULTA_MEDICA.CMED_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select * from consulta_medica order by cmed_data')
    object qConsultaCMED_ID: TIntegerField
      FieldName = 'CMED_ID'
      Origin = 'CONSULTA_MEDICA.CMED_ID'
      Required = True
    end
    object qConsultaCMED_DATA: TDateField
      FieldName = 'CMED_DATA'
      Origin = 'CONSULTA_MEDICA.CMED_DATA'
    end
    object qConsultaCMED_PESSOA: TIBStringField
      FieldName = 'CMED_PESSOA'
      Origin = 'CONSULTA_MEDICA.CMED_PESSOA'
      Size = 100
    end
    object qConsultaCMED_LOCAL: TIBStringField
      FieldName = 'CMED_LOCAL'
      Origin = 'CONSULTA_MEDICA.CMED_LOCAL'
      Size = 100
    end
    object qConsultaCMED_DESCRICAO: TIBStringField
      FieldName = 'CMED_DESCRICAO'
      Origin = 'CONSULTA_MEDICA.CMED_DESCRICAO'
      Size = 100
    end
    object qConsultaCMED_DH_CA: TDateTimeField
      FieldName = 'CMED_DH_CA'
      Origin = 'CONSULTA_MEDICA.CMED_DH_CA'
    end
  end
end
