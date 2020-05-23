object DM_Inicio: TDM_Inicio
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 90
  Width = 112
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\Database\SISTEMA.User_Control\DATABASE.FDB'
      'CharacterSet=iSO8859_1'
      'Port=3050'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 24
  end
end
