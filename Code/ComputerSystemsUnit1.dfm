object frmComputerSystems: TfrmComputerSystems
  Left = 205
  Top = 117
  Caption = 'Genesis Industries Computer Systems'
  ClientHeight = 618
  ClientWidth = 861
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pg1: TPageControl
    Left = 0
    Top = 0
    Width = 861
    Height = 618
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = pg1Change
    object TabSheet1: TTabSheet
      Caption = 'Computers'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 853
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 36
          Height = 13
          Caption = 'Locate:'
        end
        object Label10: TLabel
          Left = 24
          Top = 38
          Width = 36
          Height = 13
          Caption = 'Locate:'
        end
        object Edit2: TEdit
          Left = 50
          Top = 5
          Width = 201
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyUp = Edit2KeyUp
        end
        object btnCompInfo: TButton
          Left = 766
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Info'
          TabOrder = 1
          OnClick = btnCompInfoClick
        end
        object RadioGroup1: TRadioGroup
          Left = 326
          Top = 2
          Width = 200
          Height = 50
          Caption = 'Status'
          Columns = 3
          Items.Strings = (
            'Active'
            'Replace'
            'UTD'
            'Dead'
            'In Use'
            'All')
          TabOrder = 2
          OnClick = RadioGroup1Click
        end
      end
      object Panel2: TPanel
        Left = 320
        Top = 57
        Width = 533
        Height = 533
        Align = alClient
        TabOrder = 1
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 531
          Height = 432
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 48
            Top = 8
            Width = 32
            Height = 13
            Alignment = taRightJustify
            Caption = 'Model:'
          end
          object Label2: TLabel
            Left = 53
            Top = 32
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Type:'
          end
          object Label3: TLabel
            Left = 62
            Top = 56
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Caption = 'OS:'
          end
          object Label4: TLabel
            Left = 36
            Top = 83
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Location:'
          end
          object Label8: TLabel
            Left = 28
            Top = 140
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Comments:'
          end
          object Label9: TLabel
            Left = 301
            Top = 10
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'RAM:'
          end
          object Label11: TLabel
            Left = 184
            Top = 323
            Width = 25
            Height = 13
            Caption = 'User:'
          end
          object Label24: TLabel
            Left = 17
            Top = 191
            Width = 25
            Height = 13
            Caption = 'CPU:'
          end
          object Label22: TLabel
            Left = 416
            Top = 194
            Width = 45
            Height = 13
            Caption = 'Acquired:'
          end
          object Label32: TLabel
            Left = 408
            Top = 21
            Width = 112
            Height = 20
            Caption = 'MalwareBytes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label33: TLabel
            Left = 416
            Top = 47
            Width = 14
            Height = 13
            Caption = 'ID:'
            Visible = False
          end
          object Label34: TLabel
            Left = 416
            Top = 95
            Width = 21
            Height = 13
            Caption = 'Key:'
            Visible = False
          end
          object Label35: TLabel
            Left = 416
            Top = 143
            Width = 54
            Height = 13
            Caption = 'Purchased:'
            Visible = False
          end
          object DBText2: TDBText
            Left = 408
            Top = 72
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'ID'
            DataSource = dsQryComputers
            Visible = False
          end
          object DBText4: TDBText
            Left = 408
            Top = 162
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'PURCHASED'
            DataSource = dsQryComputers
            Visible = False
          end
          object DBText5: TDBText
            Left = 408
            Top = 210
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'BOUGHT'
            DataSource = dsQryComputers
          end
          object Label36: TLabel
            Left = 416
            Top = 226
            Width = 58
            Height = 13
            Caption = 'PO Number:'
          end
          object DBText6: TDBText
            Left = 408
            Top = 242
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'PO_NUM'
            DataSource = dsQryComputers
          end
          object DBText7: TDBText
            Left = 408
            Top = 274
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'QUOTE_NO'
            DataSource = dsQryComputers
          end
          object DBText8: TDBText
            Left = 408
            Top = 306
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'COST'
            DataSource = dsQryComputers
          end
          object Label37: TLabel
            Left = 416
            Top = 258
            Width = 72
            Height = 13
            Caption = 'Quote Number:'
          end
          object Label38: TLabel
            Left = 416
            Top = 290
            Width = 24
            Height = 13
            Caption = 'Cost:'
          end
          object Label39: TLabel
            Left = 416
            Top = 325
            Width = 92
            Height = 13
            Caption = 'Replacement Date:'
          end
          object DBText9: TDBText
            Left = 408
            Top = 340
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'REPLACE'
            DataSource = dsQryComputers
          end
          object Label5: TLabel
            Left = 17
            Top = 266
            Width = 57
            Height = 13
            Caption = 'Status date:'
          end
          object Label6: TLabel
            Left = 1
            Top = 114
            Width = 79
            Height = 13
            Alignment = taRightJustify
            Caption = 'Computer Name:'
          end
          object DBEdit7: TDBEdit
            Left = 344
            Top = 114
            Width = 177
            Height = 21
            DataField = 'KEY'
            DataSource = dsQryComputers
            TabOrder = 9
            Visible = False
          end
          object DBEdit1: TDBEdit
            Left = 96
            Top = 8
            Width = 201
            Height = 21
            DataField = 'MODEL'
            DataSource = dsQryComputers
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 96
            Top = 32
            Width = 201
            Height = 21
            DataField = 'CTYPE'
            DataSource = dsQryComputers
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 96
            Top = 56
            Width = 200
            Height = 21
            DataField = 'OS'
            DataSource = dsQryComputers
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 96
            Top = 83
            Width = 201
            Height = 21
            DataField = 'LOCATION'
            DataSource = dsQryComputers
            ReadOnly = True
            TabOrder = 3
          end
          object DBMemo1: TDBMemo
            Left = 96
            Top = 137
            Width = 201
            Height = 41
            DataField = 'COMMENTS'
            DataSource = dsQryComputers
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit6: TDBEdit
            Left = 320
            Top = 24
            Width = 50
            Height = 21
            DataField = 'RAM'
            DataSource = dsQryComputers
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit15: TDBEdit
            Left = 67
            Top = 184
            Width = 247
            Height = 21
            DataField = 'PROCESSOR'
            DataSource = dsCPU
            TabOrder = 6
          end
          object DBRadioGroup5: TDBRadioGroup
            Left = 28
            Top = 340
            Width = 65
            Height = 55
            Caption = 'Leased'
            DataField = 'LEASED'
            DataSource = dsQryComputers
            Items.Strings = (
              'Yes'
              'No')
            TabOrder = 7
            Values.Strings = (
              '0'
              '1')
          end
          object DBGrid7: TDBGrid
            Left = 215
            Top = 326
            Width = 169
            Height = 100
            DataSource = dsQryCompUser
            TabOrder = 8
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'FULLNAME'
                Visible = True
              end>
          end
          object btnChangeReplaceDate: TButton
            Left = 416
            Top = 359
            Width = 50
            Height = 25
            Caption = 'Change'
            TabOrder = 10
            OnClick = btnChangeReplaceDateClick
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 5
            Top = 210
            Width = 309
            Height = 50
            Caption = 'Status'
            Columns = 4
            DataField = 'STATUS'
            DataSource = dsQryComputers
            Items.Strings = (
              'Active'
              'Replace'
              'UTD'
              'Dead')
            TabOrder = 11
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
          object DBEdit5: TDBEdit
            Left = 80
            Top = 266
            Width = 201
            Height = 21
            DataField = 'RDATE'
            DataSource = dsQryComputers
            ReadOnly = True
            TabOrder = 12
          end
          object DBEdit8: TDBEdit
            Left = 96
            Top = 110
            Width = 201
            Height = 21
            DataField = 'COMPNAME'
            DataSource = dsQryComputers
            ReadOnly = True
            TabOrder = 13
          end
          object Change_Name: TButton
            Left = 300
            Top = 110
            Width = 35
            Height = 21
            Caption = 'Name'
            TabOrder = 14
            OnClick = Change_NameClick
          end
        end
        object DBMemo2: TDBMemo
          Left = 1
          Top = 433
          Width = 531
          Height = 99
          Align = alClient
          DataField = 'COMMENTS'
          DataSource = dsQryCust_LST
          TabOrder = 1
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 57
        Width = 320
        Height = 533
        Align = alLeft
        DataSource = dsQryComputers
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SERIAL_NO'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Software'
      ImageIndex = 1
      object DBText1: TDBText
        Left = 8
        Top = 56
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'MODEL'
        DataSource = dsSoftComp
      end
      object Label13: TLabel
        Left = 240
        Top = 64
        Width = 39
        Height = 13
        Caption = 'Add info'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        OnDblClick = Label13DblClick
      end
      object Label29: TLabel
        Left = 31
        Top = 80
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'Title:'
      end
      object Label30: TLabel
        Left = 4
        Top = 104
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Install key:'
      end
      object Label31: TLabel
        Left = 19
        Top = 128
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'Installs:'
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 853
        Height = 49
        Align = alTop
        TabOrder = 0
        object editSerialNumber: TEdit
          Left = 8
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object editUserName: TEdit
          Left = 184
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 1
        end
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 160
        Width = 435
        Height = 442
        DataSource = dsSoftComp
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'MODEL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KEY'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSTALLS'
            Title.Caption = 'Installs'
            Width = 40
            Visible = True
          end>
      end
      object Edit3: TEdit
        Left = 64
        Top = 80
        Width = 265
        Height = 21
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 64
        Top = 104
        Width = 200
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object Edit5: TEdit
        Left = 64
        Top = 128
        Width = 45
        Height = 21
        TabOrder = 4
      end
      object ListBox1: TListBox
        Left = 508
        Top = 49
        Width = 345
        Height = 541
        Align = alRight
        ItemHeight = 13
        TabOrder = 5
        OnDblClick = ListBox1DblClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Data Entry'
      ImageIndex = 2
      object Label15: TLabel
        Left = 16
        Top = 8
        Width = 44
        Height = 13
        Caption = 'Location:'
      end
      object Label16: TLabel
        Left = 144
        Top = 8
        Width = 26
        Height = 13
        Caption = 'Date:'
      end
      object Label17: TLabel
        Left = 240
        Top = 64
        Width = 28
        Height = 13
        Caption = 'Write:'
      end
      object Label19: TLabel
        Left = 240
        Top = 112
        Width = 29
        Height = 13
        Caption = 'Read:'
      end
      object Label20: TLabel
        Left = 240
        Top = 168
        Width = 52
        Height = 13
        Caption = 'Comments:'
      end
      object Memo2: TMemo
        Left = 240
        Top = 184
        Width = 281
        Height = 121
        TabOrder = 4
      end
      object Edit8: TEdit
        Left = 64
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 0
        Text = '605'
        OnChange = Edit8Change
      end
      object Edit9: TEdit
        Left = 176
        Top = 8
        Width = 65
        Height = 21
        TabOrder = 1
        Text = '1/17/2013'
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 48
        Width = 209
        Height = 553
        DataSource = dsQryLST
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FULLNAME'
            Visible = True
          end>
      end
      object Edit10: TEdit
        Left = 240
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object Edit11: TEdit
        Left = 240
        Top = 128
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object btnSaveLST: TButton
        Left = 384
        Top = 80
        Width = 40
        Height = 25
        Caption = 'Save'
        TabOrder = 6
        OnClick = btnSaveLSTClick
      end
      object DBGrid5: TDBGrid
        Left = 240
        Top = 320
        Width = 201
        Height = 273
        DataSource = dsIbQuery3
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DTE'
            Title.Caption = 'Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WRT'
            Title.Caption = 'Write'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RD'
            Title.Caption = 'Read'
            Width = 45
            Visible = True
          end>
      end
      object DBMemo3: TDBMemo
        Left = 448
        Top = 344
        Width = 249
        Height = 89
        DataField = 'COMMENTS'
        DataSource = dsIbQuery3
        TabOrder = 8
      end
      object Button1: TButton
        Left = 448
        Top = 320
        Width = 40
        Height = 25
        Caption = 'Delete'
        TabOrder = 9
        OnClick = Button1Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Switches'
      ImageIndex = 3
      object rgSwitchPorts: TRadioGroup
        Left = 0
        Top = 56
        Width = 113
        Height = 534
        Align = alLeft
        Caption = 'Ports'
        Columns = 2
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31'
          '32'
          '33'
          '34'
          '35'
          '36'
          '37'
          '38'
          '39'
          '40'
          '41'
          '42'
          '43'
          '44'
          '45'
          '46'
          '47'
          '48')
        TabOrder = 0
        OnClick = rgSwitchPortsClick
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 853
        Height = 56
        Align = alTop
        TabOrder = 1
        object Label21: TLabel
          Left = 280
          Top = 24
          Width = 3
          Height = 13
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentColor = False
          ParentFont = False
          OnDblClick = Label21DblClick
        end
        object rgSwitchLoc: TRadioGroup
          Left = 2
          Top = 2
          Width = 185
          Height = 50
          Caption = 'Location'
          Columns = 2
          Items.Strings = (
            'Plant - 601'
            'Plant - 605'
            'Sales'
            'Dental')
          TabOrder = 0
          OnClick = rgSwitchLocClick
        end
      end
      object rgSwitch2: TRadioGroup
        Left = 113
        Top = 56
        Width = 55
        Height = 534
        Align = alLeft
        Caption = 'Switch 2'
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24')
        TabOrder = 2
        Visible = False
        OnClick = rgSwitch2Click
      end
      object Memo3: TMemo
        Left = 304
        Top = 512
        Width = 369
        Height = 81
        Lines.Strings = (
          'Memo3')
        TabOrder = 3
        WordWrap = False
      end
      object Button2: TButton
        Left = 176
        Top = 64
        Width = 50
        Height = 25
        Caption = 'Add'
        TabOrder = 4
        OnClick = Button2Click
      end
      object DBGrid6: TDBGrid
        Left = 240
        Top = 64
        Width = 473
        Height = 441
        DataSource = dsQryCompLoc
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SERIAL_NO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FULLNAME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODEL'
            Visible = True
          end>
      end
    end
    object Batteries: TTabSheet
      Caption = 'Batteries'
      ImageIndex = 4
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 853
        Height = 89
        Align = alTop
        TabOrder = 0
      end
      object Panel7: TPanel
        Left = 0
        Top = 89
        Width = 175
        Height = 501
        Align = alLeft
        Caption = 'Panel7'
        TabOrder = 1
        object dbgDsQryUps1: TDBGrid
          Left = 1
          Top = 1
          Width = 173
          Height = 499
          Align = alClient
          DataSource = dsQryUps1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'LOCATION'
              Visible = True
            end>
        end
      end
      object Panel8: TPanel
        Left = 175
        Top = 89
        Width = 678
        Height = 501
        Align = alClient
        Caption = 'Panel8'
        TabOrder = 2
        object DBGrid8: TDBGrid
          Left = 1
          Top = 1
          Width = 676
          Height = 368
          Align = alTop
          DataSource = dsQryUps2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'LINENO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'MODEL'
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERIAL_NUM'
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PART_NUM'
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INSTALLED'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REPLACE'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMMENTS'
              Visible = False
            end>
        end
        object DBMemo4: TDBMemo
          Left = 1
          Top = 369
          Width = 676
          Height = 131
          Align = alClient
          DataField = 'COMMENTS'
          DataSource = dsQryUps2
          TabOrder = 1
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Printers'
      ImageIndex = 5
      object Label12: TLabel
        Left = 304
        Top = 185
        Width = 44
        Height = 13
        Caption = 'Location:'
      end
      object Label18: TLabel
        Left = 304
        Top = 212
        Width = 84
        Height = 13
        Caption = 'Connection Type:'
      end
      object Label23: TLabel
        Left = 304
        Top = 239
        Width = 48
        Height = 13
        Caption = 'IP Adress:'
      end
      object Label25: TLabel
        Left = 304
        Top = 266
        Width = 54
        Height = 13
        Caption = 'Purchased:'
      end
      object Label26: TLabel
        Left = 304
        Top = 293
        Width = 69
        Height = 13
        Caption = 'Serial Number:'
      end
      object DBGrid9: TDBGrid
        Left = 0
        Top = 41
        Width = 281
        Height = 549
        Align = alLeft
        DataSource = dsQryPrntr1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'MAKE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LINENO'
            Visible = False
          end>
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 853
        Height = 41
        Align = alTop
        TabOrder = 1
      end
      object DBGrid10: TDBGrid
        Left = 304
        Top = 56
        Width = 320
        Height = 120
        DataSource = dsQryPrntr2
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'LOC'
            Visible = True
          end>
      end
      object DBEdit9: TDBEdit
        Left = 390
        Top = 182
        Width = 121
        Height = 21
        DataField = 'SITE'
        DataSource = dsQryPrntr2
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit11: TDBEdit
        Left = 390
        Top = 209
        Width = 121
        Height = 21
        DataField = 'CONTYPE'
        DataSource = dsQryPrntr2
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit12: TDBEdit
        Left = 390
        Top = 236
        Width = 121
        Height = 21
        DataField = 'IP_ADDRESS'
        DataSource = dsQryPrntr2
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit13: TDBEdit
        Left = 390
        Top = 263
        Width = 121
        Height = 21
        DataField = 'PURDTE'
        DataSource = dsQryPrntr2
        ReadOnly = True
        TabOrder = 6
      end
      object Button3: TButton
        Left = 517
        Top = 236
        Width = 40
        Height = 21
        Caption = 'Open'
        TabOrder = 7
        OnClick = Button3Click
      end
      object DBEdit14: TDBEdit
        Left = 390
        Top = 290
        Width = 121
        Height = 21
        DataField = 'SERIALNO'
        DataSource = dsQryPrntr2
        ReadOnly = True
        TabOrder = 8
      end
    end
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 160
    Top = 256
  end
  object qryComputers: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select a.SERIAL_NO, a.MODEL, a.CTYPE, a.OS, a.RAM, a.LOCATION, a' +
        '.COMMENTS, a.LINENO_CPU, a.LINENO_MEMORY,  a.PURCHASED as bought' +
        ', a.leased, a.PO_NUM, a.QUOTE_NO, a.COST,b.id, b.key, b.purchase' +
        'd,a.replace, a.status, a.rdate, a.compname'
      
        'from COMPUTERS a left join comp_malwre b on a.lineno_malwre = b.' +
        'lineno'
      'Where a.status < 3'
      'order by a.SERIAL_NO')
    Left = 120
    Top = 184
  end
  object dsQryComputers: TDataSource
    AutoEdit = False
    DataSet = qryComputers
    OnDataChange = dsQryComputersDataChange
    Left = 184
    Top = 168
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 168
    object File1: TMenuItem
      Caption = 'File'
      object AddComp: TMenuItem
        Caption = 'Add computer'
        OnClick = AddCompClick
      end
      object DelComp: TMenuItem
        Caption = 'Delete computer'
        OnClick = DelCompClick
      end
      object Refresh: TMenuItem
        Caption = 'Refresh data'
        OnClick = RefreshClick
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object ChangeSerialNo1: TMenuItem
        Caption = 'Change Serial No:'
      end
      object Updateinfo1: TMenuItem
        Caption = 'Update info:'
        OnClick = Updateinfo1Click
      end
      object Adduser1: TMenuItem
        Caption = 'Add user:'
        OnClick = Adduser1Click
      end
      object Deleteuser1: TMenuItem
        Caption = 'Delete user:'
        OnClick = Deleteuser1Click
      end
      object DatePurchased1: TMenuItem
        Caption = 'Date Acquired'
        OnClick = DatePurchased1Click
      end
      object ChangeStatus1: TMenuItem
        Caption = 'Change Status'
        OnClick = ChangeStatus1Click
      end
      object UpdateLeasenumber1: TMenuItem
        Caption = 'Update Lease number'
        OnClick = UpdateLeasenumber1Click
      end
    end
    object RankComputers1: TMenuItem
      Caption = 'List'
      object byUsername: TMenuItem
        Caption = 'by Username'
        object AllUsers: TMenuItem
          Caption = 'All'
        end
      end
      object byLocation2: TMenuItem
        Caption = 'by Location'
        object Loc_All: TMenuItem
          Caption = 'All'
          OnClick = Loc_AllClick
        end
        object Loc_Epicor: TMenuItem
          Caption = 'Specify'
          OnClick = Loc_EpicorClick
        end
        object Loc_Choose: TMenuItem
          Caption = 'Choose'
          OnClick = Loc_ChooseClick
        end
      end
      object ReplacementDate1: TMenuItem
        Caption = 'To Replace'
        OnClick = ReplacementDate1Click
      end
      object ListLeaseexpires: TMenuItem
        Caption = 'Lease expires'
        OnClick = ListLeaseexpiresClick
      end
    end
    object Processor1: TMenuItem
      Caption = 'Processor'
      object CPU_Select: TMenuItem
        Caption = 'Select'
        OnClick = CPU_SelectClick
      end
      object CPU_Remove: TMenuItem
        Caption = 'Remove'
      end
    end
    object MalworeBytes1: TMenuItem
      Caption = 'MalwareBytes'
      object Add1: TMenuItem
        Caption = 'Modify'
        object Thiscomputer1: TMenuItem
          Caption = 'Add this computer'
          OnClick = Thiscomputer1Click
        end
        object Newsubscription1: TMenuItem
          Caption = 'New subscription'
          OnClick = Newsubscription1Click
        end
        object EditSubscription: TMenuItem
          Caption = 'Edit subscription'
          OnClick = EditSubscriptionClick
        end
      end
      object Change1: TMenuItem
        Caption = 'Change Subscription ID'
        OnClick = Change1Click
      end
      object Delete1: TMenuItem
        Caption = 'Delete'
        object hiscomputer2: TMenuItem
          Caption = 'This computer'
          OnClick = hiscomputer2Click
        end
        object Entiresubscription1: TMenuItem
          Caption = 'Entire subscription'
          OnClick = Entiresubscription1Click
        end
      end
      object List1: TMenuItem
        Caption = 'List'
        object byId1: TMenuItem
          Caption = 'by Id'
          OnClick = byId1Click
        end
        object byComputer1: TMenuItem
          Caption = 'by Computer'
        end
      end
    end
    object Registry1: TMenuItem
      Caption = 'Registry'
      Visible = False
      object CleanerInstalled1: TMenuItem
        Caption = 'Cleaner Installed'
        OnClick = CleanerInstalled1Click
      end
      object RegistryCleaned1: TMenuItem
        Caption = 'Last Cleaned'
        OnClick = RegistryCleaned1Click
      end
    end
    object Search1: TMenuItem
      Caption = 'Search'
      object byModel1: TMenuItem
        Caption = 'by Model'
        OnClick = byModel1Click
      end
      object byType1: TMenuItem
        Caption = 'by Type'
        OnClick = byType1Click
      end
      object byLocation1: TMenuItem
        Caption = 'by Location'
        OnClick = byLocation1Click
      end
      object byUsername1: TMenuItem
        Caption = 'by Username'
        OnClick = byUsername1Click
      end
      object Reset1: TMenuItem
        Caption = 'Reset'
        OnClick = Reset1Click
      end
    end
    object Printers1: TMenuItem
      Caption = 'Printers'
      object PrinterNew: TMenuItem
        Caption = 'New'
        OnClick = PrinterNewClick
      end
      object PrinterAdd: TMenuItem
        Caption = 'Add'
        OnClick = PrinterAddClick
      end
      object PrinterEdit: TMenuItem
        Caption = 'Edit'
        OnClick = PrinterEditClick
      end
      object PrinterStatus: TMenuItem
        Caption = 'Status'
        OnClick = PrinterStatusClick
      end
    end
  end
  object qryCompUser: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsQryComputers
    ParamCheck = True
    SQL.Strings = (
      'Select fullname, lineno from comp_user'
      'where serial_no = :serial_no')
    Left = 568
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serial_no'
        ParamType = ptUnknown
      end>
  end
  object dsQryCompUser: TDataSource
    AutoEdit = False
    DataSet = qryCompUser
    Left = 584
    Top = 248
  end
  object qryCPU: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsQryComputers
    ParamCheck = True
    SQL.Strings = (
      'select PROCESSOR, MARK, RANK'
      'FROM computers_cpu'
      'where lineno = :lineno_cpu')
    Left = 432
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lineno_cpu'
        ParamType = ptUnknown
      end>
  end
  object dsCPU: TDataSource
    AutoEdit = False
    DataSet = qryCPU
    Left = 472
    Top = 168
  end
  object qryMemory: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsQryComputers
    ParamCheck = True
    SQL.Strings = (
      
        'select DESCRIPTION, SPEED, BIT_32_64, DDR_TYPE, MVALUE from COMP' +
        'UTERS_MEMORY'
      'where lineno = :lineno_memory')
    Left = 520
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lineno_memory'
        ParamType = ptUnknown
      end>
  end
  object dsMemory: TDataSource
    AutoEdit = False
    DataSet = qryMemory
    Left = 568
    Top = 168
  end
  object qrySoftComp: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsQryComputers
    ParamCheck = True
    SQL.Strings = (
      'select a.Model, b.name, b.key, b.INSTALLS, b.lineno'
      
        'from computers a inner join comp_software b on a.serial_no = b.c' +
        'omputer'
      'where b.computer = :serial_no'
      'AND a.SERIAL_NO = b.COMPUTER'
      'and b.NAME like '#39'OFFICE %'#39
      'order by b.name')
    Left = 80
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serial_no'
        ParamType = ptUnknown
      end>
  end
  object dsSoftComp: TDataSource
    AutoEdit = False
    DataSet = qrySoftComp
    Left = 128
    Top = 312
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 208
    Top = 272
  end
  object qryCust_LST: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsQryComputers
    ParamCheck = True
    SQL.Strings = (
      'select DTE, SEQ, WRT, RD, COMMENTS from COMPUTERS_LST'
      'where SERIAL_NO = :SERIAL_NO'
      'order by dte desc,seq desc')
    Left = 392
    Top = 560
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SERIAL_NO'
        ParamType = ptUnknown
      end>
  end
  object dsQryCust_LST: TDataSource
    AutoEdit = False
    DataSet = qryCust_LST
    Left = 448
    Top = 544
  end
  object qryLST: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.fullname, a.serial_no, b.location'
      'from comp_user a'
      ' inner join computers b on b.serial_no = a.serial_no'
      'where b.location = '#39'605'#39
      'order by a.fullname')
    Left = 224
    Top = 120
  end
  object dsQryLST: TDataSource
    AutoEdit = False
    DataSet = qryLST
    Left = 272
    Top = 112
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsQryLST
    ParamCheck = True
    SQL.Strings = (
      'select DTE, WRT, RD, COMMENTS, seq from COMPUTERS_LST'
      'where SERIAL_NO = :SERIAL_NO'
      'order by dte desc,seq desc')
    Left = 248
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SERIAL_NO'
        ParamType = ptUnknown
      end>
  end
  object dsIbQuery3: TDataSource
    AutoEdit = False
    DataSet = IBQuery3
    Left = 168
    Top = 400
  end
  object qryPortSerial: TIBQuery
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
      'order by b.username')
    Left = 496
    Top = 96
  end
  object qryCompLoc: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.serial_no, a.model, b.fullname, a.ntwrk_port'
      
        'from computers a left join comp_user b on b.serial_no = a.serial' +
        '_no'
      'where a.location = '#39'601'#39
      'order by b.fullname')
    Left = 256
    Top = 32
  end
  object dsQryCompLoc: TDataSource
    AutoEdit = False
    DataSet = qryCompLoc
    Left = 344
    Top = 16
  end
  object qryLeasedComps: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsQryComputers
    ParamCheck = True
    SQL.Strings = (
      
        'select A.SERIAL_NO, C.DESCRIPTION, B.FULLNAME, A.LOCATION, a.pur' +
        'chased,  a.PO_NUM,a.QUOTE_NO, a.COST'
      'from COMPUTERS A      '
      '  INNER JOIN COMP_USER B ON A.SERIAL_NO = B.SERIAL_NO  '
      '  INNER JOIN SITES C ON B.SITE = C.SITE'
      'where a.serial_no = :serial_no')
    Left = 440
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serial_no'
        ParamType = ptUnknown
      end>
    object qryLeasedCompsSERIAL_NO: TIBStringField
      FieldName = 'SERIAL_NO'
      Origin = 'COMPUTERS.SERIAL_NO'
      Required = True
      Size = 50
    end
    object qryLeasedCompsDESCRIPTION: TIBStringField
      FieldName = 'DESCRIPTION'
      Origin = 'SITES.DESCRIPTION'
      Required = True
      Size = 35
    end
    object qryLeasedCompsFULLNAME: TIBStringField
      FieldName = 'FULLNAME'
      Origin = 'COMP_USER.FULLNAME'
      Required = True
      Size = 25
    end
    object qryLeasedCompsLOCATION: TIBStringField
      FieldName = 'LOCATION'
      Origin = 'COMPUTERS.LOCATION'
      Size = 25
    end
    object qryLeasedCompsPURCHASED: TDateTimeField
      FieldName = 'PURCHASED'
      Origin = 'COMPUTERS.PURCHASED'
    end
    object qryLeasedCompsPO_NUM: TIBStringField
      FieldName = 'PO_NUM'
      Origin = 'COMPUTERS.PO_NUM'
      Size = 25
    end
    object qryLeasedCompsQUOTE_NO: TIBStringField
      FieldName = 'QUOTE_NO'
      Origin = 'COMPUTERS.QUOTE_NO'
      Size = 25
    end
    object qryLeasedCompsCOST: TFloatField
      FieldName = 'COST'
      Origin = 'COMPUTERS.COST'
      currency = True
    end
  end
  object dsQryLeasedComps: TDataSource
    AutoEdit = False
    DataSet = qryLeasedComps
    Left = 504
    Top = 224
  end
  object qryUPS1: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select distinct LOCATION'
      'from UPS_BATTERIES')
    Left = 228
    Top = 368
  end
  object dsQryUps1: TDataSource
    AutoEdit = False
    DataSet = qryUPS1
    Left = 264
    Top = 384
  end
  object qryUPS2: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsQryUps1
    ParamCheck = True
    SQL.Strings = (
      
        'select LINENO, MODEL, SERIAL_NUM, PART_NUM, INSTALLED, REPLACE, ' +
        'COMMENTS '
      'from UPS_BATTERIES'
      'where location = :location')
    Left = 568
    Top = 432
    ParamData = <
      item
        DataType = ftWideString
        Name = 'LOCATION'
        ParamType = ptUnknown
        Size = 102
      end>
  end
  object dsQryUps2: TDataSource
    AutoEdit = False
    DataSet = qryUPS2
    Left = 612
    Top = 416
  end
  object qryPrntr1: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT distinct a.LINENO, a.MAKE'
      'FROM PRNTR1 a'
      '  inner join prntr2 b on a.LINENO = b.PRNTR1'
      'where b.STATUS = 0'
      'Order by a.make')
    Left = 44
    Top = 480
  end
  object qryPrntr2: TIBQuery
    Database = DataModule2.FireBird
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsQryPrntr1
    ParamCheck = True
    SQL.Strings = (
      
        'select c.description as SITE, b.LOC, b.PURDTE, b.SERIALNO, b.CON' +
        'TYPE, b.IP_ADDRESS, b.LINENO, b.site, b.status'
      'from prntr2 b'
      '  inner join sites c on b.site = c.site'
      'where b.prntr1 = :lineno'
      'order by c.description, b.loc')
    Left = 164
    Top = 520
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LINENO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsQryPrntr1: TDataSource
    AutoEdit = False
    DataSet = qryPrntr1
    Left = 92
    Top = 472
  end
  object dsQryPrntr2: TDataSource
    AutoEdit = False
    DataSet = qryPrntr2
    Left = 220
    Top = 504
  end
end
