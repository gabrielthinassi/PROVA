unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.PlatformDefaultStyleActnCtrls;

type
  TFPrincipal = class(TForm)
    ActionManager: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    acContato: TAction;
    acAgenda: TAction;
    procedure acContatoExecute(Sender: TObject);
    procedure acAgendaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UCadContato, UFAgenda;

procedure TFPrincipal.acAgendaExecute(Sender: TObject);
begin
  if FAgenda = nil then
    Application.CreateForm(TFAgenda, FAgenda);
  if not FAgenda.Showing then
    FAgenda.Show;
end;

procedure TFPrincipal.acContatoExecute(Sender: TObject);
begin
  if FCadContato = nil then
    Application.CreateForm(TFCadContato, FCadContato);
  if not FCadContato.Showing then
    FCadContato.Show;
end;

end.
