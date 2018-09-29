unit UPaiConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, UDMPaiCadastro;

type
  TFPaiConsulta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cbCampo: TComboBox;
    cbOpcoes: TComboBox;
    editParametro: TEdit;
    JvDBGrid1: TJvDBGrid;
    DS: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
  private
    FDMConsulta: TDMPaiCadastro;
  public
    Codigo: Integer;
    property DMConsulta: TDMPaiCadastro read FDMConsulta write FDMConsulta;
  end;

var
  FPaiConsulta: TFPaiConsulta;

implementation

{$R *.dfm}

end.
