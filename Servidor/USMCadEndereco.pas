unit USMCadEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, USMPaiCadastro, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TSMPaiCadastro1 = class(TSMPaiCadastro)
    SQLDSCadastroAUTOINC_ENDERECO: TIntegerField;
    SQLDSCadastroCONTATO_ENDERECO: TIntegerField;
    SQLDSCadastroDESCRICAO_ENDERECO: TStringField;
    SQLDSCadastroNUMERO_ENDERECO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SMPaiCadastro1: TSMPaiCadastro1;

implementation

{$R *.dfm}

uses USMConexao;

end.
