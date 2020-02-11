inherited FCadPessoas: TFCadPessoas
  Left = 199
  Top = 169
  Caption = 'Pessoas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          DataController.Filter.Active = True
          object cxGrid1DBTableView1PES_ID: TcxGridDBColumn
            DataBinding.FieldName = 'PES_ID'
          end
          object cxGrid1DBTableView1PES_TIPO: TcxGridDBColumn
            DataBinding.FieldName = 'PES_TIPO'
          end
          object cxGrid1DBTableView1PES_TIPO_PESSOA: TcxGridDBColumn
            DataBinding.FieldName = 'PES_TIPO_PESSOA'
          end
          object cxGrid1DBTableView1PES_NOME_RAZAO: TcxGridDBColumn
            DataBinding.FieldName = 'PES_NOME_RAZAO'
            Width = 300
          end
          object cxGrid1DBTableView1PES_NOME_FANTASIA: TcxGridDBColumn
            DataBinding.FieldName = 'PES_NOME_FANTASIA'
            Width = 300
          end
          object cxGrid1DBTableView1PES_CNPJ: TcxGridDBColumn
            DataBinding.FieldName = 'PES_CNPJ'
          end
          object cxGrid1DBTableView1PES_INSC_EST: TcxGridDBColumn
            DataBinding.FieldName = 'PES_INSC_EST'
          end
          object cxGrid1DBTableView1PES_EMAIL: TcxGridDBColumn
            DataBinding.FieldName = 'PES_EMAIL'
            Width = 300
          end
          object cxGrid1DBTableView1PES_TEL_COMERCIAL: TcxGridDBColumn
            DataBinding.FieldName = 'PES_TEL_COMERCIAL'
          end
          object cxGrid1DBTableView1PES_TEL_CELULAR: TcxGridDBColumn
            DataBinding.FieldName = 'PES_TEL_CELULAR'
          end
          object cxGrid1DBTableView1PES_CONTATO: TcxGridDBColumn
            DataBinding.FieldName = 'PES_CONTATO'
            Width = 300
          end
          object cxGrid1DBTableView1PES_ENDERECO: TcxGridDBColumn
            DataBinding.FieldName = 'PES_ENDERECO'
          end
          object cxGrid1DBTableView1PES_NUMERO: TcxGridDBColumn
            DataBinding.FieldName = 'PES_NUMERO'
          end
          object cxGrid1DBTableView1PES_COMPLEMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'PES_COMPLEMENTO'
          end
          object cxGrid1DBTableView1PES_BAIRRO: TcxGridDBColumn
            DataBinding.FieldName = 'PES_BAIRRO'
          end
          object cxGrid1DBTableView1PES_CEP: TcxGridDBColumn
            DataBinding.FieldName = 'PES_CEP'
          end
          object cxGrid1DBTableView1PES_CIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'PES_CIDADE'
          end
          object cxGrid1DBTableView1PES_UF: TcxGridDBColumn
            DataBinding.FieldName = 'PES_UF'
            Width = 63
          end
          object cxGrid1DBTableView1PES_ANIVERSARIO: TcxGridDBColumn
            DataBinding.FieldName = 'PES_ANIVERSARIO'
          end
          object cxGrid1DBTableView1PES_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'PES_DESCRICAO'
            Width = 300
          end
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 24
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label4: TLabel [1]
        Left = 23
        Top = 56
        Width = 57
        Height = 13
        Caption = 'Nome raz'#227'o'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [2]
        Left = 23
        Top = 96
        Width = 40
        Height = 13
        Caption = 'Fantasia'
        FocusControl = DBEdit5
      end
      object Label6: TLabel [3]
        Left = 23
        Top = 136
        Width = 27
        Height = 13
        Caption = 'CNPJ'
        FocusControl = DBEdit6
      end
      object Label7: TLabel [4]
        Left = 181
        Top = 136
        Width = 64
        Height = 13
        Caption = 'Inscri'#231#227'o Est.'
        FocusControl = DBEdit7
      end
      object Label8: TLabel [5]
        Left = 344
        Top = 136
        Width = 28
        Height = 13
        Caption = 'E-mail'
        FocusControl = DBEdit8
      end
      object Label9: TLabel [6]
        Left = 24
        Top = 182
        Width = 63
        Height = 13
        Caption = 'Tel comercial'
        FocusControl = DBEdit9
      end
      object Label10: TLabel [7]
        Left = 136
        Top = 182
        Width = 49
        Height = 13
        Caption = 'Tel celular'
        FocusControl = DBEdit10
      end
      object Label11: TLabel [8]
        Left = 248
        Top = 182
        Width = 37
        Height = 13
        Caption = 'Contato'
        FocusControl = DBEdit11
      end
      object Label12: TLabel [9]
        Left = 24
        Top = 222
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit12
      end
      object Label13: TLabel [10]
        Left = 528
        Top = 222
        Width = 37
        Height = 13
        Caption = 'Numero'
        FocusControl = DBEdit13
      end
      object Label14: TLabel [11]
        Left = 24
        Top = 302
        Width = 64
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit14
      end
      object Label15: TLabel [12]
        Left = 160
        Top = 262
        Width = 27
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit15
      end
      object Label16: TLabel [13]
        Left = 24
        Top = 262
        Width = 21
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit16
      end
      object Label17: TLabel [14]
        Left = 320
        Top = 302
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit17
      end
      object Label18: TLabel [15]
        Left = 624
        Top = 302
        Width = 14
        Height = 13
        Caption = 'UF'
        FocusControl = DBEdit18
      end
      object Label19: TLabel [16]
        Left = 548
        Top = 56
        Width = 52
        Height = 13
        Caption = 'Aniversario'
        FocusControl = DBEdit19
      end
      object Label20: TLabel [17]
        Left = 24
        Top = 342
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit21
      end
      inherited Panel3: TPanel
        Top = 454
        Width = 776
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 32
        Width = 134
        Height = 21
        DataField = 'PES_ID'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 23
        Top = 72
        Width = 500
        Height = 21
        DataField = 'PES_NOME_RAZAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 23
        Top = 112
        Width = 500
        Height = 21
        DataField = 'PES_NOME_FANTASIA'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 23
        Top = 152
        Width = 150
        Height = 21
        DataField = 'PES_CNPJ'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 181
        Top = 152
        Width = 150
        Height = 21
        DataField = 'PES_INSC_EST'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 344
        Top = 152
        Width = 300
        Height = 21
        DataField = 'PES_EMAIL'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 24
        Top = 198
        Width = 100
        Height = 21
        DataField = 'PES_TEL_COMERCIAL'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object DBEdit10: TDBEdit
        Left = 136
        Top = 198
        Width = 100
        Height = 21
        DataField = 'PES_TEL_CELULAR'
        DataSource = dsCadastro
        TabOrder = 8
      end
      object DBEdit11: TDBEdit
        Left = 248
        Top = 198
        Width = 100
        Height = 21
        DataField = 'PES_CONTATO'
        DataSource = dsCadastro
        TabOrder = 9
      end
      object DBEdit12: TDBEdit
        Left = 24
        Top = 238
        Width = 500
        Height = 21
        DataField = 'PES_ENDERECO'
        DataSource = dsCadastro
        TabOrder = 10
      end
      object DBEdit13: TDBEdit
        Left = 528
        Top = 238
        Width = 80
        Height = 21
        DataField = 'PES_NUMERO'
        DataSource = dsCadastro
        TabOrder = 11
      end
      object DBEdit14: TDBEdit
        Left = 24
        Top = 318
        Width = 281
        Height = 21
        DataField = 'PES_COMPLEMENTO'
        DataSource = dsCadastro
        TabOrder = 12
      end
      object DBEdit15: TDBEdit
        Left = 160
        Top = 278
        Width = 500
        Height = 21
        DataField = 'PES_BAIRRO'
        DataSource = dsCadastro
        TabOrder = 13
      end
      object DBEdit16: TDBEdit
        Left = 24
        Top = 278
        Width = 100
        Height = 21
        DataField = 'PES_CEP'
        DataSource = dsCadastro
        TabOrder = 14
      end
      object DBEdit17: TDBEdit
        Left = 320
        Top = 318
        Width = 300
        Height = 21
        DataField = 'PES_CIDADE'
        DataSource = dsCadastro
        TabOrder = 15
      end
      object DBEdit18: TDBEdit
        Left = 624
        Top = 318
        Width = 30
        Height = 21
        DataField = 'PES_UF'
        DataSource = dsCadastro
        TabOrder = 16
      end
      object DBEdit19: TDBEdit
        Left = 548
        Top = 72
        Width = 134
        Height = 21
        DataField = 'PES_ANIVERSARIO'
        DataSource = dsCadastro
        TabOrder = 17
      end
      object DBEdit20: TDBEdit
        Left = 32
        Top = 776
        Width = 3319
        Height = 21
        DataField = 'PES_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 18
      end
      object DBEdit21: TDBEdit
        Left = 24
        Top = 358
        Width = 500
        Height = 21
        DataField = 'PES_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 19
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 163
        Top = 15
        Width = 145
        Height = 38
        Caption = '  Tipo  '
        Columns = 2
        DataField = 'PES_TIPO'
        DataSource = dsCadastro
        Items.Strings = (
          'Fisica'
          'Juridica')
        TabOrder = 20
        Values.Strings = (
          '0'
          '1')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 315
        Top = 15
        Width = 366
        Height = 38
        Caption = '  Tipo pessoa  '
        Columns = 4
        DataField = 'PES_TIPO_PESSOA'
        DataSource = dsCadastro
        Items.Strings = (
          'Cliente'
          'Fornecedor'
          'Funcionario'
          'Outros')
        TabOrder = 21
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
    end
  end
  inherited qCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from PESSOA'
      'where'
      '  PES_ID = :OLD_PES_ID')
    InsertSQL.Strings = (
      'insert into PESSOA'
      '  (PES_ID, PES_TIPO, PES_TIPO_PESSOA, PES_NOME_RAZAO, '
      'PES_NOME_FANTASIA, '
      '   PES_CNPJ, PES_INSC_EST, PES_EMAIL, PES_TEL_COMERCIAL, '
      'PES_TEL_CELULAR, '
      '   PES_CONTATO, PES_ENDERECO, PES_NUMERO, PES_COMPLEMENTO, '
      'PES_BAIRRO, '
      '   PES_CEP, PES_CIDADE, PES_UF, PES_ANIVERSARIO, PES_DESCRICAO)'
      'values'
      '  (:PES_ID, :PES_TIPO, :PES_TIPO_PESSOA, :PES_NOME_RAZAO, '
      ':PES_NOME_FANTASIA, '
      '   :PES_CNPJ, :PES_INSC_EST, :PES_EMAIL, :PES_TEL_COMERCIAL, '
      ':PES_TEL_CELULAR, '
      '   :PES_CONTATO, :PES_ENDERECO, :PES_NUMERO, :PES_COMPLEMENTO, '
      ':PES_BAIRRO, '
      
        '   :PES_CEP, :PES_CIDADE, :PES_UF, :PES_ANIVERSARIO, :PES_DESCRI' +
        'CAO)')
    RefreshSQL.Strings = (
      'Select '
      '  PES_ID,'
      '  PES_TIPO,'
      '  PES_TIPO_PESSOA,'
      '  PES_NOME_RAZAO,'
      '  PES_NOME_FANTASIA,'
      '  PES_CNPJ,'
      '  PES_INSC_EST,'
      '  PES_EMAIL,'
      '  PES_TEL_COMERCIAL,'
      '  PES_TEL_CELULAR,'
      '  PES_CONTATO,'
      '  PES_ENDERECO,'
      '  PES_NUMERO,'
      '  PES_COMPLEMENTO,'
      '  PES_BAIRRO,'
      '  PES_CEP,'
      '  PES_CIDADE,'
      '  PES_UF,'
      '  PES_ANIVERSARIO,'
      '  PES_DESCRICAO'
      'from PESSOA '
      'where'
      '  PES_ID = :PES_ID')
    SelectSQL.Strings = (
      'select * from PESSOA where PES_ID = :FId')
    ModifySQL.Strings = (
      'update PESSOA'
      'set'
      '  PES_ID = :PES_ID,'
      '  PES_TIPO = :PES_TIPO,'
      '  PES_TIPO_PESSOA = :PES_TIPO_PESSOA,'
      '  PES_NOME_RAZAO = :PES_NOME_RAZAO,'
      '  PES_NOME_FANTASIA = :PES_NOME_FANTASIA,'
      '  PES_CNPJ = :PES_CNPJ,'
      '  PES_INSC_EST = :PES_INSC_EST,'
      '  PES_EMAIL = :PES_EMAIL,'
      '  PES_TEL_COMERCIAL = :PES_TEL_COMERCIAL,'
      '  PES_TEL_CELULAR = :PES_TEL_CELULAR,'
      '  PES_CONTATO = :PES_CONTATO,'
      '  PES_ENDERECO = :PES_ENDERECO,'
      '  PES_NUMERO = :PES_NUMERO,'
      '  PES_COMPLEMENTO = :PES_COMPLEMENTO,'
      '  PES_BAIRRO = :PES_BAIRRO,'
      '  PES_CEP = :PES_CEP,'
      '  PES_CIDADE = :PES_CIDADE,'
      '  PES_UF = :PES_UF,'
      '  PES_ANIVERSARIO = :PES_ANIVERSARIO,'
      '  PES_DESCRICAO = :PES_DESCRICAO'
      'where'
      '  PES_ID = :OLD_PES_ID')
    GeneratorField.Field = 'PES_ID'
    GeneratorField.Generator = 'GEN_PESSOA'
    object qCadastroPES_ID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'PES_ID'
      Origin = 'PESSOA.PES_ID'
      Required = True
    end
    object qCadastroPES_TIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'PES_TIPO'
      Origin = 'PESSOA.PES_TIPO'
    end
    object qCadastroPES_TIPO_PESSOA: TIntegerField
      DisplayLabel = 'Tipo pessoa'
      FieldName = 'PES_TIPO_PESSOA'
      Origin = 'PESSOA.PES_TIPO_PESSOA'
    end
    object qCadastroPES_NOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome raz'#227'o'
      FieldName = 'PES_NOME_RAZAO'
      Origin = 'PESSOA.PES_NOME_RAZAO'
      Size = 100
    end
    object qCadastroPES_NOME_FANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'PES_NOME_FANTASIA'
      Origin = 'PESSOA.PES_NOME_FANTASIA'
      Size = 100
    end
    object qCadastroPES_CNPJ: TIBStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'PES_CNPJ'
      Origin = 'PESSOA.PES_CNPJ'
    end
    object qCadastroPES_INSC_EST: TIBStringField
      DisplayLabel = 'Inscri'#231#227'o Est.'
      FieldName = 'PES_INSC_EST'
      Origin = 'PESSOA.PES_INSC_EST'
    end
    object qCadastroPES_EMAIL: TIBStringField
      DisplayLabel = 'E-mail'
      FieldName = 'PES_EMAIL'
      Origin = 'PESSOA.PES_EMAIL'
      Size = 100
    end
    object qCadastroPES_TEL_COMERCIAL: TIBStringField
      DisplayLabel = 'Tel comercial'
      FieldName = 'PES_TEL_COMERCIAL'
      Origin = 'PESSOA.PES_TEL_COMERCIAL'
    end
    object qCadastroPES_TEL_CELULAR: TIBStringField
      DisplayLabel = 'Tel celular'
      FieldName = 'PES_TEL_CELULAR'
      Origin = 'PESSOA.PES_TEL_CELULAR'
    end
    object qCadastroPES_CONTATO: TIBStringField
      DisplayLabel = 'COntato'
      FieldName = 'PES_CONTATO'
      Origin = 'PESSOA.PES_CONTATO'
      Size = 100
    end
    object qCadastroPES_ENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'PES_ENDERECO'
      Origin = 'PESSOA.PES_ENDERECO'
      Size = 100
    end
    object qCadastroPES_NUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'PES_NUMERO'
      Origin = 'PESSOA.PES_NUMERO'
    end
    object qCadastroPES_COMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'PES_COMPLEMENTO'
      Origin = 'PESSOA.PES_COMPLEMENTO'
      Size = 100
    end
    object qCadastroPES_BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'PES_BAIRRO'
      Origin = 'PESSOA.PES_BAIRRO'
      Size = 100
    end
    object qCadastroPES_CEP: TIBStringField
      DisplayLabel = 'CEP'
      FieldName = 'PES_CEP'
      Origin = 'PESSOA.PES_CEP'
    end
    object qCadastroPES_CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'PES_CIDADE'
      Origin = 'PESSOA.PES_CIDADE'
      Size = 100
    end
    object qCadastroPES_UF: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'PES_UF'
      Origin = 'PESSOA.PES_UF'
      FixedChar = True
      Size = 2
    end
    object qCadastroPES_ANIVERSARIO: TDateField
      DisplayLabel = 'Aniversario'
      FieldName = 'PES_ANIVERSARIO'
      Origin = 'PESSOA.PES_ANIVERSARIO'
    end
    object qCadastroPES_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PES_DESCRICAO'
      Origin = 'PESSOA.PES_DESCRICAO'
      Size = 255
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select * from PESSOA where PES_ID >-1')
    object qConsultaPES_ID: TIntegerField
      FieldName = 'PES_ID'
      Origin = 'PESSOA.PES_ID'
      Required = True
    end
    object qConsultaPES_TIPO: TIntegerField
      FieldName = 'PES_TIPO'
      Origin = 'PESSOA.PES_TIPO'
    end
    object qConsultaPES_TIPO_PESSOA: TIntegerField
      FieldName = 'PES_TIPO_PESSOA'
      Origin = 'PESSOA.PES_TIPO_PESSOA'
    end
    object qConsultaPES_NOME_RAZAO: TIBStringField
      FieldName = 'PES_NOME_RAZAO'
      Origin = 'PESSOA.PES_NOME_RAZAO'
      Size = 100
    end
    object qConsultaPES_NOME_FANTASIA: TIBStringField
      FieldName = 'PES_NOME_FANTASIA'
      Origin = 'PESSOA.PES_NOME_FANTASIA'
      Size = 100
    end
    object qConsultaPES_CNPJ: TIBStringField
      FieldName = 'PES_CNPJ'
      Origin = 'PESSOA.PES_CNPJ'
    end
    object qConsultaPES_INSC_EST: TIBStringField
      FieldName = 'PES_INSC_EST'
      Origin = 'PESSOA.PES_INSC_EST'
    end
    object qConsultaPES_EMAIL: TIBStringField
      FieldName = 'PES_EMAIL'
      Origin = 'PESSOA.PES_EMAIL'
      Size = 100
    end
    object qConsultaPES_TEL_COMERCIAL: TIBStringField
      FieldName = 'PES_TEL_COMERCIAL'
      Origin = 'PESSOA.PES_TEL_COMERCIAL'
    end
    object qConsultaPES_TEL_CELULAR: TIBStringField
      FieldName = 'PES_TEL_CELULAR'
      Origin = 'PESSOA.PES_TEL_CELULAR'
    end
    object qConsultaPES_CONTATO: TIBStringField
      FieldName = 'PES_CONTATO'
      Origin = 'PESSOA.PES_CONTATO'
      Size = 100
    end
    object qConsultaPES_ENDERECO: TIBStringField
      FieldName = 'PES_ENDERECO'
      Origin = 'PESSOA.PES_ENDERECO'
      Size = 100
    end
    object qConsultaPES_NUMERO: TIntegerField
      FieldName = 'PES_NUMERO'
      Origin = 'PESSOA.PES_NUMERO'
    end
    object qConsultaPES_COMPLEMENTO: TIBStringField
      FieldName = 'PES_COMPLEMENTO'
      Origin = 'PESSOA.PES_COMPLEMENTO'
      Size = 100
    end
    object qConsultaPES_BAIRRO: TIBStringField
      FieldName = 'PES_BAIRRO'
      Origin = 'PESSOA.PES_BAIRRO'
      Size = 100
    end
    object qConsultaPES_CEP: TIBStringField
      FieldName = 'PES_CEP'
      Origin = 'PESSOA.PES_CEP'
    end
    object qConsultaPES_CIDADE: TIBStringField
      FieldName = 'PES_CIDADE'
      Origin = 'PESSOA.PES_CIDADE'
      Size = 100
    end
    object qConsultaPES_UF: TIBStringField
      FieldName = 'PES_UF'
      Origin = 'PESSOA.PES_UF'
      FixedChar = True
      Size = 2
    end
    object qConsultaPES_ANIVERSARIO: TDateField
      FieldName = 'PES_ANIVERSARIO'
      Origin = 'PESSOA.PES_ANIVERSARIO'
    end
    object qConsultaPES_DESCRICAO: TIBStringField
      FieldName = 'PES_DESCRICAO'
      Origin = 'PESSOA.PES_DESCRICAO'
      Size = 255
    end
  end
  inherited dsConsulta: TDataSource
    OnDataChange = dsConsultaDataChange
  end
end
