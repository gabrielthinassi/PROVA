inherited FConsultaContato: TFConsultaContato
  Caption = 'Consultar'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel3: TPanel
      inherited BitBtn1: TBitBtn
        OnClick = BitBtn1Click
      end
      inherited BitBtn2: TBitBtn
        OnClick = BitBtn2Click
      end
    end
    inherited cbCampo: TComboBox
      ItemIndex = 1
      Text = 'Nome'
      Items.Strings = (
        'C'#243'digo'
        'Nome')
    end
    inherited cbOpcoes: TComboBox
      ItemIndex = 3
      Items.Strings = (
        'Iniciado com'
        'Terminado com'
        'Igual'
        'Que Cont'#233'm')
    end
  end
  inherited Panel2: TPanel
    inherited JvDBGrid1: TJvDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_CONTATO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CONTATO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Contato'
          Width = 342
          Visible = True
        end>
    end
  end
  inherited DS: TDataSource
    DataSet = DMCadContato.CDSConsulta
  end
end
