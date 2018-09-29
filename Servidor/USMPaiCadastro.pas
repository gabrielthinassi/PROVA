unit USMPaiCadastro;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, 
  Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Data.SqlExpr, USMConexao;

type
  TSMPaiCadastro = class(TDSServerModule)
    SQLDSCadastro: TSQLDataSet;
    DSPCadastro: TDataSetProvider;
    SQLDSConsulta: TSQLDataSet;
    DSPConsulta: TDataSetProvider;
  private
    FSMConexao: TSMConexao;
  public
    property SMConexao: TSMConexao read FSMConexao write FSMConexao;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

