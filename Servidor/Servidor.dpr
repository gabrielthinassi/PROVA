program Servidor;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  USMConexao in 'USMConexao.pas' {SMConexao: TDSServerModule},
  USC in 'USC.pas' {SC: TDataModule},
  USMPaiCadastro in 'USMPaiCadastro.pas' {SMPaiCadastro: TDSServerModule},
  USMCadContato in 'USMCadContato.pas' {SMCadContato: TDSServerModule},
  USMCadCidade in 'USMCadCidade.pas' {SMCadCidade: TDSServerModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TSC, SC);
  Application.Run;
end.

