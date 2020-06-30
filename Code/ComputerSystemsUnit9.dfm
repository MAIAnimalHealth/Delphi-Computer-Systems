object frmIdList: TfrmIdList
  Left = 1521
  Top = 117
  Caption = 'Select ID'
  ClientHeight = 461
  ClientWidth = 193
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 193
    Height = 45
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Locate:'
    end
    object Label2: TLabel
      Left = 140
      Top = 2
      Width = 47
      Height = 39
      Alignment = taCenter
      Caption = 'Double click to select'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Edit1: TEdit
      Left = 16
      Top = 22
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyUp = Edit1KeyUp
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 45
    Width = 193
    Height = 296
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
        FieldName = 'ID'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 341
    Width = 193
    Height = 120
    Align = alBottom
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select Lineno, ID from COMP_MALWRE'
      'order by id')
    Left = 48
    Top = 128
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = IBQuery1
    Left = 96
    Top = 136
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      'select a.fullname'
      'from comp_user a'
      ' inner join computers b on b.serial_no = a.serial_no'
      'where b.lineno_malwre = :lineno')
    Left = 72
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lineno'
        ParamType = ptUnknown
      end>
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = IBQuery2
    Left = 104
    Top = 456
  end
end
