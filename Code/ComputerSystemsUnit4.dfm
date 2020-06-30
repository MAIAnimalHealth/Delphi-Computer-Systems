object frmSelectUser: TfrmSelectUser
  Left = 1169
  Top = 114
  ActiveControl = Edit1
  Caption = 'Select a user'
  ClientHeight = 388
  ClientWidth = 193
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 193
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 32
      Height = 13
      Caption = 'cancel'
      Visible = False
    end
    object Button1: TButton
      Left = 144
      Top = 8
      Width = 49
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 16
      Top = 8
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyUp = Edit1KeyUp
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 193
    Height = 347
    Align = alClient
    DataSource = dsSelectUsername
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'FULLNAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIAL_NO'
        Visible = False
      end>
  end
  object qrySelectUsername: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.FULLNAME, a.SERIAL_NO'
      
        'from COMP_USER a inner join computers b on a.SERIAL_NO = b.SERIA' +
        'L_NO'
      'where b.status < 3 order by a.fullname')
    Left = 64
    Top = 144
  end
  object dsSelectUsername: TDataSource
    AutoEdit = False
    DataSet = qrySelectUsername
    Left = 128
    Top = 168
  end
end
