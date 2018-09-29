object FAgenda: TFAgenda
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Agenda'
  ClientHeight = 458
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 65
    Height = 13
    Caption = 'Local do XML:'
  end
  object Label2: TLabel
    Left = 16
    Top = 128
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 16
    Top = 152
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  object Edit1: TEdit
    Left = 87
    Top = 13
    Width = 218
    Height = 21
    TabOrder = 0
    Text = 'C:\banco\Agenda.XML'
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 40
    Width = 153
    Height = 73
    Caption = ' Ordena'#231#227'o '
    ItemIndex = 0
    Items.Strings = (
      'Por Nome'
      'Por Telefone')
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object GroupBox1: TGroupBox
    Left = 175
    Top = 40
    Width = 265
    Height = 73
    Caption = ' Busca Incremental '
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 192
      Top = 22
      Width = 62
      Height = 25
      Caption = 'Buscar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Edit2: TEdit
    Left = 184
    Top = 64
    Width = 177
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 184
    Width = 448
    Height = 274
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DS
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Width = 187
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 195
    Top = 147
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 311
    Top = 10
    Width = 129
    Height = 26
    Caption = 'Abrir Agenda'
    TabOrder = 6
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 68
    Top = 122
    Width = 121
    Height = 21
    DataField = 'NOME'
    DataSource = DS
    TabOrder = 7
  end
  object DBEdit2: TDBEdit
    Left = 68
    Top = 149
    Width = 121
    Height = 21
    DataField = 'TELEFONE'
    DataSource = DS
    TabOrder = 8
  end
  object Button3: TButton
    Left = 195
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 311
    Top = 152
    Width = 129
    Height = 26
    Caption = 'Fechar Agenda'
    TabOrder = 10
    OnClick = Button4Click
  end
  object CDS: TClientDataSet
    PersistDataPacket.Data = {
      500000009619E0BD0100000018000000020000000000030000005000044E4F4D
      4501004900000001000557494454480200020028000854454C45464F4E450100
      4900000001000557494454480200020028000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 304
    object CDSNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object CDSTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 40
    end
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 352
    Top = 352
  end
end
