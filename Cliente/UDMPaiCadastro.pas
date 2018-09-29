unit UDMPaiCadastro;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, ClassPaiCadastro;

type
  TDMPaiCadastro = class(TDataModule)
    CDSCadastro: TClientDataSet;
    DSPCCadastro: TDSProviderConnection;
    CDSConsulta: TClientDataSet;
    procedure CDSCadastroBeforePost(DataSet: TDataSet);
    procedure CDSCadastroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    FClasseFilha: TFClassPaiCadastro;
    FCodigoAtual: Integer;
  public
    property ClasseFilha: TFClassPaiCadastro read FClasseFilha write FClasseFilha;
    property CodigoAtual: Integer read FCodigoAtual write FCodigoAtual;
  end;

var
  DMPaiCadastro: TDMPaiCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDMConexao;

{$R *.dfm}

procedure TDMPaiCadastro.CDSCadastroBeforePost(DataSet: TDataSet);
begin
  if CDSCadastro.State = dsInsert then
    CDSCadastro.FieldByName(ClasseFilha.CampoChave).AsInteger := DMConexao.ProximoCodigo(ClasseFilha.TabelaPrincipal);
end;

procedure TDMPaiCadastro.CDSCadastroReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  CDSCadastro.Edit;
  raise Exception.Create('Erro: ' + E.Message);
end;

end.
