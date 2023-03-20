inherited FLimiteCreditoTitulos: TFLimiteCreditoTitulos
  Left = 239
  Top = 180
  Width = 500
  Height = 400
  Caption = 'Limite de Creditos'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTopo: TPanel
    Width = 484
    BevelOuter = bvNone
  end
  inherited stbBarraStatus: TStatusBar
    Top = 343
    Width = 484
  end
  object Panel1: TPanel
    Left = 0
    Top = 302
    Width = 484
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 400
      Top = 8
      Width = 75
      Height = 22
      Caption = 'OK'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 320
      Top = 8
      Width = 75
      Height = 22
      Caption = 'Cancelar'
      OnClick = SpeedButton2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 20
    Width = 484
    Height = 282
    Align = alClient
    DataSource = cdsLimite
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'LIM_ID'
        Title.Caption = 'Codigo'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIM_FIN_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'LIM_VALOR'
        Title.Caption = 'Valor'
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIM_DATA'
        Title.Caption = 'Vig'#234'ncia'
        Width = 173
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIM_DH_CA'
        Visible = False
      end>
  end
  object cdsLimite: TDataSource
    DataSet = qLimite
    Left = 272
    Top = 184
  end
  object qLimiteMax: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT N_LIMITE LIM_VALOR '
      '  FROM PR_RETORNA_LIMITE(:ID)')
    Left = 232
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    object qLimiteMaxLIM_VALOR: TIBBCDField
      FieldName = 'LIM_VALOR'
      Origin = 'FINANCEIRO_LIMITE.LIM_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object qLimite: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    AfterInsert = qLimiteAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FINANCEIRO_LIMITE'
      'where'
      '  LIM_ID = :OLD_LIM_ID')
    InsertSQL.Strings = (
      'insert into FINANCEIRO_LIMITE'
      '  (LIM_ID, LIM_FIN_ID, LIM_VALOR, LIM_DATA, LIM_DH_CA)'
      'values'
      '  (:LIM_ID, :LIM_FIN_ID, :LIM_VALOR, :LIM_DATA, :LIM_DH_CA)')
    RefreshSQL.Strings = (
      'Select '
      '  LIM_ID,'
      '  LIM_FIN_ID,'
      '  LIM_VALOR,'
      '  LIM_DATA,'
      '  LIM_DH_CA'
      'from FINANCEIRO_LIMITE '
      'where'
      '  LIM_ID = :LIM_ID')
    SelectSQL.Strings = (
      'SELECT *'
      '  FROM FINANCEIRO_LIMITE'
      ' WHERE LIM_FIN_ID = :ID'
      ' ORDER BY LIM_DATA DESC')
    ModifySQL.Strings = (
      'update FINANCEIRO_LIMITE'
      'set'
      '  LIM_ID = :LIM_ID,'
      '  LIM_FIN_ID = :LIM_FIN_ID,'
      '  LIM_VALOR = :LIM_VALOR,'
      '  LIM_DATA = :LIM_DATA,'
      '  LIM_DH_CA = :LIM_DH_CA'
      'where'
      '  LIM_ID = :OLD_LIM_ID')
    GeneratorField.Field = 'LIM_ID'
    GeneratorField.Generator = 'GEN_FINANCEIRO_LIMITE'
    Left = 232
    Top = 184
    object qLimiteLIM_ID: TIntegerField
      FieldName = 'LIM_ID'
      Origin = 'FINANCEIRO_LIMITE.LIM_ID'
      Required = True
    end
    object qLimiteLIM_FIN_ID: TIntegerField
      FieldName = 'LIM_FIN_ID'
      Origin = 'FINANCEIRO_LIMITE.LIM_FIN_ID'
    end
    object qLimiteLIM_VALOR: TIBBCDField
      FieldName = 'LIM_VALOR'
      Origin = 'FINANCEIRO_LIMITE.LIM_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qLimiteLIM_DATA: TDateField
      FieldName = 'LIM_DATA'
      Origin = 'FINANCEIRO_LIMITE.LIM_DATA'
    end
    object qLimiteLIM_DH_CA: TDateTimeField
      FieldName = 'LIM_DH_CA'
      Origin = 'FINANCEIRO_LIMITE.LIM_DH_CA'
    end
  end
end
