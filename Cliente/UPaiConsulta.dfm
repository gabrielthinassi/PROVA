object FPaiConsulta: TFPaiConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 379
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 670
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 38
      Height = 13
      Caption = 'Campos'
    end
    object Label2: TLabel
      Left = 150
      Top = 24
      Width = 36
      Height = 13
      Caption = 'Op'#231#245'es'
    end
    object Label3: TLabel
      Left = 284
      Top = 24
      Width = 50
      Height = 13
      Caption = 'Par'#226'metro'
    end
    object Panel3: TPanel
      Left = 520
      Top = 1
      Width = 149
      Height = 95
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 0
        Top = 0
        Width = 149
        Height = 36
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Consultar'
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 0
        Top = 36
        Width = 149
        Height = 36
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Confirmar'
        TabOrder = 1
      end
    end
    object cbCampo: TComboBox
      Left = 7
      Top = 39
      Width = 140
      Height = 21
      TabOrder = 1
      Text = 'cbCampo'
    end
    object cbOpcoes: TComboBox
      Left = 149
      Top = 39
      Width = 132
      Height = 21
      ItemIndex = 2
      TabOrder = 2
      Text = 'Que Cont'#233'm'
      Items.Strings = (
        'Iniciado com'
        'Terminado com'
        'Que Cont'#233'm'
        'Preenchido')
    end
    object editParametro: TEdit
      Left = 284
      Top = 39
      Width = 230
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 670
    Height = 282
    Align = alClient
    TabOrder = 1
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 668
      Height = 280
      Align = alClient
      DataSource = DS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
    end
  end
  object DS: TDataSource
    Left = 600
    Top = 297
  end
end
