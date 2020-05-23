unit UnInicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, UCBase, UCDataConnector,
  UCFireDACConn;

type
  TfrmInicio = class(TForm)
    MainMenu1: TMainMenu;
    Seguranca1: TMenuItem;
    CadastrodeUsurios1: TMenuItem;
    TrocarSenha1: TMenuItem;
    N3: TMenuItem;
    Executarlogon1: TMenuItem;
    N2: TMenuItem;
    Mensagens1: TMenuItem;
    UCFireDACConn1: TUCFireDACConn;
    UCApplicationMessage1: TUCApplicationMessage;
    UserControl1: TUserControl;
    procedure Mensagens1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInicio: TfrmInicio;

implementation

uses UnDM_Inicio, UnBiblioteca, UnUser_Messages;

{$R *.dfm}

procedure TfrmInicio.Mensagens1Click(Sender: TObject);
begin
  //AbrirForm(TfrmUser_Messages, frmUser_Messages);

  UCApplicationMessage1.CheckMessages;
  UCApplicationMessage1.ShowMessages();
end;

end.
