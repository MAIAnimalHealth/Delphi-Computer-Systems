object frmProcessor: TfrmProcessor
  Left = 942
  Top = 115
  Caption = 'Select or add a processor'
  ClientHeight = 452
  ClientWidth = 337
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
    Width = 337
    Height = 36
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Locate:'
    end
    object Label2: TLabel
      Left = 248
      Top = 2
      Width = 71
      Height = 32
      Alignment = taCenter
      Caption = 'Check processor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = Label2Click
    end
    object Edit1: TEdit
      Left = 48
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnAddNew: TButton
      Left = 176
      Top = 8
      Width = 55
      Height = 21
      Caption = 'Add new'
      TabOrder = 1
      OnClick = btnAddNewClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 411
    Width = 337
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label3: TLabel
      Left = 112
      Top = 16
      Width = 139
      Height = 13
      Caption = 'Double click on item to select'
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 36
    Width = 337
    Height = 375
    Align = alClient
    DataSource = dsGetProcessor
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'PROCESSOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LINENO'
        Visible = False
      end>
  end
  object qryGetProcessor: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select PROCESSOR, LINENO from COMPUTERS_CPU order by processor')
    Left = 168
    Top = 184
  end
  object dsGetProcessor: TDataSource
    AutoEdit = False
    DataSet = qryGetProcessor
    Left = 184
    Top = 200
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 104
    Top = 296
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = IBQuery1
    Left = 120
    Top = 312
  end
end
