inherited FPaiCadastro: TFPaiCadastro
  Caption = 'Cadastro'
  ClientHeight = 370
  ClientWidth = 568
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  ExplicitWidth = 584
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 123
    Height = 321
    Align = alLeft
    TabOrder = 0
    object BotaoIncluir: TBitBtn
      Left = 1
      Top = 1
      Width = 121
      Height = 39
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = BotaoIncluirClick
    end
    object BotaoExcluir: TBitBtn
      Left = 1
      Top = 40
      Width = 121
      Height = 39
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Excluir'
      Enabled = False
      TabOrder = 1
      OnClick = BotaoExcluirClick
    end
    object BotaoSalvar: TBitBtn
      Left = 1
      Top = 79
      Width = 121
      Height = 39
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 2
      OnClick = BotaoSalvarClick
    end
    object BotaoCancelar: TBitBtn
      Left = 1
      Top = 118
      Width = 121
      Height = 39
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 3
      OnClick = BotaoCancelarClick
    end
    object BotaoConsultar: TBitBtn
      Left = 1
      Top = 157
      Width = 121
      Height = 39
      Cursor = crHandPoint
      Align = alTop
      Caption = 'Consultar'
      TabOrder = 4
    end
  end
  object PanelCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 49
    Align = alTop
    TabOrder = 1
    OnExit = PanelCabecalhoExit
    DesignSize = (
      568
      49)
    object Label1: TLabel
      Left = 16
      Top = 18
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object PanelNavegacao: TPanel
      Left = 423
      Top = 6
      Width = 140
      Height = 30
      Anchors = [akTop, akRight]
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 2
        Top = 3
        Width = 35
        Height = 25
        Cursor = crHandPoint
        Caption = '<<'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 36
        Top = 3
        Width = 35
        Height = 25
        Cursor = crHandPoint
        Caption = '<'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 70
        Top = 3
        Width = 35
        Height = 25
        Cursor = crHandPoint
        Caption = '>'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 104
        Top = 3
        Width = 35
        Height = 25
        Cursor = crHandPoint
        Caption = '>>'
        TabOrder = 3
        OnClick = BitBtn4Click
      end
    end
    object editCodigo: TJvCalcEdit
      Left = 55
      Top = 15
      Width = 90
      Height = 21
      ImageKind = ikEllipsis
      TabOrder = 1
      ZeroEmpty = False
      DecimalPlacesAlwaysShown = False
      OnButtonClick = editCodigoButtonClick
      OnKeyPress = editCodigoKeyPress
    end
  end
  object Panel3: TPanel
    Left = 123
    Top = 49
    Width = 445
    Height = 321
    Align = alClient
    TabOrder = 2
  end
  object DS: TDataSource
    OnStateChange = DSStateChange
    OnDataChange = DSDataChange
    Left = 40
    Top = 265
  end
end
