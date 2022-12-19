inherited FCadTitulos2: TFCadTitulos2
  Left = 168
  Top = 123
  Caption = 'Cadastro Titulos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited cxGrid1: TcxGrid
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Kind = skCount
              Column = cxGrid1DBTableView1FIN_ID
            end>
          object cxGrid1DBTableView1FIN_ID: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_ID'
          end
          object cxGrid1DBTableView1FIN_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_DESCRICAO'
          end
          object cxGrid1DBTableView1SITUACAO: TcxGridDBColumn
            DataBinding.FieldName = 'SITUACAO'
            Visible = False
          end
        end
      end
      inherited Panel1: TPanel
        object rgDebitoCredito: TRadioGroup
          Left = 679
          Top = 1
          Width = 229
          Height = 35
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Titulos a pagar'
            'Titulos a receber')
          TabOrder = 3
          Visible = False
          OnClick = rgDebitoCreditoClick
        end
        object rgSituacao: TRadioGroup
          Left = 4
          Top = 1
          Width = 229
          Height = 35
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            'Aberto'
            'Fechado'
            'Todos')
          TabOrder = 0
          OnClick = rgDebitoCreditoClick
        end
        object edPesquisa: TEdit
          Left = 248
          Top = 9
          Width = 377
          Height = 21
          TabOrder = 1
          OnKeyPress = edPesquisaKeyPress
        end
        object btPesquisa: TBitBtn
          Left = 628
          Top = 8
          Width = 22
          Height = 22
          Caption = '...'
          TabOrder = 2
          OnClick = btPesquisaClick
        end
      end
      inherited Panel2: TPanel
        inherited rgAtivo: TRadioGroup
          ItemIndex = 1
          OnClick = rgAtivoClick
        end
        object BitBtn1: TBitBtn
          Left = 575
          Top = 1
          Width = 90
          Height = 40
          Hint = 'Imprimir'
          Caption = 'Rel. Anual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BitBtn1Click
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB9C9C9CA5A5A5FDFDFDFFFFFF
            ACACACEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFC7C7C7E1E1E18383835E5E5E232323222222ACACAC9B9B9B5252526E
            6E6EF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABA
            4848485555554D4D4D393939363636494949212121565656E5E5E59F9F9F6565
            65F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABA383838C3C3C33A
            3A3A8181813A3A3A434343AAAAAA333333E2E2E2F9F9F9FAFAFA9E9E9E636363
            EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B93737376E6E6EF0F0F06767677D7D
            7D858585585858A4A4A46D6D6DF0F0F0F8F8F8F4F4F4EDEDED9A9A9A777777FF
            FFFFFFFFFFFFFFFFB7B7B7383838707070808080C0C0C06C6C6CB5B5B5A8A8A8
            C6C6C6757575BEBEBEFEFEFEF0F0F0F3F3F3CECECEF6F6F6A0A0A0A7A7A7FFFF
            FFE0E0E03C3C3C6F6F6F8686867E7E7E8181812E2E2E666666CECECE8A8A8AB4
            B4B4C4C4C4D2D2D2EDEDEDCCCCCCF5F5F5F4F4F48F8F8FC3C3C3FFFFFFCACACA
            3F3F3F8989897979799A9A9AE6E6E63F3F3F2A2A2A6C6C6C5F5F5FF7F7F7D6D6
            D6B4B4B4D4D4D4EBEBEBF7F7F7868686C4C4C4FFFFFFFFFFFFCDCDCD40404083
            83837A7A7AD0D0D0CDCDCDA6A6A64C4C4C0000000D0D0D838383F6F6F6D4D4D4
            B8B8B8E0E0E07A7A7A2B2B2BADADADF9F9F9FFFFFFCDCDCD414141858585C2C2
            C2F9F9F9BCBCBC9B9B9BA9A9A95050500000000808087F7F7FCDCDCDC9C9C94F
            4F4F4D4D4D3B3B3B5F5F5FE7E7E7FFFFFFCACACA292929C0C0C0FDFCFCE0E0E0
            E1E1E1BCBCBC9D9D9DA9A9A94F4F4F0000000606066666663B3B3B5B5B5BA6A6
            A64E4E4ED9D9D9FFFFFFFFFFFFE9E9E93E3E3E8C8F8FEEEDEDE1DFDFE0E0E0E3
            E3E3BCBCBC9C9C9CAAAAAA4E4E4E000000000000606060B0B0B0505050D9D9D9
            FFFFFFFFFFFFFFFFFFFFFFFF847F7F394E4E7BB1B1E9E6E6E2E1E1E0E0E0E3E3
            E3BBBBBB9D9D9DA8A8A8454545303030A0A0A0434343D8D8D8FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFC9C9C95F5B5B5E848475AAAAE9E5E5E2E0E0E0E0E0E2E2E2
            BBBBBB9E9E9E9C9C9C464646444444595959FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFCACACA6F68685E848475ABABE9E5E5E3E0E0DFE0E0E3E3E3C4
            C4C45050508E8E8E696969969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFCACACA7169695E858574A9A9E8E4E4E2E0E0E0E0E0E6E6E69E9E
            9E6262625E5E5EEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFCACACA7069695D848478AEAEE8E8E8DFDFDFE5E5E5E0E0E0585858
            C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFC5C5C57069693B63637D9D9DF8F4F4DFDFDF707070C4C4C4FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD2D1D1AFACAC4E4E4E6767676E6E6EC6C6C6FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Bevel1: TBevel [0]
        Left = 24
        Top = 126
        Width = 729
        Height = 327
      end
      object Label4: TLabel [1]
        Left = 24
        Top = 4
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label5: TLabel [2]
        Left = 96
        Top = 4
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label6: TLabel [3]
        Left = 24
        Top = 44
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
      end
      object Label7: TLabel [4]
        Left = 24
        Top = 86
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object Label8: TLabel [5]
        Left = 200
        Top = 86
        Width = 45
        Height = 13
        Caption = 'Categoria'
      end
      object Label3: TLabel [6]
        Left = 312
        Top = 44
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label14: TLabel [7]
        Left = 616
        Top = 256
        Width = 62
        Height = 13
        Caption = 'PAR_FIN_ID'
      end
      object Label13: TLabel [8]
        Left = 424
        Top = 85
        Width = 63
        Height = 13
        Caption = 'Limite Cr'#233'dito'
        FocusControl = DBEdit3
      end
      object Label15: TLabel [9]
        Left = 504
        Top = 85
        Width = 51
        Height = 13
        Caption = 'Vencto dia'
        FocusControl = DBEdit4
      end
      object Label16: TLabel [10]
        Left = 584
        Top = 85
        Width = 49
        Height = 13
        Caption = 'Melhor dia'
        FocusControl = DBEdit5
      end
      inherited Panel3: TPanel
        TabOrder = 8
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 20
        Width = 67
        Height = 21
        DataField = 'FIN_ID'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 0
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 24
        Top = 60
        Width = 281
        Height = 21
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'PES_NOME_FANTASIA'#9'70'#9'Fantasia'#9'F'#9)
        DataField = 'FIN_PES_ID'
        DataSource = dsCadastro
        LookupTable = qPessoa
        LookupField = 'PES_ID'
        Navigator = False
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 24
        Top = 102
        Width = 169
        Height = 21
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CATG_DESCRICAO'#9'60'#9'Descri'#231#227'o'#9'F')
        DataField = 'Codigo'
        DataSource = dsTmp
        LookupTable = qCategoriaG
        LookupField = 'CATG_ID'
        Navigator = False
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 200
        Top = 102
        Width = 217
        Height = 21
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CAT_DESCRICAO'#9'60'#9'Descri'#231#227'o'#9'F'#9)
        DataField = 'FIN_CAT_ID'
        DataSource = dsCadastro
        LookupTable = qCategoria
        LookupField = 'CAT_ID'
        Navigator = False
        TabOrder = 7
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 371
        Top = 3
        Width = 130
        Height = 38
        Caption = '  Tipo  '
        Columns = 2
        DataField = 'FIN_DEBCRED'
        DataSource = dsCadastro
        Items.Strings = (
          'D'#233'bito'
          'Cr'#233'dito')
        TabOrder = 3
        Values.Strings = (
          'D'
          'C')
        Visible = False
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 96
        Top = 20
        Width = 137
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'FIN_DATA'
        DataSource = dsCadastro
        Epoch = 1950
        ShowButton = True
        TabOrder = 1
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 237
        Top = 3
        Width = 126
        Height = 38
        Caption = '  Situa'#231#227'o  '
        Columns = 2
        DataField = 'FIN_INATIVO'
        DataSource = dsCadastro
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 2
        Values.Strings = (
          'N'
          'S')
      end
      object DBEdit2: TDBEdit
        Left = 312
        Top = 60
        Width = 400
        Height = 21
        DataField = 'FIN_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 34
        Top = 230
        Width = 180
        Height = 28
        Buttons.ConfirmDelete = False
        Buttons.First.Visible = False
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Visible = False
        Buttons.Next.Visible = False
        Buttons.NextPage.Visible = False
        Buttons.Last.Visible = False
        Buttons.Insert.Hint = 'Inserir'
        Buttons.Delete.Hint = 'Apagar'
        Buttons.Delete.Visible = True
        Buttons.Edit.Hint = 'Editar'
        Buttons.Post.Hint = 'Gravar'
        Buttons.Post.Visible = True
        Buttons.Cancel.Hint = 'Cancelar'
        Buttons.Cancel.Visible = True
        Buttons.Refresh.Visible = True
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = dsParcelas
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        TabOrder = 9
      end
      object gbGerarParcelasAuto: TGroupBox
        Left = 32
        Top = 134
        Width = 711
        Height = 92
        Enabled = False
        TabOrder = 10
        object Label11: TLabel
          Left = 9
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Quant.:'
        end
        object Label12: TLabel
          Left = 55
          Top = 16
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label1: TLabel
          Left = 120
          Top = 16
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object sbinc: TSpeedButton
          Left = 654
          Top = 29
          Width = 25
          Height = 24
          Hint = 'Adicionar Parelas'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF0048001E51001757001757001A5700155500FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A5D00176F0B17
            710D17710C16710C186300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF17600004790A057A0C05790B047A0B0F6701FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF186100027E0D00
            7F0D007E0D007F0D106903FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF1B630306891A008A17008916028B19156F0AFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF194C001C5B00195B00195C001C59001A680609952500
            931F00931F0396231576121B5B001A5D00195E001D5D00115500165A00057D0F
            028817028A19028C1A029220029E2A009E28009E28009D28029522028B1A0289
            1802861603821118610018570004932000A12A00A42D00A73000A83100A83100
            A83100A83100A62F00A42E00A22C009F29009A230095201766061959001DA23B
            0CAE3C04AC3700AE3600B03600B13700B13700B13700AF3500AC3300A93001A6
            3008A53119A63C1B690A14590043BA623FCC703BCB6E36CC6C2BCA651BC35618
            C25418C25318C05123C35A32C76538C5673DC46845C16A226C111745003A953D
            47A75544A75345A65355B86A55D98746D67D48D67D4DD7825DC57A48A85744A8
            5545A754409F4B186200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF206B0E63DF935A
            E39159E08F67E89D36913AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF226F146FE69F6EEDA46DEAA278F1AD38963EFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22731483EDB08B
            F4BA87F2B68EF9BF3D9942FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF1F7513A0F6C6B6FED8B1FCD4B3FFDB3F9E46FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF134E003183313C
            89393C8939398C3C1B670DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = sbincClick
        end
        object Label9: TLabel
          Left = 9
          Top = 52
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object Label10: TLabel
          Left = 232
          Top = 16
          Width = 56
          Height = 13
          Caption = 'Vencimento'
        end
        object Label2: TLabel
          Left = 342
          Top = 16
          Width = 61
          Height = 13
          Caption = 'Centro Custo'
        end
        object edQuant: TEdit
          Left = 9
          Top = 31
          Width = 39
          Height = 21
          TabOrder = 0
          OnKeyPress = edQuantKeyPress
        end
        object edValor: TEdit
          Left = 55
          Top = 31
          Width = 60
          Height = 21
          TabOrder = 1
          OnKeyPress = edQuantKeyPress
        end
        object edDataParcela: TDateTimePicker
          Left = 120
          Top = 31
          Width = 103
          Height = 21
          Date = 42468.553416620370000000
          Time = 42468.553416620370000000
          TabOrder = 2
        end
        object edDataVencimento: TDateTimePicker
          Left = 232
          Top = 31
          Width = 103
          Height = 21
          Date = 42468.553416620370000000
          Time = 42468.553416620370000000
          TabOrder = 3
        end
        object edObservacao: TEdit
          Left = 9
          Top = 67
          Width = 321
          Height = 21
          TabOrder = 5
        end
        object wwDBLookupCombo4: TwwDBLookupCombo
          Left = 342
          Top = 31
          Width = 305
          Height = 21
          DisableThemes = False
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CCT_DESCRICAO'#9'50'#9'Centro Custo'#9'F')
          LookupTable = qCentroCusto
          LookupField = 'CCT_ID'
          Navigator = False
          TabOrder = 4
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
      end
      object cbGerarParcelasAuto: TCheckBox
        Left = 40
        Top = 130
        Width = 148
        Height = 17
        Caption = 'Gerar parcelas autom'#225'tico'
        TabOrder = 11
        OnClick = cbGerarParcelasAutoClick
      end
      object rgSituacaoParcelas: TRadioGroup
        Left = 224
        Top = 225
        Width = 204
        Height = 34
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Aberto'
          'Fechada'
          'Todas')
        TabOrder = 12
        OnClick = rgSituacaoParcelasClick
      end
      object pgParcelas: TPageControl
        Left = 26
        Top = 258
        Width = 722
        Height = 195
        ActivePage = tsParcelas
        TabOrder = 13
        object tsParcelas: TTabSheet
          Caption = 'Parcelas'
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 714
            Height = 167
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            object cxGrid2DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnCustomDrawCell = cxGrid2DBTableView1CustomDrawCell
              DataController.DataSource = dsParcelas
              DataController.Filter.Active = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView1PAR_ID: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_ID'
              end
              object cxGrid2DBTableView1PAR_FIN_ID: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_FIN_ID'
              end
              object cxGrid2DBTableView1PAR_PAGO: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_PAGO'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                Width = 48
              end
              object cxGrid2DBTableView1PAR_PROVISIONAR: TcxGridDBColumn
                Caption = 'Provis'#227'o'
                DataBinding.FieldName = 'PAR_PROVISIONAR'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Width = 51
              end
              object cxGrid2DBTableView1PAR_NUMERO: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_NUMERO'
              end
              object cxGrid2DBTableView1PAR_QUANTIDADE: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_QUANTIDADE'
              end
              object cxGrid2DBTableView1PAR_DATA: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_DATA'
                Width = 100
              end
              object cxGrid2DBTableView1PAR_VENCTO: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_VENCTO'
              end
              object cxGrid2DBTableView1PAR_VALOR: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_VALOR'
              end
              object cxGrid2DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_VALOR_PAGO'
              end
              object cxGrid2DBTableView1PAR_OBSERVACAO: TcxGridDBColumn
                DataBinding.FieldName = 'PAR_OBSERVACAO'
                Width = 300
              end
              object cxGrid2DBTableView1PAR_FLAG: TcxGridDBColumn
                Caption = 'Centro Custo'
                DataBinding.FieldName = 'PAR_FLAG'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CCT_ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'CCT_DESCRICAO'
                  end>
                Properties.ListSource = dsCentroCustoGrid
                Width = 100
              end
            end
            object cxGrid2DBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DetailKeyFieldNames = 'DET_ID'
              DataController.KeyFieldNames = 'DET_PAR_ID'
              DataController.MasterKeyFieldNames = 'PAR_ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView2DET_ID: TcxGridDBColumn
                DataBinding.FieldName = 'DET_ID'
              end
              object cxGrid2DBTableView2DET_PAR_ID: TcxGridDBColumn
                DataBinding.FieldName = 'DET_PAR_ID'
              end
              object cxGrid2DBTableView2DET_DATA: TcxGridDBColumn
                DataBinding.FieldName = 'DET_DATA'
              end
              object cxGrid2DBTableView2DET_DATA_DOC: TcxGridDBColumn
                DataBinding.FieldName = 'DET_DATA_DOC'
              end
              object cxGrid2DBTableView2DET_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'DET_DESCRICAO'
              end
              object cxGrid2DBTableView2DET_VALOR: TcxGridDBColumn
                DataBinding.FieldName = 'DET_VALOR'
              end
            end
            object cxGrid2DBTableView3: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
          end
        end
        object tsDetParcelas: TTabSheet
          Caption = 'Detalhe parcelas'
          ImageIndex = 1
          object sbDetalhes: TSpeedButton
            Left = 0
            Top = -1
            Width = 80
            Height = 23
            Hint = 'Adicionar detalhe'
            Caption = 'Detalhe'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF0048001E51001757001757001A5700155500FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A5D00176F0B17
              710D17710C16710C186300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF17600004790A057A0C05790B047A0B0F6701FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF186100027E0D00
              7F0D007E0D007F0D106903FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF1B630306891A008A17008916028B19156F0AFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF194C001C5B00195B00195C001C59001A680609952500
              931F00931F0396231576121B5B001A5D00195E001D5D00115500165A00057D0F
              028817028A19028C1A029220029E2A009E28009E28009D28029522028B1A0289
              1802861603821118610018570004932000A12A00A42D00A73000A83100A83100
              A83100A83100A62F00A42E00A22C009F29009A230095201766061959001DA23B
              0CAE3C04AC3700AE3600B03600B13700B13700B13700AF3500AC3300A93001A6
              3008A53119A63C1B690A14590043BA623FCC703BCB6E36CC6C2BCA651BC35618
              C25418C25318C05123C35A32C76538C5673DC46845C16A226C111745003A953D
              47A75544A75345A65355B86A55D98746D67D48D67D4DD7825DC57A48A85744A8
              5545A754409F4B186200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF206B0E63DF935A
              E39159E08F67E89D36913AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF226F146FE69F6EEDA46DEAA278F1AD38963EFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22731483EDB08B
              F4BA87F2B68EF9BF3D9942FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF1F7513A0F6C6B6FED8B1FCD4B3FFDB3F9E46FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF134E003183313C
              89393C8939398C3C1B670DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbDetalhesClick
          end
          object SpeedButton1: TSpeedButton
            Left = 88
            Top = -1
            Width = 80
            Height = 23
            Hint = 'Adicionar tranferencia'
            Caption = 'Transferir'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF0048001E51001757001757001A5700155500FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A5D00176F0B17
              710D17710C16710C186300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF17600004790A057A0C05790B047A0B0F6701FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF186100027E0D00
              7F0D007E0D007F0D106903FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF1B630306891A008A17008916028B19156F0AFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF194C001C5B00195B00195C001C59001A680609952500
              931F00931F0396231576121B5B001A5D00195E001D5D00115500165A00057D0F
              028817028A19028C1A029220029E2A009E28009E28009D28029522028B1A0289
              1802861603821118610018570004932000A12A00A42D00A73000A83100A83100
              A83100A83100A62F00A42E00A22C009F29009A230095201766061959001DA23B
              0CAE3C04AC3700AE3600B03600B13700B13700B13700AF3500AC3300A93001A6
              3008A53119A63C1B690A14590043BA623FCC703BCB6E36CC6C2BCA651BC35618
              C25418C25318C05123C35A32C76538C5673DC46845C16A226C111745003A953D
              47A75544A75345A65355B86A55D98746D67D48D67D4DD7825DC57A48A85744A8
              5545A754409F4B186200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF206B0E63DF935A
              E39159E08F67E89D36913AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF226F146FE69F6EEDA46DEAA278F1AD38963EFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22731483EDB08B
              F4BA87F2B68EF9BF3D9942FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF1F7513A0F6C6B6FED8B1FCD4B3FFDB3F9E46FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF134E003183313C
              89393C8939398C3C1B670DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = SpeedButton1Click
          end
          object cxGrid3: TcxGrid
            Left = 0
            Top = 23
            Width = 714
            Height = 144
            Align = alBottom
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnCellDblClick = cxGridDBTableView1CellDblClick
              OnCustomDrawCell = cxGrid2DBTableView1CustomDrawCell
              DataController.DataSource = dsParcelasDetalhe
              DataController.Filter.Active = True
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBTableView1DET_VALOR
                end
                item
                  Kind = skSum
                  Column = cxGridDBTableView1DET_VALOR
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                  Column = cxGridDBTableView1DET_VALOR
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsSelection.CellSelect = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView1DET_ID: TcxGridDBColumn
                DataBinding.FieldName = 'DET_ID'
              end
              object cxGridDBTableView1DET_PAR_ID: TcxGridDBColumn
                DataBinding.FieldName = 'DET_PAR_ID'
              end
              object cxGridDBTableView1DET_DATA: TcxGridDBColumn
                DataBinding.FieldName = 'DET_DATA'
              end
              object cxGridDBTableView1DET_DATA_DOC: TcxGridDBColumn
                DataBinding.FieldName = 'DET_DATA_DOC'
              end
              object cxGridDBTableView1DET_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'DET_DESCRICAO'
                Width = 300
              end
              object cxGridDBTableView1DET_VALOR: TcxGridDBColumn
                DataBinding.FieldName = 'DET_VALOR'
              end
            end
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DetailKeyFieldNames = 'DET_ID'
              DataController.KeyFieldNames = 'DET_PAR_ID'
              DataController.MasterKeyFieldNames = 'PAR_ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBColumn10: TcxGridDBColumn
                DataBinding.FieldName = 'DET_ID'
              end
              object cxGridDBColumn11: TcxGridDBColumn
                DataBinding.FieldName = 'DET_PAR_ID'
              end
              object cxGridDBColumn12: TcxGridDBColumn
                DataBinding.FieldName = 'DET_DATA'
              end
              object cxGridDBColumn13: TcxGridDBColumn
                DataBinding.FieldName = 'DET_DATA_DOC'
              end
              object cxGridDBColumn14: TcxGridDBColumn
                DataBinding.FieldName = 'DET_DESCRICAO'
              end
              object cxGridDBColumn15: TcxGridDBColumn
                DataBinding.FieldName = 'DET_VALOR'
              end
            end
            object cxGridDBTableView3: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
      object cbAgrupar: TCheckBox
        Left = 215
        Top = 131
        Width = 65
        Height = 17
        Caption = 'Agrupar  '
        TabOrder = 14
      end
      object cbProvisionar: TCheckBox
        Left = 303
        Top = 131
        Width = 82
        Height = 17
        Caption = 'Provisionar'
        TabOrder = 15
      end
      object DBEdit3: TDBEdit
        Left = 424
        Top = 101
        Width = 75
        Height = 21
        DataField = 'FIN_VALORLIMITE'
        DataSource = dsCadastro
        TabOrder = 16
      end
      object DBEdit4: TDBEdit
        Left = 504
        Top = 101
        Width = 75
        Height = 21
        DataField = 'FIN_VENCTODIA'
        DataSource = dsCadastro
        TabOrder = 17
      end
      object DBEdit5: TDBEdit
        Left = 584
        Top = 101
        Width = 75
        Height = 21
        DataField = 'FIN_MELHORDIA'
        DataSource = dsCadastro
        TabOrder = 18
      end
    end
  end
  inherited qCadastro: TIBDataSet
    AfterOpen = qCadastroAfterOpen
    BeforeDelete = qCadastroBeforeDelete
    BeforePost = qCadastroBeforePost
    OnNewRecord = qCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from financeiro'
      'where'
      '  FIN_ID = :OLD_FIN_ID')
    InsertSQL.Strings = (
      'insert into financeiro'
      
        '  (FIN_ID, FIN_DATA, FIN_DESCRICAO, FIN_PES_ID, FIN_CAT_ID, FIN_' +
        'DEBCRED, '
      '   FIN_TIPO_DC, FIN_INATIVO, FIN_USU_ID, FIN_PLANOCONTAS_ID, '
      'FIN_PROVISIONAR, '
      '   FIN_VALORLIMITE, FIN_MELHORDIA, FIN_VENCTODIA)'
      'values'
      
        '  (:FIN_ID, :FIN_DATA, :FIN_DESCRICAO, :FIN_PES_ID, :FIN_CAT_ID,' +
        ' '
      ':FIN_DEBCRED, '
      
        '   :FIN_TIPO_DC, :FIN_INATIVO, :FIN_USU_ID, :FIN_PLANOCONTAS_ID,' +
        ' '
      ':FIN_PROVISIONAR, '
      '   :FIN_VALORLIMITE, :FIN_MELHORDIA, :FIN_VENCTODIA)')
    RefreshSQL.Strings = (
      'Select *'
      'from financeiro '
      'where'
      '  FIN_ID = :FIN_ID')
    SelectSQL.Strings = (
      'select'
      '       f.*, c.cat_catg_id codigo'
      '  from financeiro f, categoria c'
      ' where c.cat_id=f.fin_cat_id'
      '   and f.fin_id = :FIN_ID')
    ModifySQL.Strings = (
      'update financeiro'
      'set'
      '  FIN_ID = :FIN_ID,'
      '  FIN_DATA = :FIN_DATA,'
      '  FIN_DESCRICAO = :FIN_DESCRICAO,'
      '  FIN_PES_ID = :FIN_PES_ID,'
      '  FIN_CAT_ID = :FIN_CAT_ID,'
      '  FIN_DEBCRED = :FIN_DEBCRED,'
      '  FIN_TIPO_DC = :FIN_TIPO_DC,'
      '  FIN_INATIVO = :FIN_INATIVO,'
      '  FIN_USU_ID = :FIN_USU_ID,'
      '  FIN_PLANOCONTAS_ID = :FIN_PLANOCONTAS_ID,'
      '  FIN_PROVISIONAR = :FIN_PROVISIONAR,'
      '  FIN_VALORLIMITE = :FIN_VALORLIMITE,'
      '  FIN_MELHORDIA = :FIN_MELHORDIA,'
      '  FIN_VENCTODIA = :FIN_VENCTODIA'
      'where'
      '  FIN_ID = :OLD_FIN_ID')
    GeneratorField.Field = 'FIN_ID'
    GeneratorField.Generator = 'GEN_FINANCEIRO'
    DataSource = dsConsulta
    object qCadastroFIN_ID: TIntegerField
      FieldName = 'FIN_ID'
      Origin = 'FINANCEIRO.FIN_ID'
      Required = True
    end
    object qCadastroFIN_DATA: TDateTimeField
      FieldName = 'FIN_DATA'
      Origin = 'FINANCEIRO.FIN_DATA'
    end
    object qCadastroFIN_DESCRICAO: TIBStringField
      FieldName = 'FIN_DESCRICAO'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object qCadastroFIN_PES_ID: TIntegerField
      FieldName = 'FIN_PES_ID'
      Origin = 'FINANCEIRO.FIN_PES_ID'
    end
    object qCadastroFIN_CAT_ID: TIntegerField
      FieldName = 'FIN_CAT_ID'
      Origin = 'FINANCEIRO.FIN_CAT_ID'
      Required = True
    end
    object qCadastroFIN_DEBCRED: TIBStringField
      FieldName = 'FIN_DEBCRED'
      Origin = 'FINANCEIRO.FIN_DEBCRED'
      FixedChar = True
      Size = 1
    end
    object qCadastroFIN_TIPO_DC: TIntegerField
      FieldName = 'FIN_TIPO_DC'
      Origin = 'FINANCEIRO.FIN_TIPO_DC'
    end
    object qCadastroFIN_INATIVO: TIBStringField
      FieldName = 'FIN_INATIVO'
      Origin = 'FINANCEIRO.FIN_INATIVO'
      FixedChar = True
      Size = 1
    end
    object qCadastroFIN_USU_ID: TIntegerField
      FieldName = 'FIN_USU_ID'
      Origin = '"FINANCEIRO"."FIN_USU_ID"'
    end
    object qCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qCadastroFIN_PLANOCONTAS_ID: TIntegerField
      FieldName = 'FIN_PLANOCONTAS_ID'
      Origin = 'FINANCEIRO.FIN_PLANOCONTAS_ID'
    end
    object qCadastroFIN_PROVISIONAR: TIBStringField
      FieldName = 'FIN_PROVISIONAR'
      Origin = '"FINANCEIRO"."FIN_PROVISIONAR"'
      FixedChar = True
      Size = 1
    end
    object qCadastroFIN_VALORLIMITE: TIBBCDField
      FieldName = 'FIN_VALORLIMITE'
      Origin = 'FINANCEIRO.FIN_VALORLIMITE'
      Precision = 18
      Size = 2
    end
    object qCadastroFIN_MELHORDIA: TIntegerField
      FieldName = 'FIN_MELHORDIA'
      Origin = 'FINANCEIRO.FIN_MELHORDIA'
    end
    object qCadastroFIN_VENCTODIA: TIntegerField
      FieldName = 'FIN_VENCTODIA'
      Origin = 'FINANCEIRO.FIN_VENCTODIA'
    end
  end
  inherited qConsulta: TIBQuery
    Active = True
    SQL.Strings = (
      'select fin_id, fin_descricao, situacao from ('
      '       select fin_id, fin_descricao,'
      '              case when(pago=0 ) then 0'
      '                   when(pago>0 ) then 1'
      '                   when(pago>=0) then 3'
      '              end situacao'
      
        '         from (select financeiro.fin_id,financeiro.fin_descricao' +
        ','
      '                      (select count(*) pago'
      '                               from parcelas'
      
        '                              where parcelas.par_fin_id=financei' +
        'ro.fin_id'
      '                               and parcelas.par_pago=0)'
      '                 from financeiro'
      
        '                 left join pessoa on pessoa.pes_id=financeiro.fi' +
        'n_pes_id'
      
        '                where ((coalesce(financeiro.fin_inativo,'#39'N'#39') = :' +
        'ativo1) or ( :ativo2 = '#39' '#39' ))'
      '               and fin_debcred = :debcred'
      
        '                  and exists (select usuario_visao.UVIS_USU_FILH' +
        'O'
      '                                from usuario_visao'
      
        '                               where usuario_visao.UVIS_USU_PAI=' +
        ':usuario'
      
        '                                 and usuario_visao.UVIS_USU_FILH' +
        'O=financeiro.FIN_USU_ID )'
      '               order by financeiro.fin_descricao'
      ')) where ((situacao = :situacao1) or (:situacao2 = 3))')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ativo1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'debcred'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao2'
        ParamType = ptUnknown
      end>
    object qConsultaFIN_ID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'FIN_ID'
      Origin = 'FINANCEIRO.FIN_ID'
      Required = True
    end
    object qConsultaFIN_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'FIN_DESCRICAO'
      Origin = 'FINANCEIRO.FIN_DESCRICAO'
      Size = 100
    end
    object qConsultaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
  end
  object qParcelas: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    AfterInsert = qParcelasAfterInsert
    BeforeInsert = qParcelasBeforeInsert
    BeforePost = qParcelasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from parcelas'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    InsertSQL.Strings = (
      'insert into parcelas'
      '  (PAR_ID, PAR_FIN_ID, PAR_NUMERO, PAR_QUANTIDADE, PAR_VENCTO, '
      'PAR_VALOR, '
      '   PAR_VALOR_PAGO, PAR_PAGO, PAR_OBSERVACAO, PAR_DATA, '
      'PAR_DESCONTOSABAT, '
      '   PAR_OUTDEDUCOES, PAR_JUROSMULTA, PAR_OUTACRESCIMOS, '
      'PAR_DH_CA, PAR_DATAPGTO, '
      
        '   PAR_FLAG, DESCRICAO, FLAG, PAR_EMPRESTIMO_ID, PAR_PROVISIONAR' +
        ')'
      'values'
      
        '  (:PAR_ID, :PAR_FIN_ID, :PAR_NUMERO, :PAR_QUANTIDADE, :PAR_VENC' +
        'TO, '
      ':PAR_VALOR, '
      '   :PAR_VALOR_PAGO, :PAR_PAGO, :PAR_OBSERVACAO, :PAR_DATA, '
      ':PAR_DESCONTOSABAT, '
      '   :PAR_OUTDEDUCOES, :PAR_JUROSMULTA, :PAR_OUTACRESCIMOS, '
      ':PAR_DH_CA, :PAR_DATAPGTO, '
      '   :PAR_FLAG, :DESCRICAO, :FLAG, :PAR_EMPRESTIMO_ID, '
      ':PAR_PROVISIONAR)')
    RefreshSQL.Strings = (
      'Select *'
      'from parcelas '
      'where'
      '  PAR_ID = :PAR_ID')
    SelectSQL.Strings = (
      'select parcelas.*,'
      '       parcelas.par_pago as situacao'
      '  from parcelas'
      ' where parcelas.par_id>-1'
      '   and par_fin_id = :FIN_ID'
      '   and par_pago = 0'
      ' order by parcelas.par_vencto, parcelas.par_id')
    ModifySQL.Strings = (
      'update parcelas'
      'set'
      '  PAR_ID = :PAR_ID,'
      '  PAR_FIN_ID = :PAR_FIN_ID,'
      '  PAR_NUMERO = :PAR_NUMERO,'
      '  PAR_QUANTIDADE = :PAR_QUANTIDADE,'
      '  PAR_VENCTO = :PAR_VENCTO,'
      '  PAR_VALOR = :PAR_VALOR,'
      '  PAR_VALOR_PAGO = :PAR_VALOR_PAGO,'
      '  PAR_PAGO = :PAR_PAGO,'
      '  PAR_OBSERVACAO = :PAR_OBSERVACAO,'
      '  PAR_DATA = :PAR_DATA,'
      '  PAR_DESCONTOSABAT = :PAR_DESCONTOSABAT,'
      '  PAR_OUTDEDUCOES = :PAR_OUTDEDUCOES,'
      '  PAR_JUROSMULTA = :PAR_JUROSMULTA,'
      '  PAR_OUTACRESCIMOS = :PAR_OUTACRESCIMOS,'
      '  PAR_DH_CA = :PAR_DH_CA,'
      '  PAR_DATAPGTO = :PAR_DATAPGTO,'
      '  PAR_FLAG = :PAR_FLAG,'
      '  DESCRICAO = :DESCRICAO,'
      '  FLAG = :FLAG,'
      '  PAR_EMPRESTIMO_ID = :PAR_EMPRESTIMO_ID,'
      '  PAR_PROVISIONAR = :PAR_PROVISIONAR'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    Filtered = True
    GeneratorField.Field = 'PAR_ID'
    GeneratorField.Generator = 'GEN_PARCELAS'
    DataSource = dsCadastro
    Left = 408
    Top = 328
    object qParcelasPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PARCELAS.PAR_ID'
      Required = True
    end
    object qParcelasPAR_FIN_ID: TIntegerField
      FieldName = 'PAR_FIN_ID'
      Origin = 'PARCELAS.PAR_FIN_ID'
      Required = True
    end
    object qParcelasPAR_NUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'PAR_NUMERO'
      Origin = 'PARCELAS.PAR_NUMERO'
    end
    object qParcelasPAR_QUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'PAR_QUANTIDADE'
      Origin = 'PARCELAS.PAR_QUANTIDADE'
    end
    object qParcelasPAR_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'PAR_VENCTO'
      Origin = 'PARCELAS.PAR_VENCTO'
    end
    object qParcelasPAR_VALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_VALOR_PAGO: TIBBCDField
      DisplayLabel = 'Valor pago'
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_PAGO: TIntegerField
      DisplayLabel = 'Pago'
      FieldName = 'PAR_PAGO'
      Origin = 'PARCELAS.PAR_PAGO'
    end
    object qParcelasPAR_PROVISIONAR: TIBStringField
      FieldName = 'PAR_PROVISIONAR'
      Origin = '"PARCELAS"."PAR_PROVISIONAR"'
      FixedChar = True
      Size = 1
    end
    object qParcelasPAR_OBSERVACAO: TIBStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'PAR_OBSERVACAO'
      Origin = 'PARCELAS.PAR_OBSERVACAO'
      Size = 100
    end
    object qParcelasPAR_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'PAR_DATA'
      Origin = 'PARCELAS.PAR_DATA'
    end
    object qParcelasPAR_DESCONTOSABAT: TIBBCDField
      FieldName = 'PAR_DESCONTOSABAT'
      Origin = '"PARCELAS"."PAR_DESCONTOSABAT"'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_OUTDEDUCOES: TIBBCDField
      FieldName = 'PAR_OUTDEDUCOES'
      Origin = '"PARCELAS"."PAR_OUTDEDUCOES"'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_JUROSMULTA: TIBBCDField
      FieldName = 'PAR_JUROSMULTA'
      Origin = '"PARCELAS"."PAR_JUROSMULTA"'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_OUTACRESCIMOS: TIBBCDField
      FieldName = 'PAR_OUTACRESCIMOS'
      Origin = '"PARCELAS"."PAR_OUTACRESCIMOS"'
      Precision = 18
      Size = 2
    end
    object qParcelasPAR_DH_CA: TDateTimeField
      FieldName = 'PAR_DH_CA'
      Origin = 'PARCELAS.PAR_DH_CA'
    end
    object qParcelasPAR_DATAPGTO: TDateTimeField
      FieldName = 'PAR_DATAPGTO'
      Origin = 'PARCELAS.PAR_DATAPGTO'
    end
    object qParcelasPAR_FLAG: TIntegerField
      FieldName = 'PAR_FLAG'
      Origin = 'PARCELAS.PAR_FLAG'
      Required = True
    end
    object qParcelasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PARCELAS.DESCRICAO'
      Size = 100
    end
    object qParcelasFLAG: TIntegerField
      FieldName = 'FLAG'
      Origin = 'PARCELAS.FLAG'
    end
    object qParcelasSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'PARCELAS.PAR_PAGO'
    end
    object qParcelasPAR_EMPRESTIMO_ID: TIntegerField
      FieldName = 'PAR_EMPRESTIMO_ID'
      Origin = '"PARCELAS"."PAR_EMPRESTIMO_ID"'
    end
  end
  object dsParcelas: TDataSource
    DataSet = qParcelas
    Left = 448
    Top = 328
  end
  object qPessoa: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from pessoa p order by p.pes_nome_razao, p.pes_nome_fan' +
        'tasia')
    Left = 496
    Top = 16
    object qPessoaPES_NOME_FANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 70
      FieldName = 'PES_NOME_FANTASIA'
      Origin = 'PESSOA.PES_NOME_FANTASIA'
      Size = 100
    end
    object qPessoaPES_NOME_RAZAO: TIBStringField
      DisplayLabel = 'Raz'#227'o'
      DisplayWidth = 60
      FieldName = 'PES_NOME_RAZAO'
      Origin = 'PESSOA.PES_NOME_RAZAO'
      Visible = False
      Size = 100
    end
    object qPessoaPES_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PES_ID'
      Origin = 'PESSOA.PES_ID'
      Required = True
      Visible = False
    end
    object qPessoaPES_TIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'PES_TIPO'
      Origin = 'PESSOA.PES_TIPO'
      Visible = False
    end
    object qPessoaPES_TIPO_PESSOA: TIntegerField
      DisplayWidth = 10
      FieldName = 'PES_TIPO_PESSOA'
      Origin = 'PESSOA.PES_TIPO_PESSOA'
      Visible = False
    end
    object qPessoaPES_CNPJ: TIBStringField
      DisplayWidth = 20
      FieldName = 'PES_CNPJ'
      Origin = 'PESSOA.PES_CNPJ'
      Visible = False
    end
    object qPessoaPES_INSC_EST: TIBStringField
      DisplayWidth = 20
      FieldName = 'PES_INSC_EST'
      Origin = 'PESSOA.PES_INSC_EST'
      Visible = False
    end
    object qPessoaPES_EMAIL: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_EMAIL'
      Origin = 'PESSOA.PES_EMAIL'
      Visible = False
      Size = 100
    end
    object qPessoaPES_TEL_COMERCIAL: TIBStringField
      DisplayWidth = 20
      FieldName = 'PES_TEL_COMERCIAL'
      Origin = 'PESSOA.PES_TEL_COMERCIAL'
      Visible = False
    end
    object qPessoaPES_TEL_CELULAR: TIBStringField
      DisplayWidth = 20
      FieldName = 'PES_TEL_CELULAR'
      Origin = 'PESSOA.PES_TEL_CELULAR'
      Visible = False
    end
    object qPessoaPES_CONTATO: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_CONTATO'
      Origin = 'PESSOA.PES_CONTATO'
      Visible = False
      Size = 100
    end
    object qPessoaPES_ENDERECO: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_ENDERECO'
      Origin = 'PESSOA.PES_ENDERECO'
      Visible = False
      Size = 100
    end
    object qPessoaPES_NUMERO: TIntegerField
      DisplayWidth = 10
      FieldName = 'PES_NUMERO'
      Origin = 'PESSOA.PES_NUMERO'
      Visible = False
    end
    object qPessoaPES_COMPLEMENTO: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_COMPLEMENTO'
      Origin = 'PESSOA.PES_COMPLEMENTO'
      Visible = False
      Size = 100
    end
    object qPessoaPES_BAIRRO: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_BAIRRO'
      Origin = 'PESSOA.PES_BAIRRO'
      Visible = False
      Size = 100
    end
    object qPessoaPES_CEP: TIBStringField
      DisplayWidth = 20
      FieldName = 'PES_CEP'
      Origin = 'PESSOA.PES_CEP'
      Visible = False
    end
    object qPessoaPES_CIDADE: TIBStringField
      DisplayWidth = 100
      FieldName = 'PES_CIDADE'
      Origin = 'PESSOA.PES_CIDADE'
      Visible = False
      Size = 100
    end
    object qPessoaPES_UF: TIBStringField
      DisplayWidth = 2
      FieldName = 'PES_UF'
      Origin = 'PESSOA.PES_UF'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object qPessoaPES_ANIVERSARIO: TDateField
      DisplayWidth = 10
      FieldName = 'PES_ANIVERSARIO'
      Origin = 'PESSOA.PES_ANIVERSARIO'
      Visible = False
    end
    object qPessoaPES_DESCRICAO: TIBStringField
      DisplayWidth = 255
      FieldName = 'PES_DESCRICAO'
      Origin = 'PESSOA.PES_DESCRICAO'
      Visible = False
      Size = 255
    end
  end
  object dsPessoa: TDataSource
    DataSet = qPessoa
    Left = 528
    Top = 16
  end
  object qCategoriaG: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from categoria_grupo g order by g.catg_descricao')
    Left = 576
    Top = 16
    object qCategoriaGCATG_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'CATG_DESCRICAO'
      Origin = 'CATEGORIA_GRUPO.CATG_DESCRICAO'
      Size = 100
    end
    object qCategoriaGCATG_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CATG_ID'
      Origin = 'CATEGORIA_GRUPO.CATG_ID'
      Required = True
      Visible = False
    end
  end
  object dsCategoriaG: TDataSource
    DataSet = qCategoriaG
    Left = 608
    Top = 16
  end
  object qCategoria: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsCategoriaG
    SQL.Strings = (
      'select c.*'
      '  from categoria c, categoria_grupo g'
      ' where c.cat_catg_id=g.catg_id'
      '   and g.catg_id=:catg_id'
      ' order by c.cat_descricao')
    Left = 664
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CATG_ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qCategoriaCAT_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'CAT_DESCRICAO'
      Origin = 'CATEGORIA.CAT_DESCRICAO'
      Size = 100
    end
    object qCategoriaCAT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CAT_ID'
      Origin = 'CATEGORIA.CAT_ID'
      Required = True
      Visible = False
    end
    object qCategoriaCAT_CATG_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CAT_CATG_ID'
      Origin = 'CATEGORIA.CAT_CATG_ID'
      Required = True
      Visible = False
    end
  end
  object dsCategoria: TDataSource
    DataSet = qCategoria
    OnDataChange = dsCategoriaDataChange
    Left = 696
    Top = 16
  end
  object cdsTmp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 16
    Data = {
      290000009619E0BD010000001800000001000000000003000000290006436F64
      69676F04000100000000000000}
    object cdsTmpCodigo: TIntegerField
      FieldName = 'Codigo'
    end
  end
  object dsTmp: TDataSource
    DataSet = cdsTmp
    Left = 456
    Top = 16
  end
  object qParcelasDetalhe: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsParcelas
    SQL.Strings = (
      'select *'
      '  from parcelas_detalhe'
      ' where det_par_id= :PAR_ID'
      ' ORDER BY parcelas_detalhe.det_data_doc,'
      '                     parcelas_detalhe.det_dh_ca asc')
    Left = 272
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAR_ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qParcelasDetalheDET_ID: TIntegerField
      FieldName = 'DET_ID'
      Origin = 'PARCELAS_DETALHE.DET_ID'
      Required = True
    end
    object qParcelasDetalheDET_PAR_ID: TIntegerField
      FieldName = 'DET_PAR_ID'
      Origin = 'PARCELAS_DETALHE.DET_PAR_ID'
      Required = True
    end
    object qParcelasDetalheDET_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DET_DATA'
      Origin = 'PARCELAS_DETALHE.DET_DATA'
    end
    object qParcelasDetalheDET_DATA_DOC: TDateField
      DisplayLabel = 'Data Doc'
      FieldName = 'DET_DATA_DOC'
      Origin = 'PARCELAS_DETALHE.DET_DATA_DOC'
    end
    object qParcelasDetalheDET_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DET_DESCRICAO'
      Origin = 'PARCELAS_DETALHE.DET_DESCRICAO'
      Size = 100
    end
    object qParcelasDetalheDET_VALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'DET_VALOR'
      Origin = 'PARCELAS_DETALHE.DET_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qParcelasDetalheDET_DH_CA: TDateTimeField
      FieldName = 'DET_DH_CA'
      Origin = '"PARCELAS_DETALHE"."DET_DH_CA"'
    end
    object qParcelasDetalheDET_PAGO: TIntegerField
      FieldName = 'DET_PAGO'
      Origin = '"PARCELAS_DETALHE"."DET_PAGO"'
    end
    object qParcelasDetalheDET_DATAPGTO: TDateTimeField
      FieldName = 'DET_DATAPGTO'
      Origin = '"PARCELAS_DETALHE"."DET_DATAPGTO"'
    end
    object qParcelasDetalheDET_FLAG: TIntegerField
      FieldName = 'DET_FLAG'
      Origin = '"PARCELAS_DETALHE"."DET_FLAG"'
      Required = True
    end
    object qParcelasDetalheDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PARCELAS_DETALHE"."DESCRICAO"'
      Size = 100
    end
    object qParcelasDetalheDET_NUMERO: TIntegerField
      FieldName = 'DET_NUMERO'
      Origin = '"PARCELAS_DETALHE"."DET_NUMERO"'
    end
    object qParcelasDetalheDET_QUANTIDADE: TIntegerField
      FieldName = 'DET_QUANTIDADE'
      Origin = '"PARCELAS_DETALHE"."DET_QUANTIDADE"'
    end
    object qParcelasDetalheDET_DATAVENCTO: TDateField
      FieldName = 'DET_DATAVENCTO'
      Origin = '"PARCELAS_DETALHE"."DET_DATAVENCTO"'
    end
    object qParcelasDetalheDET_EMPRESTIMO_ID: TIntegerField
      FieldName = 'DET_EMPRESTIMO_ID'
      Origin = '"PARCELAS_DETALHE"."DET_EMPRESTIMO_ID"'
    end
    object qParcelasDetalheDET_PROVISIONAR: TIBStringField
      FieldName = 'DET_PROVISIONAR'
      Origin = '"PARCELAS_DETALHE"."DET_PROVISIONAR"'
      FixedChar = True
      Size = 1
    end
  end
  object dsParcelasDetalhe: TDataSource
    DataSet = qParcelasDetalhe
    Left = 304
    Top = 368
  end
  object qCentroCusto: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from centro_custo where centro_custo.cct_id>-1 order by' +
        ' centro_custo.cct_descricao')
    Left = 360
    Top = 16
    object qCentroCustoCCT_DESCRICAO: TIBStringField
      DisplayLabel = 'Centro Custo'
      DisplayWidth = 50
      FieldName = 'CCT_DESCRICAO'
      Origin = 'CENTRO_CUSTO.CCT_DESCRICAO'
      Size = 100
    end
    object qCentroCustoCCT_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CCT_ID'
      Origin = 'CENTRO_CUSTO.CCT_ID'
      Required = True
      Visible = False
    end
    object qCentroCustoCCT_DH_CA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'CCT_DH_CA'
      Origin = 'CENTRO_CUSTO.CCT_DH_CA'
      Visible = False
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = qCentroCusto
    Left = 392
    Top = 16
  end
  object qCentroCustoGrid: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from centro_custo where centro_custo.cct_id>-1 order by' +
        ' centro_custo.cct_descricao')
    Left = 536
    Top = 160
    object qCentroCustoGridCCT_ID: TIntegerField
      FieldName = 'CCT_ID'
      Origin = 'CENTRO_CUSTO.CCT_ID'
      Required = True
    end
    object qCentroCustoGridCCT_DESCRICAO: TIBStringField
      FieldName = 'CCT_DESCRICAO'
      Origin = 'CENTRO_CUSTO.CCT_DESCRICAO'
      Size = 100
    end
    object qCentroCustoGridCCT_DH_CA: TDateTimeField
      FieldName = 'CCT_DH_CA'
      Origin = 'CENTRO_CUSTO.CCT_DH_CA'
    end
  end
  object dsCentroCustoGrid: TDataSource
    DataSet = qCentroCustoGrid
    Left = 568
    Top = 160
  end
  object qExisteParcela: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select parcelas.par_id, parcelas.par_valor'
      '  from parcelas'
      ' where parcelas.par_fin_id = :par_fin_id'
      '   and parcelas.par_vencto = :par_vencto'
      '   and extract(month from parcelas.par_vencto)=11'
      '   and extract(year from parcelas.par_vencto)=2017')
    Left = 272
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par_fin_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par_vencto'
        ParamType = ptUnknown
      end>
    object qExisteParcelaPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PARCELAS.PAR_ID'
      Required = True
    end
    object qExisteParcelaPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object dsExisteParcela: TDataSource
    DataSet = qExisteParcela
    Left = 304
    Top = 416
  end
  object ibDetalheParcelas: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BeforePost = ibDetalheParcelasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from parcelas_detalhe'
      'where'
      '  DET_ID = :OLD_DET_ID')
    InsertSQL.Strings = (
      'insert into parcelas_detalhe'
      '  (DET_ID, DET_PAR_ID, DET_DATA, DET_DATA_DOC, DET_DESCRICAO, '
      'DET_VALOR, '
      '   DET_DH_CA, DET_PAGO, DET_DATAPGTO, DET_FLAG, DESCRICAO, '
      'DET_NUMERO, '
      '   DET_QUANTIDADE, DET_DATAVENCTO, DET_EMPRESTIMO_ID, '
      'DET_PROVISIONAR, '
      '   DET_ID_PAI)'
      'values'
      
        '  (:DET_ID, :DET_PAR_ID, :DET_DATA, :DET_DATA_DOC, :DET_DESCRICA' +
        'O, '
      ':DET_VALOR, '
      '   :DET_DH_CA, :DET_PAGO, :DET_DATAPGTO, :DET_FLAG, :DESCRICAO, '
      ':DET_NUMERO, '
      '   :DET_QUANTIDADE, :DET_DATAVENCTO, :DET_EMPRESTIMO_ID, '
      ':DET_PROVISIONAR, '
      '   :DET_ID_PAI)')
    RefreshSQL.Strings = (
      'Select *'
      'from parcelas_detalhe '
      'where'
      '  DET_ID = :DET_ID')
    SelectSQL.Strings = (
      'select *'
      '  from parcelas_detalhe'
      ' where det_id = 0')
    ModifySQL.Strings = (
      'update parcelas_detalhe'
      'set'
      '  DET_ID = :DET_ID,'
      '  DET_PAR_ID = :DET_PAR_ID,'
      '  DET_DATA = :DET_DATA,'
      '  DET_DATA_DOC = :DET_DATA_DOC,'
      '  DET_DESCRICAO = :DET_DESCRICAO,'
      '  DET_VALOR = :DET_VALOR,'
      '  DET_DH_CA = :DET_DH_CA,'
      '  DET_PAGO = :DET_PAGO,'
      '  DET_DATAPGTO = :DET_DATAPGTO,'
      '  DET_FLAG = :DET_FLAG,'
      '  DESCRICAO = :DESCRICAO,'
      '  DET_NUMERO = :DET_NUMERO,'
      '  DET_QUANTIDADE = :DET_QUANTIDADE,'
      '  DET_DATAVENCTO = :DET_DATAVENCTO,'
      '  DET_EMPRESTIMO_ID = :DET_EMPRESTIMO_ID,'
      '  DET_PROVISIONAR = :DET_PROVISIONAR,'
      '  DET_ID_PAI = :DET_ID_PAI'
      'where'
      '  DET_ID = :OLD_DET_ID')
    GeneratorField.Field = 'DET_ID'
    GeneratorField.Generator = 'GEN_PARCELAS_DETALHE'
    Left = 176
    Top = 376
    object ibDetalheParcelasDET_ID: TIntegerField
      FieldName = 'DET_ID'
      Origin = 'PARCELAS_DETALHE.DET_ID'
      Required = True
    end
    object ibDetalheParcelasDET_PAR_ID: TIntegerField
      FieldName = 'DET_PAR_ID'
      Origin = 'PARCELAS_DETALHE.DET_PAR_ID'
      Required = True
    end
    object ibDetalheParcelasDET_DATA: TDateField
      FieldName = 'DET_DATA'
      Origin = 'PARCELAS_DETALHE.DET_DATA'
    end
    object ibDetalheParcelasDET_DATA_DOC: TDateField
      FieldName = 'DET_DATA_DOC'
      Origin = 'PARCELAS_DETALHE.DET_DATA_DOC'
    end
    object ibDetalheParcelasDET_DESCRICAO: TIBStringField
      FieldName = 'DET_DESCRICAO'
      Origin = 'PARCELAS_DETALHE.DET_DESCRICAO'
      Size = 100
    end
    object ibDetalheParcelasDET_VALOR: TIBBCDField
      FieldName = 'DET_VALOR'
      Origin = 'PARCELAS_DETALHE.DET_VALOR'
      Precision = 18
      Size = 2
    end
    object ibDetalheParcelasDET_DH_CA: TDateTimeField
      FieldName = 'DET_DH_CA'
      Origin = 'PARCELAS_DETALHE.DET_DH_CA'
    end
    object ibDetalheParcelasDET_PAGO: TIntegerField
      FieldName = 'DET_PAGO'
      Origin = 'PARCELAS_DETALHE.DET_PAGO'
    end
    object ibDetalheParcelasDET_DATAPGTO: TDateTimeField
      FieldName = 'DET_DATAPGTO'
      Origin = 'PARCELAS_DETALHE.DET_DATAPGTO'
    end
    object ibDetalheParcelasDET_FLAG: TIntegerField
      FieldName = 'DET_FLAG'
      Origin = 'PARCELAS_DETALHE.DET_FLAG'
      Required = True
    end
    object ibDetalheParcelasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PARCELAS_DETALHE.DESCRICAO'
      Size = 100
    end
    object ibDetalheParcelasDET_NUMERO: TIntegerField
      FieldName = 'DET_NUMERO'
      Origin = 'PARCELAS_DETALHE.DET_NUMERO'
    end
    object ibDetalheParcelasDET_QUANTIDADE: TIntegerField
      FieldName = 'DET_QUANTIDADE'
      Origin = 'PARCELAS_DETALHE.DET_QUANTIDADE'
    end
    object ibDetalheParcelasDET_DATAVENCTO: TDateField
      FieldName = 'DET_DATAVENCTO'
      Origin = '"PARCELAS_DETALHE"."DET_DATAVENCTO"'
    end
    object ibDetalheParcelasDET_EMPRESTIMO_ID: TIntegerField
      FieldName = 'DET_EMPRESTIMO_ID'
      Origin = '"PARCELAS_DETALHE"."DET_EMPRESTIMO_ID"'
    end
    object ibDetalheParcelasDET_PROVISIONAR: TIBStringField
      FieldName = 'DET_PROVISIONAR'
      Origin = '"PARCELAS_DETALHE"."DET_PROVISIONAR"'
      FixedChar = True
      Size = 1
    end
    object ibDetalheParcelasDET_ID_PAI: TIntegerField
      FieldName = 'DET_ID_PAI'
      Origin = 'PARCELAS_DETALHE.DET_ID_PAI'
    end
  end
  object qGetIdParcelas: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select gen_id(gen_parcelas,1) id from rdb$database')
    Left = 176
    Top = 424
    object qGetIdParcelasID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
  end
  object ActionListBotao: TActionList
    Left = 152
    Top = 80
    object bNovo: TAction
      Caption = 'bNovo'
      Hint = 'Novo'
      ShortCut = 113
    end
    object bAlterar: TAction
      Caption = 'bAlterar'
      Hint = 'Alterar'
      ShortCut = 114
    end
    object bCancelar: TAction
      Caption = 'bCancelar'
      Hint = 'Cancelar'
      ShortCut = 115
    end
    object bGravar: TAction
      Caption = 'bGravar'
      Hint = 'Gravar'
      ShortCut = 116
    end
    object bExcluir: TAction
      Caption = 'bExcluir'
      Hint = 'Excluir'
      ShortCut = 117
    end
  end
  object qEditarParcela: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from parcelas'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    InsertSQL.Strings = (
      'insert into parcelas'
      
        '  (DESCRICAO, FLAG, PAR_DATA, PAR_DATAPGTO, PAR_DESCONTOSABAT, P' +
        'AR_DH_CA, '
      
        '   PAR_EMPRESTIMO_ID, PAR_FIN_ID, PAR_FLAG, PAR_ID, PAR_JUROSMUL' +
        'TA, PAR_NUMERO, '
      
        '   PAR_OBSERVACAO, PAR_OUTACRESCIMOS, PAR_OUTDEDUCOES, PAR_PAGO,' +
        ' PAR_PROVISIONAR, '
      '   PAR_QUANTIDADE, PAR_VALOR, PAR_VALOR_PAGO, PAR_VENCTO)'
      'values'
      
        '  (:DESCRICAO, :FLAG, :PAR_DATA, :PAR_DATAPGTO, :PAR_DESCONTOSAB' +
        'AT, :PAR_DH_CA, '
      
        '   :PAR_EMPRESTIMO_ID, :PAR_FIN_ID, :PAR_FLAG, :PAR_ID, :PAR_JUR' +
        'OSMULTA, '
      
        '   :PAR_NUMERO, :PAR_OBSERVACAO, :PAR_OUTACRESCIMOS, :PAR_OUTDED' +
        'UCOES, '
      
        '   :PAR_PAGO, :PAR_PROVISIONAR, :PAR_QUANTIDADE, :PAR_VALOR, :PA' +
        'R_VALOR_PAGO, '
      '   :PAR_VENCTO)')
    RefreshSQL.Strings = (
      'Select '
      '  PAR_ID,'
      '  PAR_FIN_ID,'
      '  PAR_NUMERO,'
      '  PAR_QUANTIDADE,'
      '  PAR_VENCTO,'
      '  PAR_VALOR,'
      '  PAR_VALOR_PAGO,'
      '  PAR_PAGO,'
      '  PAR_OBSERVACAO,'
      '  PAR_DATA,'
      '  PAR_DESCONTOSABAT,'
      '  PAR_OUTDEDUCOES,'
      '  PAR_JUROSMULTA,'
      '  PAR_OUTACRESCIMOS,'
      '  PAR_DH_CA,'
      '  PAR_DATAPGTO,'
      '  PAR_FLAG,'
      '  DESCRICAO,'
      '  FLAG,'
      '  PAR_EMPRESTIMO_ID,'
      '  PAR_PROVISIONAR'
      'from parcelas '
      'where'
      '  PAR_ID = :PAR_ID')
    SelectSQL.Strings = (
      'select parcelas.*'
      '  from parcelas'
      ' where parcelas.par_id = :PAR_ID')
    ModifySQL.Strings = (
      'update parcelas'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  FLAG = :FLAG,'
      '  PAR_DATA = :PAR_DATA,'
      '  PAR_DATAPGTO = :PAR_DATAPGTO,'
      '  PAR_DESCONTOSABAT = :PAR_DESCONTOSABAT,'
      '  PAR_DH_CA = :PAR_DH_CA,'
      '  PAR_EMPRESTIMO_ID = :PAR_EMPRESTIMO_ID,'
      '  PAR_FIN_ID = :PAR_FIN_ID,'
      '  PAR_FLAG = :PAR_FLAG,'
      '  PAR_ID = :PAR_ID,'
      '  PAR_JUROSMULTA = :PAR_JUROSMULTA,'
      '  PAR_NUMERO = :PAR_NUMERO,'
      '  PAR_OBSERVACAO = :PAR_OBSERVACAO,'
      '  PAR_OUTACRESCIMOS = :PAR_OUTACRESCIMOS,'
      '  PAR_OUTDEDUCOES = :PAR_OUTDEDUCOES,'
      '  PAR_PAGO = :PAR_PAGO,'
      '  PAR_PROVISIONAR = :PAR_PROVISIONAR,'
      '  PAR_QUANTIDADE = :PAR_QUANTIDADE,'
      '  PAR_VALOR = :PAR_VALOR,'
      '  PAR_VALOR_PAGO = :PAR_VALOR_PAGO,'
      '  PAR_VENCTO = :PAR_VENCTO'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    Filtered = True
    GeneratorField.Field = 'PAR_ID'
    GeneratorField.Generator = 'GEN_PARCELAS'
    DataSource = dsCadastro
    Left = 504
    Top = 344
    object qEditarParcelaPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PARCELAS.PAR_ID'
      Required = True
    end
    object qEditarParcelaPAR_FIN_ID: TIntegerField
      FieldName = 'PAR_FIN_ID'
      Origin = 'PARCELAS.PAR_FIN_ID'
      Required = True
    end
    object qEditarParcelaPAR_NUMERO: TIntegerField
      FieldName = 'PAR_NUMERO'
      Origin = 'PARCELAS.PAR_NUMERO'
    end
    object qEditarParcelaPAR_QUANTIDADE: TIntegerField
      FieldName = 'PAR_QUANTIDADE'
      Origin = 'PARCELAS.PAR_QUANTIDADE'
    end
    object qEditarParcelaPAR_VENCTO: TDateField
      FieldName = 'PAR_VENCTO'
      Origin = 'PARCELAS.PAR_VENCTO'
    end
    object qEditarParcelaPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = 'PARCELAS.PAR_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qEditarParcelaPAR_VALOR_PAGO: TIBBCDField
      FieldName = 'PAR_VALOR_PAGO'
      Origin = 'PARCELAS.PAR_VALOR_PAGO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qEditarParcelaPAR_PAGO: TIntegerField
      FieldName = 'PAR_PAGO'
      Origin = 'PARCELAS.PAR_PAGO'
    end
    object qEditarParcelaPAR_OBSERVACAO: TIBStringField
      FieldName = 'PAR_OBSERVACAO'
      Origin = 'PARCELAS.PAR_OBSERVACAO'
      Size = 100
    end
    object qEditarParcelaPAR_DATA: TDateField
      FieldName = 'PAR_DATA'
      Origin = 'PARCELAS.PAR_DATA'
    end
    object qEditarParcelaPAR_DESCONTOSABAT: TIBBCDField
      FieldName = 'PAR_DESCONTOSABAT'
      Origin = 'PARCELAS.PAR_DESCONTOSABAT'
      Precision = 18
      Size = 2
    end
    object qEditarParcelaPAR_OUTDEDUCOES: TIBBCDField
      FieldName = 'PAR_OUTDEDUCOES'
      Origin = 'PARCELAS.PAR_OUTDEDUCOES'
      Precision = 18
      Size = 2
    end
    object qEditarParcelaPAR_JUROSMULTA: TIBBCDField
      FieldName = 'PAR_JUROSMULTA'
      Origin = 'PARCELAS.PAR_JUROSMULTA'
      Precision = 18
      Size = 2
    end
    object qEditarParcelaPAR_OUTACRESCIMOS: TIBBCDField
      FieldName = 'PAR_OUTACRESCIMOS'
      Origin = 'PARCELAS.PAR_OUTACRESCIMOS'
      Precision = 18
      Size = 2
    end
    object qEditarParcelaPAR_DH_CA: TDateTimeField
      FieldName = 'PAR_DH_CA'
      Origin = 'PARCELAS.PAR_DH_CA'
    end
    object qEditarParcelaPAR_DATAPGTO: TDateTimeField
      FieldName = 'PAR_DATAPGTO'
      Origin = 'PARCELAS.PAR_DATAPGTO'
    end
    object qEditarParcelaPAR_FLAG: TIntegerField
      FieldName = 'PAR_FLAG'
      Origin = 'PARCELAS.PAR_FLAG'
      Required = True
    end
    object qEditarParcelaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PARCELAS.DESCRICAO'
      Size = 100
    end
    object qEditarParcelaFLAG: TIntegerField
      FieldName = 'FLAG'
      Origin = 'PARCELAS.FLAG'
    end
    object qEditarParcelaPAR_EMPRESTIMO_ID: TIntegerField
      FieldName = 'PAR_EMPRESTIMO_ID'
      Origin = 'PARCELAS.PAR_EMPRESTIMO_ID'
    end
    object qEditarParcelaPAR_PROVISIONAR: TIBStringField
      FieldName = 'PAR_PROVISIONAR'
      Origin = 'PARCELAS.PAR_PROVISIONAR'
      FixedChar = True
      Size = 1
    end
  end
  object frxReport1: TfrxReport
    Version = '4.9.38'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44719.947765763890000000
    ReportOptions.LastChange = 44719.947765763890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 224
    Top = 320
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qGetIdParcelasDetalhe: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select gen_id(gen_parcelas_detalhe,1) id from rdb$database')
    Left = 88
    Top = 392
    object qGetIdParcelasDetalheID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
  end
end
