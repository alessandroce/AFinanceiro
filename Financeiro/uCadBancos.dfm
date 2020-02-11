inherited FCadBancos: TFCadBancos
  Left = 238
  Top = 171
  Caption = 'FCadBancos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1BAN_ID: TcxGridDBColumn
            DataBinding.FieldName = 'BAN_ID'
          end
          object cxGrid1DBTableView1BAN_CONTA: TcxGridDBColumn
            DataBinding.FieldName = 'BAN_CONTA'
          end
          object cxGrid1DBTableView1BAN_AGENCIA: TcxGridDBColumn
            DataBinding.FieldName = 'BAN_AGENCIA'
          end
          object cxGrid1DBTableView1BAN_NOMEBANCO: TcxGridDBColumn
            DataBinding.FieldName = 'BAN_NOMEBANCO'
          end
          object cxGrid1DBTableView1BAN_NOMEAGENCIA: TcxGridDBColumn
            DataBinding.FieldName = 'BAN_NOMEAGENCIA'
          end
          object cxGrid1DBTableView1BAN_CTATIPO: TcxGridDBColumn
            DataBinding.FieldName = 'BAN_CTATIPO'
          end
          object cxGrid1DBTableView1BAN_ID_CIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'BAN_ID_CIDADE'
          end
          object cxGrid1DBTableView1BAN_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'BAN_DH_CA'
          end
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 24
        Top = 24
        Width = 28
        Height = 13
        Caption = 'Conta'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 64
        Width = 39
        Height = 13
        Caption = 'Ag'#234'ncia'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 24
        Top = 104
        Width = 62
        Height = 13
        Caption = 'Nome Banco'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 24
        Top = 144
        Width = 70
        Height = 13
        Caption = 'Nome Ag'#234'ncia'
        FocusControl = DBEdit4
      end
      object Label6: TLabel [4]
        Left = 24
        Top = 224
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit6
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 40
        Width = 199
        Height = 21
        DataField = 'BAN_CONTA'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 80
        Width = 134
        Height = 21
        DataField = 'BAN_AGENCIA'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 120
        Width = 300
        Height = 21
        DataField = 'BAN_NOMEBANCO'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 24
        Top = 160
        Width = 300
        Height = 21
        DataField = 'BAN_NOMEAGENCIA'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 24
        Top = 240
        Width = 134
        Height = 21
        DataField = 'BAN_ID_CIDADE'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 264
        Top = 21
        Width = 185
        Height = 40
        Columns = 2
        DataField = 'BAN_CTATIPO'
        DataSource = dsCadastro
        Items.Strings = (
          'Corrente'
          'Aplica'#231#227'o')
        TabOrder = 6
      end
    end
  end
  inherited qCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from banco'
      'where'
      '  BAN_ID = :OLD_BAN_ID')
    InsertSQL.Strings = (
      'insert into banco'
      '  (BAN_ID, BAN_CONTA, BAN_AGENCIA, BAN_NOMEBANCO, '
      'BAN_NOMEAGENCIA, BAN_CTATIPO, '
      '   BAN_ID_CIDADE, BAN_DH_CA)'
      'values'
      '  (:BAN_ID, :BAN_CONTA, :BAN_AGENCIA, :BAN_NOMEBANCO, '
      ':BAN_NOMEAGENCIA, '
      '   :BAN_CTATIPO, :BAN_ID_CIDADE, :BAN_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from banco '
      'where'
      '  BAN_ID = :BAN_ID')
    SelectSQL.Strings = (
      'select * from banco where ban_id = :FId')
    ModifySQL.Strings = (
      'update banco'
      'set'
      '  BAN_ID = :BAN_ID,'
      '  BAN_CONTA = :BAN_CONTA,'
      '  BAN_AGENCIA = :BAN_AGENCIA,'
      '  BAN_NOMEBANCO = :BAN_NOMEBANCO,'
      '  BAN_NOMEAGENCIA = :BAN_NOMEAGENCIA,'
      '  BAN_CTATIPO = :BAN_CTATIPO,'
      '  BAN_ID_CIDADE = :BAN_ID_CIDADE,'
      '  BAN_DH_CA = :BAN_DH_CA'
      'where'
      '  BAN_ID = :OLD_BAN_ID')
    GeneratorField.Field = 'BAN_ID'
    GeneratorField.Generator = 'GEN_BANCO'
    object qCadastroBAN_ID: TIntegerField
      FieldName = 'BAN_ID'
      Origin = 'BANCO.BAN_ID'
      Required = True
    end
    object qCadastroBAN_CONTA: TIBStringField
      FieldName = 'BAN_CONTA'
      Origin = 'BANCO.BAN_CONTA'
      Required = True
      Size = 15
    end
    object qCadastroBAN_AGENCIA: TIntegerField
      FieldName = 'BAN_AGENCIA'
      Origin = 'BANCO.BAN_AGENCIA'
      Required = True
    end
    object qCadastroBAN_NOMEBANCO: TIBStringField
      FieldName = 'BAN_NOMEBANCO'
      Origin = 'BANCO.BAN_NOMEBANCO'
      Required = True
      Size = 100
    end
    object qCadastroBAN_NOMEAGENCIA: TIBStringField
      FieldName = 'BAN_NOMEAGENCIA'
      Origin = 'BANCO.BAN_NOMEAGENCIA'
      Size = 100
    end
    object qCadastroBAN_CTATIPO: TIBStringField
      FieldName = 'BAN_CTATIPO'
      Origin = 'BANCO.BAN_CTATIPO'
      FixedChar = True
      Size = 1
    end
    object qCadastroBAN_ID_CIDADE: TIntegerField
      FieldName = 'BAN_ID_CIDADE'
      Origin = 'BANCO.BAN_ID_CIDADE'
    end
    object qCadastroBAN_DH_CA: TDateTimeField
      FieldName = 'BAN_DH_CA'
      Origin = 'BANCO.BAN_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select * from banco')
    object qConsultaBAN_ID: TIntegerField
      FieldName = 'BAN_ID'
      Origin = 'BANCO.BAN_ID'
      Required = True
    end
    object qConsultaBAN_CONTA: TIBStringField
      FieldName = 'BAN_CONTA'
      Origin = 'BANCO.BAN_CONTA'
      Required = True
      Size = 15
    end
    object qConsultaBAN_AGENCIA: TIntegerField
      FieldName = 'BAN_AGENCIA'
      Origin = 'BANCO.BAN_AGENCIA'
      Required = True
    end
    object qConsultaBAN_NOMEBANCO: TIBStringField
      FieldName = 'BAN_NOMEBANCO'
      Origin = 'BANCO.BAN_NOMEBANCO'
      Required = True
      Size = 100
    end
    object qConsultaBAN_NOMEAGENCIA: TIBStringField
      FieldName = 'BAN_NOMEAGENCIA'
      Origin = 'BANCO.BAN_NOMEAGENCIA'
      Size = 100
    end
    object qConsultaBAN_CTATIPO: TIBStringField
      FieldName = 'BAN_CTATIPO'
      Origin = 'BANCO.BAN_CTATIPO'
      FixedChar = True
      Size = 1
    end
    object qConsultaBAN_ID_CIDADE: TIntegerField
      FieldName = 'BAN_ID_CIDADE'
      Origin = 'BANCO.BAN_ID_CIDADE'
    end
    object qConsultaBAN_DH_CA: TDateTimeField
      FieldName = 'BAN_DH_CA'
      Origin = 'BANCO.BAN_DH_CA'
    end
  end
  inherited dsConsulta: TDataSource
    OnDataChange = dsConsultaDataChange
  end
end
