object frmSelectLoc: TfrmSelectLoc
  Left = 1504
  Top = 118
  Caption = 'Select a location'
  ClientHeight = 612
  ClientWidth = 193
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 193
    Height = 25
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 2
      Width = 3
      Height = 13
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 193
    Height = 587
    Align = alClient
    DataSource = DataSource1
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
        FieldName = 'LOCATION'
        Visible = True
      end>
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select distinct location from COMPUTERS'
      'where status < 3 order by location')
    Left = 64
    Top = 72
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = IBQuery1
    Left = 112
    Top = 104
  end
end
