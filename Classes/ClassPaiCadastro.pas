unit ClassPaiCadastro;

interface

uses Classes, DB;

type
  TClassPaiCadastro = class(TPersistent)
    public
      class function TabelaPrincipal: String; virtual;
      class function CampoChave: String; virtual;
  end;

  TFClassPaiCadastro = class of TClassPaiCadastro;

implementation

{ TClassPaiCadastro }

class function TClassPaiCadastro.CampoChave: String;
begin
  Result := '';
end;

class function TClassPaiCadastro.TabelaPrincipal: String;
begin
  Result := '';
end;

end.
