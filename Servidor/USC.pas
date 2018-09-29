unit USC;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSTCPServerTransport,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSAuth, IPPeerServer;

type
  TSC = class(TDataModule)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSSC_SMConexao: TDSServerClass;
    DSSC_SMCadContato: TDSServerClass;
    procedure DSSC_SMConexaoGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSSC_SMCadContatoGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
  private
    { Private declarations }
  public
  end;

var
  SC: TSC;

implementation


{$R *.dfm}

uses Winapi.Windows, USMConexao, USMCadContato;

procedure TSC.DSSC_SMCadContatoGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass := USMCadContato.TSMCadContato;
end;

procedure TSC.DSSC_SMConexaoGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := USMConexao.TSMConexao;
end;


end.

