unit UConsultaContato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFConsultaContato = class(TFPaiConsulta)
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaContato: TFConsultaContato;

implementation

{$R *.dfm}

uses UDMCadContato;

procedure TFConsultaContato.BitBtn1Click(Sender: TObject);
var
  Campo, Conteudo, SQL: String;
begin
  inherited;

  case cbCampo.ItemIndex of
    0: Campo := 'CODIGO_CONTATO';
    1: Campo := 'NOME_CONTATO';
  end;

  case cbOpcoes.ItemIndex of
    0: Conteudo := '(''' + editParametro.Text + '%'')';   // Iniciado
    1: Conteudo := '(''%' + editParametro.Text + ''')';   // Terminado
    2: Conteudo := '(''' + editParametro.Text + ''')';    // Igual a
    3: Conteudo := '(''%' + editParametro.Text + '%'')';  // Que Contém
  end;

  SQL := 'select CONTATO.CODIGO_CONTATO, ' + #13 +
         '       CONTATO.NOME_CONTATO ' + #13 +
         'from CONTATO ';

  with DMConsulta, CDSConsulta do
  begin
    Close;
    IndexFieldNames := Campo;
    CommandText := SQL + ' where ' + Campo + ' like ' + Conteudo;
    Open;
    DS.DataSet := DMConsulta.CDSConsulta;
  end;

end;

procedure TFConsultaContato.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Codigo := DS.DataSet.FieldByName('CODIGO_CONTATO').AsInteger;
  Close;
end;

procedure TFConsultaContato.FormCreate(Sender: TObject);
begin
  DMConsulta := TDMCadContato.Create(Self);
  inherited;

end;

end.
