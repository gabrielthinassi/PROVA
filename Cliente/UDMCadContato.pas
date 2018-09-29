unit UDMCadContato;

interface

uses
  System.SysUtils, System.Classes, UDMPaiCadastro, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Dialogs;

type
  TDMCadContato = class(TDMPaiCadastro)
    CDSCadastroCODIGO_CONTATO: TIntegerField;
    CDSCadastroNOME_CONTATO: TStringField;
    CDSConsultaCODIGO_CONTATO: TIntegerField;
    CDSConsultaNOME_CONTATO: TStringField;
    CDSTelefones: TClientDataSet;
    CDSCadastroSQLDSTelefones: TDataSetField;
    CDSTelefonesAUTOINC_TEL: TIntegerField;
    CDSTelefonesCONTATO_TEL: TIntegerField;
    CDSTelefonesTELEFONE_TEL: TStringField;
    CDSEnderecos: TClientDataSet;
    CDSCadastroSQLDSEnderecos: TDataSetField;
    CDSEnderecosAUTOINC_ENDERECO: TIntegerField;
    CDSEnderecosCONTATO_ENDERECO: TIntegerField;
    CDSEnderecosDESCRICAO_ENDERECO: TStringField;
    CDSEnderecosNUMERO_ENDERECO: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure CDSTelefonesNewRecord(DataSet: TDataSet);
    procedure CDSTelefonesBeforePost(DataSet: TDataSet);
    procedure CDSTelefonesBeforeDelete(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSEnderecosNewRecord(DataSet: TDataSet);
    procedure CDSEnderecosBeforePost(DataSet: TDataSet);
    procedure CDSEnderecosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadContato: TDMCadContato;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDMConexao, ClassContato;

{$R *.dfm}

procedure TDMCadContato.CDSEnderecosBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (CDSCadastro.State in [dsEdit, dsInsert]) then
    CDSCadastro.Edit;
end;

procedure TDMCadContato.CDSEnderecosBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CDSEnderecos.State = dsInsert then
    CDSEnderecos.FieldByName('AUTOINC_ENDERECO').AsInteger := DMConexao.ProximoCodigo('ENDERECO');
end;

procedure TDMCadContato.CDSEnderecosNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSEnderecos.FieldByName('CONTATO_ENDERECO').AsInteger := CDSCadastro.FieldByName('CODIGO_CONTATO').AsInteger;
end;

procedure TDMCadContato.CDSTelefonesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (CDSCadastro.State in [dsEdit, dsInsert]) then
    CDSCadastro.Edit;
end;

procedure TDMCadContato.CDSTelefonesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CDSTelefones.State = dsInsert then
    CDSTelefones.FieldByName('AUTOINC_TEL').AsInteger := DMConexao.ProximoCodigo('TELEFONE');
end;

procedure TDMCadContato.CDSTelefonesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSTelefones.FieldByName('CONTATO_TEL').AsInteger := CDSCadastro.FieldByName('CODIGO_CONTATO').AsInteger;
end;

procedure TDMCadContato.DataModuleCreate(Sender: TObject);
begin
  ClasseFilha := TClassContato;
  inherited;

end;

procedure TDMCadContato.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  CDSTelefones.Close;
  CDSCadastro.Close;
end;

end.
