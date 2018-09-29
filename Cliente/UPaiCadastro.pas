unit UPaiCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPai, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits, Vcl.Buttons, Vcl.ExtCtrls, UDMPaiCadastro,
  Datasnap.DBClient;

type
  TFPaiCadastro = class(TFPai)
    Panel1: TPanel;
    PanelCabecalho: TPanel;
    Panel3: TPanel;
    PanelNavegacao: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BotaoIncluir: TBitBtn;
    BotaoExcluir: TBitBtn;
    BotaoSalvar: TBitBtn;
    BotaoCancelar: TBitBtn;
    BotaoConsultar: TBitBtn;
    editCodigo: TJvCalcEdit;
    Label1: TLabel;
    DS: TDataSource;
    procedure PanelCabecalhoExit(Sender: TObject);
    procedure editCodigoButtonClick(Sender: TObject);
    procedure editCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BotaoIncluirClick(Sender: TObject);
    procedure BotaoSalvarClick(Sender: TObject);
    procedure BotaoExcluirClick(Sender: TObject);
    procedure BotaoCancelarClick(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    FDMCadastro: TDMPaiCadastro;
  public
    property DMCadastro: TDMPaiCadastro read FDMCadastro write FDMCadastro;
    procedure AbrirCDS(Codigo: Integer);
    procedure NavegarRegistro(Sentido: Integer);
  end;

var
  FPaiCadastro: TFPaiCadastro;

implementation

{$R *.dfm}

uses UDMConexao;

{ TFPaiCadastro }

procedure TFPaiCadastro.AbrirCDS(Codigo: Integer);
begin

  if (Codigo = 0) or (Codigo = DMCadastro.CodigoAtual) then
    Exit;

  with DMCadastro, CDSCadastro do
  begin
    Close;
    FetchParams;
    Params[0].AsInteger := Codigo;
    Open;

    if RecordCount = 0 then
      MessageDlg('Registro não encontrado!', mtWarning, mbOKCancel, 0);
  end;

end;

procedure TFPaiCadastro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  NavegarRegistro(0);
end;

procedure TFPaiCadastro.BitBtn2Click(Sender: TObject);
begin
  inherited;
  NavegarRegistro(1);
end;

procedure TFPaiCadastro.BitBtn3Click(Sender: TObject);
begin
  inherited;
  NavegarRegistro(2);
end;

procedure TFPaiCadastro.BitBtn4Click(Sender: TObject);
begin
  inherited;
  NavegarRegistro(3);
end;

procedure TFPaiCadastro.BotaoCancelarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja cancelar o registro?', mtInformation, mbYesNo, 0) = mrYes then
    DMCadastro.CDSCadastro.CancelUpdates;

end;

procedure TFPaiCadastro.BotaoExcluirClick(Sender: TObject);
begin
  inherited;

  if MessageDlg('Deseja excluir o registro?', mtInformation, mbYesNo, 0) = mrYes then
  begin
    DMCadastro.CDSCadastro.Delete;
    DMCadastro.CDSCadastro.ApplyUpdates(0);
  end;

end;

procedure TFPaiCadastro.BotaoIncluirClick(Sender: TObject);
begin
  inherited;

  with DMCadastro, CDSCadastro do
  begin
    try
      if not Active then
        Open;
      Insert;
    except on E: Exception do
      raise Exception.Create('Não foi possível inserir um registro. Erro: ' + E.Message);
    end;
  end;

end;

procedure TFPaiCadastro.BotaoSalvarClick(Sender: TObject);
begin
  inherited;

  with DMCadastro, CDSCadastro do
  begin
    try
      ApplyUpdates(0);
    except on E: Exception do
      raise Exception.Create('Não foi possível gravar o registro. Erro: ' + E.Message);
    end;
  end;

end;

procedure TFPaiCadastro.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Assigned(DMCadastro) then
  begin
    editCodigo.Text := DMCadastro.CDSCadastro.FieldByName(DMCadastro.ClasseFilha.CampoChave).AsString;
    DMCadastro.CodigoAtual := DMCadastro.CDSCadastro.FieldByName(DMCadastro.ClasseFilha.CampoChave).AsInteger;
  end;
end;

procedure TFPaiCadastro.DSStateChange(Sender: TObject);
var
  DSS: TDataSetState;
begin

  DSS := DS.State;

  BotaoIncluir.Enabled := DSS in [dsBrowse, dsInactive];
  BotaoExcluir.Enabled := DSS in [dsBrowse];
  BotaoSalvar.Enabled := DSS in [dsEdit, dsInsert];
  BotaoCancelar.Enabled := DSS in [dsEdit, dsInsert];
  BotaoConsultar.Enabled := DSS in [dsBrowse, dsInactive];

  PanelCabecalho.Enabled := DSS in [dsBrowse, dsInactive];

end;

procedure TFPaiCadastro.editCodigoButtonClick(Sender: TObject);
begin
  inherited;
  BotaoConsultar.Click;
end;

procedure TFPaiCadastro.editCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    BotaoIncluir.SetFocus;
    Exit;
  end;
end;

procedure TFPaiCadastro.FormCreate(Sender: TObject);
begin
  inherited;
  DMCadastro.CodigoAtual := 0;
end;

procedure TFPaiCadastro.NavegarRegistro(Sentido: Integer);
var
  SQL: String;
  CDSTemp: TClientDataSet;
begin

  CDSTemp := TClientDataSet.Create(Self);
  try
    with DMCadastro, ClasseFilha do
    begin
      case Sentido of
        0: SQL := 'SELECT MIN(' + CampoChave + ') AS CODIGO FROM ' + TabelaPrincipal;
        1: SQL := 'SELECT MAX(' + CampoChave + ') AS CODIGO FROM ' +
            TabelaPrincipal + #13 + ' WHERE ' + CampoChave + ' < ' + IntToStr(CodigoAtual);
        2: SQL := 'SELECT MIN(' + CampoChave + ') AS CODIGO FROM ' +
            TabelaPrincipal + ' WHERE ' + CampoChave + ' > ' + IntToStr(CodigoAtual);
        3: SQL := 'SELECT MAX(' + CampoChave + ') AS CODIGO FROM ' + TabelaPrincipal;
      end;

      CDSTemp.Data := DMConexao.ExecuteReader(SQL);

      if not CDSTemp.IsEmpty then
      begin
        AbrirCDS(CDSTemp.FieldByName('CODIGO').AsInteger)
      end else
        editCodigo.Text := IntToStr(CodigoAtual)
    end;
  finally
    CDSTemp.Free;
  end;
end;

procedure TFPaiCadastro.PanelCabecalhoExit(Sender: TObject);
begin
  inherited;
  AbrirCDS(StrToInt(editCodigo.Text));
end;

end.
