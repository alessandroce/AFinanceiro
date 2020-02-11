object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 352
  Top = 168
  Height = 323
  Width = 362
  object IBConexao: TIBDatabase
    DatabaseName = 'D:\Projetos\AFinanceiro\trunk\base\DATABASE.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransacao
    Left = 40
    Top = 16
  end
  object IBTransacao: TIBTransaction
    DefaultDatabase = IBConexao
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 96
    Top = 16
  end
  object IBTransactionRead: TIBTransaction
    DefaultDatabase = IBConexao
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 152
    Top = 16
  end
end
