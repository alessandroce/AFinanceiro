object FInformeDadosParcelasDet: TFInformeDadosParcelasDet
  Left = 300
  Top = 169
  Width = 479
  Height = 206
  Caption = 'Informe'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 441
    Height = 111
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 20
    Top = 32
    Width = 81
    Height = 13
    Caption = 'Data Documento'
  end
  object Label2: TLabel
    Left = 20
    Top = 60
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object edDescricao: TEdit
    Left = 116
    Top = 56
    Width = 300
    Height = 21
    TabOrder = 0
  end
  object btCancelar: TBitBtn
    Left = 147
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btCancelarClick
  end
  object btOK: TBitBtn
    Left = 235
    Top = 128
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = btOKClick
  end
  object edDataDoc: TDateTimePicker
    Left = 135
    Top = 28
    Width = 93
    Height = 21
    Date = 43055.411133414350000000
    Time = 43055.411133414350000000
    TabOrder = 3
    OnChange = edDataDocChange
  end
  object edDataDocMsk: TMaskEdit
    Left = 120
    Top = 28
    Width = 89
    Height = 21
    EditMask = '##/##/####'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
    OnExit = edDataDocMskExit
  end
end
