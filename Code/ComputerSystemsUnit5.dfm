object frmRanking: TfrmRanking
  Left = 625
  Top = 115
  Caption = 'Computers listed by User'
  ClientHeight = 618
  ClientWidth = 856
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 41
    Align = alTop
    TabOrder = 0
    object Memo1: TMemo
      Left = 312
      Top = 0
      Width = 500
      Height = 40
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssVertical
      TabOrder = 0
      WordWrap = False
    end
    object Button1: TButton
      Left = 32
      Top = 8
      Width = 41
      Height = 25
      Caption = 'Export'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 856
    Height = 577
    Align = alClient
    DataSource = dsQryCompList
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SERIAL_NO'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODEL'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FULLNAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PSSWRD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCATION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTYPE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMMENTS'
        Visible = True
      end>
  end
  object qryCompList: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT a.serial_no, a.model,b.FULLNAME, c.PSSWRD, a.location, a.' +
        'CTYPE, a.COMMENTS'
      'from computers a'
      '  inner join COMP_USER b on a.SERIAL_NO = b.SERIAL_NO'
      '  inner join USERLIST c on b.FULLNAME = c.FULLNAME'
      'where a.LOCATION like '#39'SV-%'#39
      'and a.STATUS < 3'
      'order by a.location, b.FULLNAME')
    Left = 144
    Top = 64
  end
  object dsQryCompList: TDataSource
    AutoEdit = False
    DataSet = qryCompList
    Left = 192
    Top = 72
  end
end
