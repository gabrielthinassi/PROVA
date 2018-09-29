inherited FCadContato: TFCadContato
  Caption = 'Cadastro de Contatos'
  ClientHeight = 373
  ClientWidth = 601
  OnClose = FormClose
  ExplicitWidth = 617
  ExplicitHeight = 412
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 324
    ExplicitHeight = 324
    inherited BotaoConsultar: TBitBtn
      OnClick = BotaoConsultarClick
    end
  end
  inherited PanelCabecalho: TPanel
    Width = 601
    ExplicitWidth = 601
    inherited PanelNavegacao: TPanel
      Left = 456
      ExplicitLeft = 456
    end
  end
  inherited Panel3: TPanel
    Width = 478
    Height = 324
    ExplicitWidth = 478
    ExplicitHeight = 324
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 84
      Height = 13
      Caption = 'Nome do Contato'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 43
      Width = 426
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      DataField = 'NOME_CONTATO'
      DataSource = DS
      TabOrder = 0
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 85
      Width = 476
      Height = 238
      ActivePage = TabSheet2
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Telefones'
        object JvDBGrid1: TJvDBGrid
          Left = 0
          Top = 0
          Width = 468
          Height = 210
          Align = alClient
          DataSource = DSTelefones
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
          Columns = <
            item
              Expanded = False
              FieldName = 'AUTOINC_TEL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CONTATO_TEL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TELEFONE_TEL'
              Title.Alignment = taCenter
              Title.Caption = 'Telefone'
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Endere'#231'os'
        ImageIndex = 1
        object JvDBGrid2: TJvDBGrid
          Left = 0
          Top = 0
          Width = 468
          Height = 210
          Align = alClient
          DataSource = DSEnderecos
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
          Columns = <
            item
              Expanded = False
              FieldName = 'AUTOINC_ENDERECO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CONTATO_ENDERECO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO_ENDERECO'
              Title.Alignment = taCenter
              Title.Caption = 'Endere'#231'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_ENDERECO'
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero'
              Visible = True
            end>
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = DMCadContato.CDSCadastro
  end
  object DSTelefones: TDataSource
    DataSet = DMCadContato.CDSTelefones
    Left = 40
    Top = 313
  end
  object DSEnderecos: TDataSource
    DataSet = DMCadContato.CDSEnderecos
    Left = 96
    Top = 313
  end
end
