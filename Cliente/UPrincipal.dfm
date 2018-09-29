object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Contatos'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 447
    Height = 27
    UseSystemFont = False
    ActionManager = ActionManager
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = acContato
              end>
            Caption = '&Cadastros'
          end
          item
            Items = <
              item
                Action = acAgenda
              end>
            Caption = '&Utilit'#225'rios'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 288
    Top = 112
    StyleName = 'Platform Default'
    object acContato: TAction
      Caption = '&Contato'
      OnExecute = acContatoExecute
    end
    object acAgenda: TAction
      Caption = 'Agenda'
      OnExecute = acAgendaExecute
    end
  end
end
