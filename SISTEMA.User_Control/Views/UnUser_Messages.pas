unit UnUser_Messages;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.DBCGrids, Vcl.ExtCtrls;

type
  TfrmUser_Messages = class(TForm)
    FDQuery1: TFDQuery;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DataSource1: TDataSource;
    FDQuery1IDMSG: TIntegerField;
    FDQuery1USRFROM: TIntegerField;
    FDQuery1USRTO: TIntegerField;
    FDQuery1SUBJECT: TStringField;
    FDQuery1MSG: TStringField;
    FDQuery1DTSEND: TStringField;
    FDQuery1DTRECEIVE: TStringField;
    lblNome: TDBText;
    lblMessages: TDBText;
    lblDataHora: TDBText;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser_Messages: TfrmUser_Messages;

implementation

uses UnDM_Inicio;

{$R *.dfm}

procedure TfrmUser_Messages.FormShow(Sender: TObject);
begin
 FDQuery1.Open();
end;

end.
