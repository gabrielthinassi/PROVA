unit ClassContato;

interface

uses ClassPaiCadastro;

type
  TClassContato = class(TClassPaiCadastro)
    public
      class function TabelaPrincipal: String; override;
      class function CampoChave: String; override;
  end;

implementation

{ TClassContato }

class function TClassContato.CampoChave: String;
begin
  Result := 'CODIGO_CONTATO';
end;

class function TClassContato.TabelaPrincipal: String;
begin
  Result := 'CONTATO';
end;

end.
