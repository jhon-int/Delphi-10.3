object frmUser_Messages: TfrmUser_Messages
  Left = 0
  Top = 0
  Caption = 'frmUser_Messages'
  ClientHeight = 510
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 495
    Height = 510
    Align = alClient
    DataSource = DataSource1
    PanelHeight = 51
    PanelWidth = 478
    TabOrder = 0
    RowCount = 10
    ExplicitWidth = 900
    ExplicitHeight = 3130
    object DBText1: TDBText
      Left = 260
      Top = 20
      Width = 11
      Height = 1
      DataSource = DataSource1
    end
    object lblNome: TDBText
      Left = 10
      Top = 4
      Width = 287
      Height = 17
      Anchors = []
      DataField = 'SUBJECT'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMessages: TDBText
      Left = 10
      Top = 29
      Width = 431
      Height = 17
      Anchors = []
      DataField = 'MSG'
      DataSource = DataSource1
    end
    object lblDataHora: TDBText
      Left = 343
      Top = 6
      Width = 98
      Height = 17
      Anchors = []
      DataField = 'DTSEND'
      DataSource = DataSource1
    end
  end
  object FDQuery1: TFDQuery
    Connection = DM_Inicio.FDConnection1
    SQL.Strings = (
      'SELECT *'
      '  FROM UCTABMESSAGES  ')
    Left = 440
    Top = 150
    object FDQuery1IDMSG: TIntegerField
      FieldName = 'IDMSG'
      Origin = 'IDMSG'
    end
    object FDQuery1USRFROM: TIntegerField
      FieldName = 'USRFROM'
      Origin = 'USRFROM'
    end
    object FDQuery1USRTO: TIntegerField
      FieldName = 'USRTO'
      Origin = 'USRTO'
    end
    object FDQuery1SUBJECT: TStringField
      FieldName = 'SUBJECT'
      Origin = 'SUBJECT'
      Size = 50
    end
    object FDQuery1MSG: TStringField
      FieldName = 'MSG'
      Origin = 'MSG'
      Size = 255
    end
    object FDQuery1DTSEND: TStringField
      FieldName = 'DTSEND'
      Origin = 'DTSEND'
      EditMask = '!99/99/00;1;_'
      Size = 12
    end
    object FDQuery1DTRECEIVE: TStringField
      FieldName = 'DTRECEIVE'
      Origin = 'DTRECEIVE'
      Size = 12
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 440
    Top = 205
  end
end
