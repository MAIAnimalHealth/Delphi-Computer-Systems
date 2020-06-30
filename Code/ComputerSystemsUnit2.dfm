object frmUsers: TfrmUsers
  Left = 929
  Top = 117
  Caption = 'Select User'
  ClientHeight = 413
  ClientWidth = 221
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 221
    Height = 50
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Locate:'
    end
    object Edit1: TEdit
      Left = 24
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyUp = Edit1KeyUp
    end
    object Button1: TButton
      Left = 152
      Top = 24
      Width = 45
      Height = 21
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 50
    Width = 221
    Height = 363
    Align = alClient
    DataSource = dsQryUsers
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
      end>
  end
  object qryUsers: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select LINENO, FULLNAME from USERLIST'
      'order by fullname')
    Left = 112
    Top = 128
  end
  object dsQryUsers: TDataSource
    DataSet = qryUsers
    Left = 144
    Top = 136
  end
end
