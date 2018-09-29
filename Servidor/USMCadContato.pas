unit USMCadContato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, USMPaiCadastro, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TSMCadContato = class(TSMPaiCadastro)
    SQLDSCadastroCODIGO_CONTATO: TIntegerField;
    SQLDSCadastroNOME_CONTATO: TStringField;
    SQLDSConsultaCODIGO_CONTATO: TIntegerField;
    SQLDSConsultaNOME_CONTATO: TStringField;
    SQLDSTelefones: TSQLDataSet;
    DSTelefones: TDataSource;
    SQLDSTelefonesAUTOINC_TEL: TIntegerField;
    SQLDSTelefonesCONTATO_TEL: TIntegerField;
    SQLDSTelefonesTELEFONE_TEL: TStringField;
    DSEndereco: TDataSource;
    SQLDSEnderecos: TSQLDataSet;
    SQLDSEnderecosAUTOINC_ENDERECO: TIntegerField;
    SQLDSEnderecosCONTATO_ENDERECO: TIntegerField;
    SQLDSEnderecosDESCRICAO_ENDERECO: TStringField;
    SQLDSEnderecosNUMERO_ENDERECO: TIntegerField;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SMCadContato: TSMCadContato;

implementation

{$R *.dfm}

uses USMConexao;

procedure TSMCadContato.DSServerModuleCreate(Sender: TObject);
begin
  SMConexao := TSMConexao.Create(Self);
  inherited;

end;

end.
