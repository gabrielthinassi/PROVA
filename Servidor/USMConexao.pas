unit USMConexao;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  Data.DB, Datasnap.DBClient, Data.DBXFirebird, Data.SqlExpr, Data.FMTBcd,
  Datasnap.Provider;

type
  TSMConexao = class(TDSServerModule)
    SQLConexaoBanco: TSQLConnection;
    SQLDSProximoCodigo: TSQLDataSet;
    DSPProximoCodigo: TDataSetProvider;
    CDSProximoCodigo: TClientDataSet;
    SQLDSExecuteReader: TSQLDataSet;
    DSPExecuteReader: TDataSetProvider;
    CDSExecuteReader: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
    function ProximoCodigo(Tabela: String): Integer;
    function ExecuteReader(SQL: String): OleVariant;
  end;

implementation


{$R *.dfm}


{ TServerMethods1 }


{ TSMConexao }

function TSMConexao.ExecuteReader(SQL: String): OleVariant;
begin

  with CDSExecuteReader do
  begin

    try
      Close;
      CommandText := SQL;
      Open;

      Result := Data;

    except on E: Exception do
      raise Exception.Create('Erro ao executar comando. Erro: ' + E.Message);
    end;
  end;

end;

function TSMConexao.ProximoCodigo(Tabela: String): Integer;
begin

  with CDSProximoCodigo do
  begin
    Close;
    CommandText := 'select gen_id(GEN_' + Tabela + '_ID, 1) as CODIGO from RDB$DATABASE';
    Open;

    if not CDSProximoCodigo.IsEmpty then
      Result := FieldByName('CODIGO').AsInteger
    else
      raise Exception.Create('Não foi possível buscar o próximo código.');
  end;

end;

end.

