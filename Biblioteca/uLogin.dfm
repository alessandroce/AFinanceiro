object FLogin: TFLogin
  Left = 232
  Top = 174
  BorderStyle = bsDialog
  Caption = 'AFinanceiro'
  ClientHeight = 193
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 84
    Width = 37
    Height = 13
    Caption = 'Senha'
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Login'
  end
  object BitBtn1: TBitBtn
    Left = 220
    Top = 132
    Width = 80
    Height = 30
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object BitBtn2: TBitBtn
    Left = 304
    Top = 132
    Width = 80
    Height = 30
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkOK
  end
  object edSenha: TEdit
    Left = 64
    Top = 80
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object edLogin: TEdit
    Left = 64
    Top = 44
    Width = 321
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 174
    Width = 411
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object qUsuario: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    SQL.Strings = (
      'select * from usuario')
    Left = 272
    Top = 72
    object qUsuarioUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Origin = 'USUARIO.USU_ID'
      Required = True
    end
    object qUsuarioUSU_PES_ID: TIntegerField
      FieldName = 'USU_PES_ID'
      Origin = 'USUARIO.USU_PES_ID'
    end
    object qUsuarioUSU_LOGIN_NOME: TIBStringField
      FieldName = 'USU_LOGIN_NOME'
      Origin = 'USUARIO.USU_LOGIN_NOME'
      Size = 100
    end
    object qUsuarioUSU_LOGIN: TIBStringField
      FieldName = 'USU_LOGIN'
      Origin = 'USUARIO.USU_LOGIN'
      Size = 30
    end
    object qUsuarioUSU_SENHA: TIBStringField
      FieldName = 'USU_SENHA'
      Origin = 'USUARIO.USU_SENHA'
      Size = 30
    end
    object qUsuarioUSU_NIVEL: TIntegerField
      FieldName = 'USU_NIVEL'
      Origin = 'USUARIO.USU_NIVEL'
    end
  end
  object dsUsuario: TDataSource
    DataSet = qUsuario
    Left = 296
    Top = 72
  end
end
