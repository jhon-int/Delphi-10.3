unit UnBiblioteca;

interface

uses Forms, System.Classes, System.SysUtils;

procedure AbrirForm(aClasseForm: TComponentClass; var aForm);

implementation

procedure AbrirForm(aClasseForm: TComponentClass; var aForm);
begin
  Application.CreateForm(aClasseForm,aForm);

  try
    Tform(aForm).ShowModal;
  finally
    FreeAndNil(Tform(aForm));
  end;
end;

end.
