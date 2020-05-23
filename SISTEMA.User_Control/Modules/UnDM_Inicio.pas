unit UnDM_Inicio;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Stan.StorageJSON, Forms;

type
  TDM_Inicio = class(TDataModule)
    FDConnection1: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Inicio: TDM_Inicio;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDM_Inicio.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Close;
  // FDConnection1.Params.Database := ExtractFilePath(Application.ExeName) + '..\..\Datase\SISTEMA.User_Control\DATABASE.FDB';
  FDConnection1.Params.Database :=
    'C:\Projetos\Database\SISTEMA.User_Control\DATABASE.FDB';
  FDConnection1.Open;
end;

end.
