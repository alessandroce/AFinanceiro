inherited FCadLimiteCreditoTitulos: TFCadLimiteCreditoTitulos
  Caption = 'Cadastro de Limite de Credito'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1LIM_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'LIM_ID'
            Width = 80
          end
          object cxGrid1DBTableView1LIM_FIN_ID: TcxGridDBColumn
            Caption = 'Doc'
            DataBinding.FieldName = 'LIM_FIN_ID'
            Width = 114
          end
          object cxGrid1DBTableView1LIM_VALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'LIM_VALOR'
          end
          object cxGrid1DBTableView1LIM_DATA: TcxGridDBColumn
            Caption = 'Vigencia'
            DataBinding.FieldName = 'LIM_DATA'
            Width = 111
          end
        end
      end
    end
    inherited tsCadastro: TTabSheet
      inherited Panel3: TPanel
        Top = 454
        Width = 776
      end
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM FINANCEIRO_LIMITE l'
      ' where l.LIM_FIN_ID = :ID')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object qConsultaLIM_ID: TIntegerField
      FieldName = 'LIM_ID'
      Origin = 'FINANCEIRO_LIMITE.LIM_ID'
      Required = True
    end
    object qConsultaLIM_FIN_ID: TIntegerField
      FieldName = 'LIM_FIN_ID'
      Origin = 'FINANCEIRO_LIMITE.LIM_FIN_ID'
    end
    object qConsultaLIM_VALOR: TIBBCDField
      FieldName = 'LIM_VALOR'
      Origin = 'FINANCEIRO_LIMITE.LIM_VALOR'
      Precision = 18
      Size = 2
    end
    object qConsultaLIM_DATA: TDateField
      FieldName = 'LIM_DATA'
      Origin = 'FINANCEIRO_LIMITE.LIM_DATA'
    end
    object qConsultaLIM_DH_CA: TDateTimeField
      FieldName = 'LIM_DH_CA'
      Origin = 'FINANCEIRO_LIMITE.LIM_DH_CA'
    end
  end
end
