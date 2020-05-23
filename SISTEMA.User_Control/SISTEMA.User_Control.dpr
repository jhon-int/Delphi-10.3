program SISTEMA.User_Control;

uses
  Vcl.Forms,
  UnInicio in 'Views\UnInicio.pas' {frmInicio},
  UnDM_Inicio in 'Modules\UnDM_Inicio.pas' {DM_Inicio: TDataModule},
  UnUser_Messages in 'Views\UnUser_Messages.pas' {frmUser_Messages},
  UnBiblioteca in 'Controllers\UnBiblioteca.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Inicio, DM_Inicio);
  Application.CreateForm(TfrmInicio, frmInicio);
  Application.CreateForm(TfrmUser_Messages, frmUser_Messages);
  Application.Run;

end.
