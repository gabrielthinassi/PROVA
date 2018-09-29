program Cliente;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UPai in 'UPai.pas' {FPai},
  UPaiCadastro in 'UPaiCadastro.pas' {FPaiCadastro},
  UCadContato in 'UCadContato.pas' {FCadContato},
  UCC in 'UCC.pas',
  UDMConexao in 'UDMConexao.pas' {DMConexao: TDataModule},
  UDMPaiCadastro in 'UDMPaiCadastro.pas' {DMPaiCadastro: TDataModule},
  UDMCadContato in 'UDMCadContato.pas' {DMCadContato: TDataModule},
  ClassContato in '..\Classes\ClassContato.pas',
  ClassPaiCadastro in '..\Classes\ClassPaiCadastro.pas',
  UPaiConsulta in 'UPaiConsulta.pas' {FPaiConsulta},
  UConsultaContato in 'UConsultaContato.pas' {FConsultaContato},
  UFAgenda in 'UFAgenda.pas' {FAgenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFAgenda, FAgenda);
  Application.Run;
end.
