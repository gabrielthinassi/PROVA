unit UCadContato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPaiCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.Buttons, Vcl.ExtCtrls, UDMCadContato,
  Vcl.DBCtrls, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ComCtrls;

type
  TFCadContato = class(TFPaiCadastro)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    DSTelefones: TDataSource;
    TabSheet2: TTabSheet;
    JvDBGrid2: TJvDBGrid;
    DSEnderecos: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BotaoConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadContato: TFCadContato;

implementation

{$R *.dfm}

uses UConsultaContato;

procedure TFCadContato.BotaoConsultarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFConsultaContato, FConsultaContato);
  FConsultaContato.ShowModal;
  if FConsultaContato.Codigo > 0 then
  begin
    editCodigo.SetFocus;
    editCodigo.Text := IntToStr(FConsultaContato.Codigo);
    BotaoIncluir.SetFocus;
  end;
  FreeAndNil(FConsultaContato);
end;

procedure TFCadContato.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  inherited;

  if Assigned(FCadContato) then
    FreeAndNil(FCadContato);

end;

procedure TFCadContato.FormCreate(Sender: TObject);
begin
  DMCadastro := TDMCadContato.Create(Self);
  DMCadastro.CodigoAtual := 0;

  inherited;

end;

end.
