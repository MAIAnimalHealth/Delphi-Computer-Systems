object frmSelectSerialNo: TfrmSelectSerialNo
  Left = 547
  Top = 112
  Caption = 'Select device connected to the port'
  ClientHeight = 617
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 539
    Height = 73
    Align = alTop
    TabOrder = 0
    object lblSN71: TLabel
      Left = 120
      Top = 24
      Width = 37
      Height = 13
      Caption = 'lblSN71'
    end
  end
  object DBGrid71: TDBGrid
    Left = 0
    Top = 73
    Width = 539
    Height = 544
    Align = alClient
    DataSource = DataSource71
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid71DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'SERIAL_NO'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODEL'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERNAME'
        Width = 160
        Visible = True
      end>
  end
  object DataSource71: TDataSource
    AutoEdit = False
    DataSet = IBQuery71
    Left = 264
    Top = 136
  end
  object IBQuery71: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.serial_no, a.model, c.username'
      'from computers a'
      ' left join comp_user b on a.serial_no = b.serial_no'
      ' left join userlist c on b.fullname = c.fullname'
      'order by c.username')
    Left = 208
    Top = 136
  end
end
