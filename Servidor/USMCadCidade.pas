unit USMCadCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, USMPaiCadastro, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TSMCadCidade = class(TSMPaiCadastro)
    SQLDSCadastroCODIGO_CIDADE: TIntegerField;
    SQLDSCadastroNOME_CIDADE: TStringField;
    SQLDSConsultaCODIGO_CIDADE: TIntegerField;
    SQLDSConsultaNOME_CIDADE: TStringField;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SMCadCidade: TSMCadCidade;

implementation

{$R *.dfm}

uses USMConexao;

procedure TSMCadCidade.DSServerModuleCreate(Sender: TObject);
begin
  SMConexao := TSMConexao.Create(Self);
  inherited;

end;

end.
