unit UDMConexao;

interface

uses
  System.SysUtils, System.Classes, UCC, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Data.DB, Data.SqlExpr;

type
  TDMConexao = class(TDataModule)
    SQLConexaoBanco: TSQLConnection;
  private
    FInstanceOwner: Boolean;
    FSMConexaoClient: TSMConexaoClient;
    FSMCadContatoClient: TSMCadContatoClient;
    function GetSMConexaoClient: TSMConexaoClient;
    function GetSMCadContatoClient: TSMCadContatoClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function ProximoCodigo(Tabela: String): Integer;
    function ExecuteReader(SQL: String): OleVariant;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property SMConexaoClient: TSMConexaoClient read GetSMConexaoClient write FSMConexaoClient;
    property SMCadContatoClient: TSMCadContatoClient read GetSMCadContatoClient write FSMCadContatoClient;

end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

constructor TDMConexao.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TDMConexao.Destroy;
begin
  FSMConexaoClient.Free;
  FSMCadContatoClient.Free;
  inherited;
end;

function TDMConexao.ExecuteReader(SQL: String): OleVariant;
begin
  Result := GetSMConexaoClient.ExecuteReader(SQL);
end;

function TDMConexao.GetSMConexaoClient: TSMConexaoClient;
begin
  if FSMConexaoClient = nil then
  begin
    SQLConexaoBanco.Open;
    FSMConexaoClient:= TSMConexaoClient.Create(SQLConexaoBanco.DBXConnection, FInstanceOwner);
  end;
  Result := FSMConexaoClient;
end;

function TDMConexao.ProximoCodigo(Tabela: String): Integer;
begin
  Result := GetSMConexaoClient.ProximoCodigo(Tabela);
end;

function TDMConexao.GetSMCadContatoClient: TSMCadContatoClient;
begin
  if FSMCadContatoClient = nil then
  begin
    SQLConexaoBanco.Open;
    FSMCadContatoClient:= TSMCadContatoClient.Create(SQLConexaoBanco.DBXConnection, FInstanceOwner);
  end;
  Result := FSMCadContatoClient;
end;

end.
