inherited FCadUsuarios: TFCadUsuarios
  Left = 238
  Top = 171
  Caption = 'Usu'#225'rios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1USU_ID: TcxGridDBColumn
            DataBinding.FieldName = 'USU_ID'
          end
          object cxGrid1DBTableView1USU_PES_ID: TcxGridDBColumn
            DataBinding.FieldName = 'USU_PES_ID'
          end
          object cxGrid1DBTableView1USU_LOGIN_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'USU_LOGIN_NOME'
          end
          object cxGrid1DBTableView1USU_LOGIN: TcxGridDBColumn
            DataBinding.FieldName = 'USU_LOGIN'
          end
          object cxGrid1DBTableView1USU_SENHA: TcxGridDBColumn
            DataBinding.FieldName = 'USU_SENHA'
          end
          object cxGrid1DBTableView1USU_NIVEL: TcxGridDBColumn
            DataBinding.FieldName = 'USU_NIVEL'
          end
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 8
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 160
        Top = 8
        Width = 67
        Height = 13
        Caption = 'USU_PES_ID'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 48
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 16
        Top = 88
        Width = 26
        Height = 13
        Caption = 'Login'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [4]
        Left = 16
        Top = 128
        Width = 31
        Height = 13
        Caption = 'Senha'
        FocusControl = DBEdit5
      end
      object Label6: TLabel [5]
        Left = 16
        Top = 168
        Width = 24
        Height = 13
        Caption = 'Nivel'
        FocusControl = DBEdit6
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 24
        Width = 134
        Height = 21
        DataField = 'USU_ID'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 160
        Top = 24
        Width = 134
        Height = 21
        DataField = 'USU_PES_ID'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 64
        Width = 500
        Height = 21
        DataField = 'USU_LOGIN_NOME'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 104
        Width = 300
        Height = 21
        DataField = 'USU_LOGIN'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 144
        Width = 300
        Height = 21
        DataField = 'USU_SENHA'
        DataSource = dsCadastro
        PasswordChar = '*'
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 184
        Width = 134
        Height = 21
        DataField = 'USU_NIVEL'
        DataSource = dsCadastro
        TabOrder = 6
      end
    end
  end
  inherited qCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from usuario'
      'where'
      '  USU_ID = :OLD_USU_ID')
    InsertSQL.Strings = (
      'insert into usuario'
      '  (USU_ID, USU_PES_ID, USU_LOGIN_NOME, USU_LOGIN, USU_SENHA, '
      'USU_NIVEL)'
      'values'
      
        '  (:USU_ID, :USU_PES_ID, :USU_LOGIN_NOME, :USU_LOGIN, :USU_SENHA' +
        ', '
      ':USU_NIVEL)')
    RefreshSQL.Strings = (
      'Select *'
      'from usuario '
      'where'
      '  USU_ID = :USU_ID')
    SelectSQL.Strings = (
      'select * from usuario where usu_id = :FId')
    ModifySQL.Strings = (
      'update usuario'
      'set'
      '  USU_ID = :USU_ID,'
      '  USU_PES_ID = :USU_PES_ID,'
      '  USU_LOGIN_NOME = :USU_LOGIN_NOME,'
      '  USU_LOGIN = :USU_LOGIN,'
      '  USU_SENHA = :USU_SENHA,'
      '  USU_NIVEL = :USU_NIVEL'
      'where'
      '  USU_ID = :OLD_USU_ID')
    GeneratorField.Field = 'USU_ID'
    GeneratorField.Generator = 'GEN_USUARIO'
    object qCadastroUSU_ID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'USU_ID'
      Origin = 'USUARIO.USU_ID'
      Required = True
    end
    object qCadastroUSU_PES_ID: TIntegerField
      FieldName = 'USU_PES_ID'
      Origin = 'USUARIO.USU_PES_ID'
      DisplayFormat = 'COdigo Pessoa'
    end
    object qCadastroUSU_LOGIN_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'USU_LOGIN_NOME'
      Origin = 'USUARIO.USU_LOGIN_NOME'
      Size = 100
    end
    object qCadastroUSU_LOGIN: TIBStringField
      DisplayLabel = 'Login'
      FieldName = 'USU_LOGIN'
      Origin = 'USUARIO.USU_LOGIN'
      Size = 30
    end
    object qCadastroUSU_SENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'USU_SENHA'
      Origin = 'USUARIO.USU_SENHA'
      Size = 30
    end
    object qCadastroUSU_NIVEL: TIntegerField
      DisplayLabel = 'Nivel'
      FieldName = 'USU_NIVEL'
      Origin = 'USUARIO.USU_NIVEL'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select * from usuario')
    object qConsultaUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Origin = 'USUARIO.USU_ID'
      Required = True
    end
    object qConsultaUSU_PES_ID: TIntegerField
      FieldName = 'USU_PES_ID'
      Origin = 'USUARIO.USU_PES_ID'
    end
    object qConsultaUSU_LOGIN_NOME: TIBStringField
      FieldName = 'USU_LOGIN_NOME'
      Origin = 'USUARIO.USU_LOGIN_NOME'
      Size = 100
    end
    object qConsultaUSU_LOGIN: TIBStringField
      FieldName = 'USU_LOGIN'
      Origin = 'USUARIO.USU_LOGIN'
      Size = 30
    end
    object qConsultaUSU_SENHA: TIBStringField
      FieldName = 'USU_SENHA'
      Origin = 'USUARIO.USU_SENHA'
      Size = 30
    end
    object qConsultaUSU_NIVEL: TIntegerField
      FieldName = 'USU_NIVEL'
      Origin = 'USUARIO.USU_NIVEL'
    end
  end
  inherited dsConsulta: TDataSource
    OnDataChange = dsConsultaDataChange
  end
end
