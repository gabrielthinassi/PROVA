unit UFAgenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls;

type
  TFAgenda = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    CDS: TClientDataSet;
    DS: TDataSource;
    CDSNOME: TStringField;
    CDSTELEFONE: TStringField;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAgenda: TFAgenda;

implementation

{$R *.dfm}

procedure TFAgenda.BitBtn1Click(Sender: TObject);
begin
  CDS.FindNearest([Edit2.Text]);
  //CDS.Locate('NOME',Edit2.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TFAgenda.Button1Click(Sender: TObject);
begin
  CDS.Post;
end;

procedure TFAgenda.Button2Click(Sender: TObject);
begin
  CDS.LoadFromFile(Edit1.Text);
end;

procedure TFAgenda.Button3Click(Sender: TObject);
begin
  if not CDS.Active then
    CDS.Open;
  CDS.Insert;
end;

procedure TFAgenda.Button4Click(Sender: TObject);
begin
  CDS.SaveToFile(Edit1.Text, dfXML);
  CDS.Close;
  Close;
end;

procedure TFAgenda.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
    CDS.IndexFieldNames := 'NOME'
  else
    CDS.IndexFieldNames := 'TELEFONE';
  CDS.Close;
  CDS.Open;
end;

end.
