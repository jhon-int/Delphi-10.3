object frmInicio: TfrmInicio
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'frmInicio'
  ClientHeight = 475
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 120
    Top = 32
    object Seguranca1: TMenuItem
      Caption = 'In'#237'cio'
      object CadastrodeUsurios1: TMenuItem
        Caption = 'Cadastro de Usu'#225'rios'
      end
      object TrocarSenha1: TMenuItem
        Caption = 'Trocar Senha'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Executarlogon1: TMenuItem
        Caption = 'Conectar com outro usu'#225'rio...'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Mensagens1: TMenuItem
        Caption = 'Mensagens'
        OnClick = Mensagens1Click
      end
    end
  end
  object UCFireDACConn1: TUCFireDACConn
    Connection = DM_Inicio.FDConnection1
    Left = 120
    Top = 88
  end
  object UCApplicationMessage1: TUCApplicationMessage
    Active = True
    Interval = 60000
    TableMessages = 'UCTABMESSAGES'
    UserControl = UserControl1
    Left = 240
    Top = 32
  end
  object UserControl1: TUserControl
    AutoStart = True
    ApplicationID = 'SISTEMA.User_Control'
    ControlRight.MainMenu = MainMenu1
    User.MenuItem = CadastrodeUsurios1
    UserPasswordChange.MenuItem = TrocarSenha1
    UsersLogoff.MenuItem = Executarlogon1
    LogControl.TableLog = 'UCLog'
    Language = ucPortuguesBr
    EncryptKey = 0
    Login.InitialLogin.User = 'Admin'
    Login.InitialLogin.Email = 'teste@teste.com.br'
    Login.InitialLogin.Password = '654321'
    Login.MaxLoginAttempts = 0
    ExtraRights = <
      item
        FormName = 'FrmCliente'
        CompName = 'BtnIncluir'
        Caption = 'Incluir'
        GroupName = 'Tela de Clientes'
      end
      item
        FormName = 'FrmCliente'
        CompName = 'BtnAlterar'
        Caption = 'Alterar'
        GroupName = 'Tela de Clientes'
      end
      item
        FormName = 'FrmCliente'
        CompName = 'BtnExcluir'
        Caption = 'Excluir'
        GroupName = 'Tela de Clientes'
      end>
    TableUsers.FieldUserID = 'UCIdUser'
    TableUsers.FieldUserName = 'UCUserName'
    TableUsers.FieldLogin = 'UCLogin'
    TableUsers.FieldPassword = 'UCPassword'
    TableUsers.FieldEmail = 'UCEmail'
    TableUsers.FieldPrivileged = 'UCPrivileged'
    TableUsers.FieldTypeRec = 'UCTypeRec'
    TableUsers.FieldProfile = 'UCProfile'
    TableUsers.FieldKey = 'UCKey'
    TableUsers.FieldDateExpired = 'UCPASSEXPIRED'
    TableUsers.FieldUserExpired = 'UCUserExpired'
    TableUsers.FieldUserDaysSun = 'UCUserDaysSun'
    TableUsers.FieldUserInative = 'UCInative'
    TableUsers.TableName = 'UCTabUsers'
    TableUsers.FieldImage = 'UCImage'
    TableRights.FieldUserID = 'UCIdUser'
    TableRights.FieldModule = 'UCModule'
    TableRights.FieldComponentName = 'UCCompName'
    TableRights.FieldFormName = 'UCFormName'
    TableRights.FieldKey = 'UCKey'
    TableRights.TableName = 'UCTabRights'
    TableUsersLogged.FieldLogonID = 'UCIdLogon'
    TableUsersLogged.FieldUserID = 'UCIdUser'
    TableUsersLogged.FieldApplicationID = 'UCApplicationId'
    TableUsersLogged.FieldMachineName = 'UCMachineName'
    TableUsersLogged.FieldData = 'UCData'
    TableUsersLogged.TableName = 'UCTabUsersLogged'
    DataConnector = UCFireDACConn1
    Left = 184
    Top = 32
  end
end
