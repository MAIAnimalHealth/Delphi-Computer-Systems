unit ComputerSystemsUnit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, UITypes,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, DB, IBCustomDataSet, IBQuery,
  Mask, DBCtrls, Menus, ComCtrls, ShellAPI, StrUtils;

type
  TfrmComputerSystems = class(TForm)
    IBQuery1: TIBQuery;
    qryComputers: TIBQuery;
    dsQryComputers: TDataSource;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    AddComp: TMenuItem;
    Exit1: TMenuItem;
    Edit1: TMenuItem;
    ChangeSerialNo1: TMenuItem;
    Updateinfo1: TMenuItem;
    Adduser1: TMenuItem;
    Deleteuser1: TMenuItem;
    qryCompUser: TIBQuery;
    dsQryCompUser: TDataSource;
    Search1: TMenuItem;
    byModel1: TMenuItem;
    byLocation1: TMenuItem;
    byType1: TMenuItem;
    Reset1: TMenuItem;
    qryCPU: TIBQuery;
    dsCPU: TDataSource;
    qryMemory: TIBQuery;
    dsMemory: TDataSource;
    Processor1: TMenuItem;
    CPU_Select: TMenuItem;
    CPU_Remove: TMenuItem;
    byUsername1: TMenuItem;
    RankComputers1: TMenuItem;
    byUsername: TMenuItem;
    AllUsers: TMenuItem;
    byLocation2: TMenuItem;
    Loc_All: TMenuItem;
    Loc_Choose: TMenuItem;
    Loc_Epicor: TMenuItem;
    pg1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label7: TLabel;
    Edit2: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label24: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit6: TDBEdit;
    DBEdit15: TDBEdit;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    qrySoftComp: TIBQuery;
    editSerialNumber: TEdit;
    editUserName: TEdit;
    dsSoftComp: TDataSource;
    DBGrid3: TDBGrid;
    DBText1: TDBText;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label13: TLabel;
    IBQuery2: TIBQuery;
    ListBox1: TListBox;
    Refresh: TMenuItem;
    Registry1: TMenuItem;
    CleanerInstalled1: TMenuItem;
    RegistryCleaned1: TMenuItem;
    DelComp: TMenuItem;
    qryCust_LST: TIBQuery;
    dsQryCust_LST: TDataSource;
    TabSheet3: TTabSheet;
    qryLST: TIBQuery;
    dsQryLST: TDataSource;
    Memo2: TMemo;
    Edit8: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Edit9: TEdit;
    DBGrid4: TDBGrid;
    Edit10: TEdit;
    Edit11: TEdit;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    btnSaveLST: TButton;
    DBMemo2: TDBMemo;
    DBGrid5: TDBGrid;
    IBQuery3: TIBQuery;
    dsIbQuery3: TDataSource;
    DBMemo3: TDBMemo;
    Button1: TButton;
    TabSheet4: TTabSheet;
    rgSwitchPorts: TRadioGroup;
    Panel5: TPanel;
    rgSwitchLoc: TRadioGroup;
    rgSwitch2: TRadioGroup;
    Label21: TLabel;
    Memo3: TMemo;
    Button2: TButton;
    qryPortSerial: TIBQuery;
    qryCompLoc: TIBQuery;
    dsQryCompLoc: TDataSource;
    DBGrid6: TDBGrid;
    Label22: TLabel;
    DatePurchased1: TMenuItem;
    DBRadioGroup5: TDBRadioGroup;
    btnCompInfo: TButton;
    DBGrid7: TDBGrid;
    qryLeasedComps: TIBQuery;
    dsQryLeasedComps: TDataSource;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBText2: TDBText;
    DBText4: TDBText;
    MalworeBytes1: TMenuItem;
    Add1: TMenuItem;
    Change1: TMenuItem;
    Delete1: TMenuItem;
    Thiscomputer1: TMenuItem;
    Newsubscription1: TMenuItem;
    hiscomputer2: TMenuItem;
    Entiresubscription1: TMenuItem;
    List1: TMenuItem;
    byId1: TMenuItem;
    byComputer1: TMenuItem;
    DBText5: TDBText;
    Label36: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label37: TLabel;
    Label38: TLabel;
    qryLeasedCompsCOST: TFloatField;
    qryLeasedCompsSERIAL_NO: TIBStringField;
    qryLeasedCompsDESCRIPTION: TIBStringField;
    qryLeasedCompsFULLNAME: TIBStringField;
    qryLeasedCompsLOCATION: TIBStringField;
    qryLeasedCompsPURCHASED: TDateTimeField;
    qryLeasedCompsPO_NUM: TIBStringField;
    qryLeasedCompsQUOTE_NO: TIBStringField;
    Label39: TLabel;
    DBText9: TDBText;
    ReplacementDate1: TMenuItem;
    DBEdit7: TDBEdit;
    RadioGroup1: TRadioGroup;
    ChangeStatus1: TMenuItem;
    btnChangeReplaceDate: TButton;
    DBRadioGroup1: TDBRadioGroup;
    EditSubscription: TMenuItem;
    Batteries: TTabSheet;
    qryUPS1: TIBQuery;
    Panel6: TPanel;
    dsQryUps1: TDataSource;
    qryUPS2: TIBQuery;
    dsQryUps2: TDataSource;
    Panel7: TPanel;
    dbgDsQryUps1: TDBGrid;
    Panel8: TPanel;
    DBGrid8: TDBGrid;
    DBMemo4: TDBMemo;
    Label10: TLabel;
    UpdateLeasenumber1: TMenuItem;
    TabSheet5: TTabSheet;
    qryPrntr1: TIBQuery;
    qryPrntr2: TIBQuery;
    dsQryPrntr1: TDataSource;
    DBGrid9: TDBGrid;
    Panel9: TPanel;
    dsQryPrntr2: TDataSource;
    DBGrid10: TDBGrid;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Button3: TButton;
    Label12: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Printers1: TMenuItem;
    PrinterNew: TMenuItem;
    PrinterEdit: TMenuItem;
    PrinterStatus: TMenuItem;
    Label26: TLabel;
    DBEdit14: TDBEdit;
    PrinterAdd: TMenuItem;
    ListLeaseexpires: TMenuItem;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    Change_Name: TButton;
    procedure FormShow(Sender: TObject);
    procedure ModifyDB(a: Integer; str: String);
    procedure Updateinfo1Click(Sender: TObject);
    procedure GetUserInput(b: Integer; sno: String);
    procedure AddCompClick(Sender: TObject);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Adduser1Click(Sender: TObject);
    procedure Deleteuser1Click(Sender: TObject);
    procedure byLocation1Click(Sender: TObject);
    procedure Search(str: String);
    procedure Reset1Click(Sender: TObject);
    procedure byModel1Click(Sender: TObject);
    procedure byType1Click(Sender: TObject);
    procedure CPU_SelectClick(Sender: TObject);
    procedure byUsername1Click(Sender: TObject);
    procedure SelectInfo(sqlStr1, sqlStr2: String);
    procedure Loc_AllClick(Sender: TObject);
    procedure Loc_EpicorClick(Sender: TObject);
    procedure Loc_ChooseClick(Sender: TObject);
    procedure pg1Change(Sender: TObject);
    procedure Label13DblClick(Sender: TObject);
    procedure AddSoftInfo;
    procedure SetupPrgmList;
    procedure ListBox1DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure dsQryComputersDataChange(Sender: TObject; Field: TField);
    procedure RefreshClick(Sender: TObject);
    procedure CleanerInstalled1Click(Sender: TObject);
    procedure RegistryCleaned1Click(Sender: TObject);
    procedure UpdateMaint(sqlStr: String);
    procedure doNothing;
    procedure DelCompClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure btnSaveLSTClick(Sender: TObject);
    procedure prtNum(a, i: Integer);
    function CheckSoftware(str1, str2: String): Integer;
    function CheckInput(str1: String): String;
    procedure Button1Click(Sender: TObject);
    procedure rgSwitchLocClick(Sender: TObject);
    procedure Label21DblClick(Sender: TObject);
    procedure rgSwitchPortsClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure rgSwitch2Click(Sender: TObject);
    procedure DatePurchased1Click(Sender: TObject);
    procedure btnCompInfoClick(Sender: TObject);
    procedure rgLeasedPg1Click(Sender: TObject);
    procedure rgLeasedSortByClick(Sender: TObject);
    procedure DBGrid8DblClick(Sender: TObject);
    procedure Edit12KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Newsubscription1Click(Sender: TObject);
    procedure Thiscomputer1Click(Sender: TObject);
    procedure Change1Click(Sender: TObject);
    procedure hiscomputer2Click(Sender: TObject);
    procedure Entiresubscription1Click(Sender: TObject);
    procedure byId1Click(Sender: TObject);
    procedure ReplacementDate1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ChangeStatus1Click(Sender: TObject);
    procedure btnChangeReplaceDateClick(Sender: TObject);
    procedure EditSubscriptionClick(Sender: TObject);
    procedure UpdateLeasenumber1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PrinterNewClick(Sender: TObject);
    procedure PrinterEditClick(Sender: TObject);
    procedure PrinterStatusClick(Sender: TObject);
    procedure PrinterAddClick(Sender: TObject);
    procedure RefreshPrinters(a, b: Integer);
    procedure AddPrinterInfo(c,lne1: Integer; mke,ste,loc,con,ip,purdte,sn: String);
    procedure btnOfficeVerClick(Sender: TObject);
    procedure ListLeaseexpiresClick(Sender: TObject);
    procedure Change_NameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComputerSystems: TfrmComputerSystems;
  srlno: String;

implementation
   uses DbAccess, ComputerSystemsUnit2, ComputerSystemsUnit3, ComputerSystemsUnit4,
    ComputerSystemsUnit5, ComputerSystemsUnit6, ComputerSystemsUnit7, 
    ComputerSystemsUnit9, ComputerSystemsUnit10;

{$R *.dfm}

procedure TfrmComputerSystems.FormShow(Sender: TObject);
begin
  qryComputers.Active := True;
  qryCompUser.Active := True;
  qryCPU.Active := True;    
  qryMemory.Active := True;
  qryCust_LST.Active := True;
  qryLeasedComps.Active := True;
  qrySoftComp.Active := True;
  pg1.ActivePageIndex := 0;
  Edit2.SetFocus;
  qryComputers.Last;
  qryComputers.First;
end;

procedure TfrmComputerSystems.ModifyDB(a: Integer; str: String);
begin
  with ibQuery1 do
   begin
    Active := False;
    Sql.Clear;
    Sql.Add(str);
    If a = 0 then Active := True else ExecSql;
   end;
end;

procedure TfrmComputerSystems.Updateinfo1Click(Sender: TObject);
begin
  if messageDlg('Update info for serial #'+qryComputers.Fields[0].Value+'?',mtConfirmation,[mbyes,mbno],0) = mrYes then
   GetUserInput(1, qryComputers.Fields[0].Value);
end;

procedure TfrmComputerSystems.UpdateLeasenumber1Click(Sender: TObject);
var
  lease, po: String;
begin
  lease := 'Cancel';
  po := 'Cancel';
  lease := InputBox('Enter lease num','lease number','');
  if lease <> 'Cancel' then
    begin
      po := InputBox('Enter purchase order number','po num','');
      if po <> 'Cancel' then
        ModifyDB(1,'update COMPUTERS set quote_no = '''+lease+''' where po_num = '''+po+'''');
    end;
end;

procedure TfrmComputerSystems.AddCompClick(Sender: TObject);
begin
  GetUserInput(0, '');
end;

procedure TfrmComputerSystems.GetUserInput(b: Integer; sno: String);
var
  av, cmnts, os, ram, nic, mdl, port, loc, ct, sqlStr: String;
begin
  if b = 0 then sno := UpperCase(InputBox('New serial number', 'Serial #:', ''));
  if sno <> '' then
   BEGIN
    mdl := '';
    if b = 1 then begin IF NOT qryComputers.Fields[1].IsNull = True THEN mdl :=qryComputers.Fields[1].Value; end;
    mdl := InputBox('Enter model #', 'ie: Dell OptiPlex 3050 Micro', mdl);
    ct := 'Desktop';
    if b = 1 then begin IF NOT qryComputers.Fields[2].IsNull = True THEN ct :=qryComputers.Fields[2].Value; end;
    ct := UpperCase(InputBox('Enter computer type', 'ie: desktop, server, laptop', ct));
    os := 'Win 10 Pro';
    if b = 1 then begin IF NOT qryComputers.Fields[3].IsNull = True THEN os := qryComputers.Fields[3].Value; end;
    os := InputBox('Enter operating system', 'ie: Win 10 Pro', os);
    ram := '8 GB';
    if b = 1 then begin IF NOT qryComputers.Fields[4].IsNull = True THEN ram :=qryComputers.Fields[4].Value; end;
    ram := UpperCase(InputBox('Enter ram installed', 'ie: 4 GB', ram));   
    nic := '1000';
    //if b = 1 then begin IF NOT qryComputers.Fields[5].IsNull = True THEN nic :=qryComputers.Fields[5].Value; end;
    //nic := UpperCase(InputBox('Enter nic speed', 'ie: 100 or 1000', nic));
    //port := '';
    //if b = 1 then begin IF NOT qryComputers.Fields[13].IsNull = True THEN port :=qryComputers.Fields[13].Value; end;
    //port := InputBox('Enter network port computer is attached to', 'ie: 20', port);
    frmSelectLoc.ShowModal;
    loc := frmSelectLoc.Label1.Caption;
    //if b = 1 then begin IF NOT qryComputers.Fields[7].IsNull = True THEN loc :=qryComputers.Fields[7].Value; end;
    loc := InputBox('Enter location', 'ie: 303, 111', loc);
    av := 'null';
    {if b = 1 then begin IF NOT qryComputers.Fields[8].IsNull = True THEN av :=qryComputers.Fields[8].Value; end;
    av := InputBox('Enter anti-virus', 'Serial number', av); }
    cmnts := '';
    if b = 1 then begin IF NOT qryComputers.Fields[9].IsNull = True THEN cmnts :=qryComputers.Fields[9].Value else cmnts := ''; end;
    cmnts := InputBox('Enter comments', 'Comment', cmnts);
    modifyDB(0,'select serial_no from computers where serial_no = '''+sno+'''');
    if NOT ibQuery1.Fields[0].IsNull then
     begin
      sqlStr := 'update computers set ';
      if mdl = '' then sqlStr := sqlStr + 'model = null' else sqlStr := sqlStr + 'model = ''' + mdl + '''';
      if ct = '' then sqlStr := sqlStr + ',ctype=null' else sqlStr := sqlStr + ',ctype=''' + ct + '''';
      if os = '' then sqlStr := sqlStr + ',os=null' else sqlStr := sqlStr + ',os=''' + os + '''';     
      if ram = '' then sqlStr := sqlStr + ',ram=null' else sqlStr := sqlStr + ',ram=''' + ram + '''';     
      //if nic = '' then sqlStr := sqlStr + ',nic=null' else sqlStr := sqlStr + ',nic=''' + nic + '''';
      //if port = '' then sqlStr := sqlStr + ',ntwrk_port=null' else sqlStr := sqlStr + ',ntwrk_port=''' + port+'''';
      if loc = '' then sqlStr := sqlStr + ',location=null' else sqlStr := sqlStr + ',location=''' + loc + '''';
      //if av = '' then sqlStr := sqlStr + ',anti_virus=null' else sqlStr := sqlStr + ',anti_virus=''' + av + '''';
      if cmnts = '' then sqlStr := sqlStr + ',comments=null' else sqlStr := sqlStr + ',comments=''' + cmnts + '''';
      sqlStr := sqlStr + ' where serial_no = '''+sno+'''';
     end
    else
     begin
      sqlStr := 'insert into computers (serial_no,model,ctype,os,ram,location, comments, status) values ('''+sno+'''';
      if mdl = '' then sqlStr := sqlStr + ',null' else sqlStr := sqlStr + ',''' + mdl + '''';
      if ct = '' then sqlStr := sqlStr + ',null' else sqlStr := sqlStr + ',''' + ct + '''';
      if os = '' then sqlStr := sqlStr + ',null' else sqlStr := sqlStr + ',''' + os + '''';
      if ram = '' then sqlStr := sqlStr + ',null' else sqlStr := sqlStr + ',''' + ram + '''';
      //if nic = '' then sqlStr := sqlStr + ',null' else sqlStr := sqlStr + ',''' + nic + '''';
      if loc = '' then sqlStr := sqlStr + ',null' else sqlStr := sqlStr + ',''' + loc + '''';
      //if av = '' then sqlStr := sqlStr + ',null' else sqlStr := sqlStr + ',''' + av + '''';
      //if port = '' then sqlStr := sqlStr + ',null' else sqlStr := sqlStr + ',''' + port + '''';
      if cmnts = '' then sqlStr := sqlStr + ',null,0)' else sqlStr := sqlStr + ',''' + cmnts + ''',0)';
     end;
    //messageDlg(sqlStr, mtinformation,[mbok],0);
    modifyDB(1,sqlStr);
    with qryComputers do
     begin
      Active := False;
      Active := True;
      Locate('serial_no', sno, [loCaseInsensitive]);
     end;
    //messageDlg(sqlStr, mtinformation,[mbok],0);
   END;
end;

procedure TfrmComputerSystems.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  qryComputers.Locate('serial_no', Edit2.Text, [loCaseInsensitive,loPartialKey]);
end;

procedure TfrmComputerSystems.Adduser1Click(Sender: TObject);
var
  c: Integer;
  ste, usr: String;
begin
  if messageDlg('Add a user for serial #'+qryComputers.Fields[0].Value+'?',mtConfirmation,[mbyes,mbno],0) = mrYes then
   begin                          
    frmUsers.ShowModal;
    usr := frmUsers.Edit1.Text;
    if usr <> 'CANCEL' then
     BEGIN
      ModifyDB(0, 'select lineno from comp_user where fullname = '''+usr+''' and serial_no = '''+qryComputers.Fields[0].Value+'''');
      if ibQuery1.Fields[0].isNull then
       begin
        ModifyDB(0, 'select max(lineno) from comp_user');
        if ibQuery1.Fields[0].isNull then c := 0 else c := ibQuery1.Fields[0].Value;
        ModifyDB(0, 'select company from userlist where fullname = '''+usr+'''');   
        ste := ibQuery1.Fields[0].Value;
        ModifyDB(1, 'insert into comp_user (lineno, serial_no,fullname, site) values ('+IntToStr(c + 1)+','''+qryComputers.Fields[0].Value+''','''+usr+''','''+ste+''')');
       end;
     END;
   end;
  qryCompUser.Active := False;
  qryCompUser.Active := True;
end;

procedure TfrmComputerSystems.Deleteuser1Click(Sender: TObject);
begin
  if messageDlg('Delete '+qryCompUser.Fields[0].Value+' from serial #'+qryComputers.Fields[0].Value+'?',mtConfirmation,[mbyes,mbno],0) = mrYes then
   begin
    ModifyDB(1, 'delete from comp_user where lineno = '+IntToStr(qryCompUser.Fields[1].Value));
    qryCompUser.Active := False;
    qryCompUser.Active := True;
   end;
end;

procedure TfrmComputerSystems.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 1 then
    begin
      modifyDB(0,'select serial_no, replace from computers where status = 0 and replace <= '''+DateToStr(Date+45)+'''');
    end;
  while not ibQuery1.eof do
    begin
      with ibQuery2 do
        BEGIN
          Active := False;
          Sql.Clear;
          Sql.Add('update computers set status = 1 where serial_no = '''+ibQuery1.Fields[0].Value+'''');
          //messageDlg(ibQuery1.Fields[0].Value, mtInformation, [mbok],0);
          ExecSql;
        END;
      ibQuery1.Next;
    end;
  with qryComputers do
    begin
      Active := False;
      if RadioGroup1.ItemIndex < 4 then
       Sql.Strings[2] := 'Where a.status = '+IntToStr(RadioGroup1.ItemIndex)
      else
       if RadioGroup1.ItemIndex = 4 then Sql.Strings[2] := 'Where a.status < 3' else Sql.Strings[2] := '';
      Active := True;
      Last;
      First;
    end;
end;

procedure TfrmComputerSystems.byLocation1Click(Sender: TObject);
var
  str: String;
begin
  str := UpperCase(InputBox('Enter location', 'ie: 303',''));
  if str <> '' then Search('where location = '''+str+'''');
end;

procedure TfrmComputerSystems.Search(str: String);
begin
   qryComputers.Locate('serial_no', str, [loCaseInsensitive]);
end;

procedure TfrmComputerSystems.Reset1Click(Sender: TObject);
begin
  Search('');
end;

procedure TfrmComputerSystems.byModel1Click(Sender: TObject);
var
  str: String;
begin
  str := InputBox('Enter model', 'ie: HP d220','');
  if str <> '' then Search('where model like ''%'+str+'%''');
end;

procedure TfrmComputerSystems.byType1Click(Sender: TObject);
var
  str: String;
begin
  str := UpperCase(InputBox('Enter type', 'ie: LAPTOP',''));
  if str <> '' then Search('where ctype = '''+str+'''');
end;   

procedure TfrmComputerSystems.byUsername1Click(Sender: TObject);
begin
  frmSelectUser.ShowModal;
  if frmSelectUser.Label1.Caption <> 'cancel' then
   begin Search({'where serial_no = '''+}frmSelectUser.qrySelectUsername.Fields[1].Value{+''''}); setupPrgmList; end;
end;

procedure TfrmComputerSystems.CPU_SelectClick(Sender: TObject);
var
  lne: Integer;
  sn: String;
begin
  lne := 1;
  With frmProcessor do
   begin                         
    qryGetProcessor.Active := False;
    Caption := 'Select or add a processor';
    DbGrid1.Columns[0].FieldName := 'PROCESSOR';
    qryGetProcessor.SQL.Clear;
    qryGetProcessor.SQL.Add('select PROCESSOR, LINENO from COMPUTERS_CPU order by processor');
    ShowModal;
    if not qryGetProcessor.Fields[1].IsNull then lne := qryGetProcessor.Fields[1].Value;
   end;
  sn := qryComputers.Fields[0].Value;
  ModifyDB(1, 'update computers set lineno_cpu = '+IntToStr(lne)+' where serial_no = '''+sn+'''');
  With qryComputers do begin Active := False; Active := True; Locate('Serial_no', sn, [loCaseInsensitive]); end;
end;

procedure TfrmComputerSystems.SelectInfo(sqlStr1, sqlStr2: String);
begin
  With ComputerSystemsUnit5.frmRanking do
   begin
    Caption := 'Computers listed by Location';
    qryCompList.Active := False;
    qryCompList.SQL.Strings[4] := sqlStr1;
    qryCompList.SQL.Strings[6] := sqlStr2;
    qryCompList.Active := True;
    ShowModal;
   end;
end; 

procedure TfrmComputerSystems.Loc_AllClick(Sender: TObject);
begin
  SelectInfo('','order by b.location, a.username');
end;

procedure TfrmComputerSystems.Loc_EpicorClick(Sender: TObject);
var
  loc: String;
begin
  loc := InputBox('Specify location','ie: SV-%','');
  loc := 'where a.location like '''+loc+'''';
  SelectInfo(loc,'order by a.location, b.fullname');
end;

procedure TfrmComputerSystems.Loc_ChooseClick(Sender: TObject);
begin
  ComputerSystemsUnit6.frmSelectLoc.ShowModal;
  if ComputerSystemsUnit6.frmSelectLoc.Label1.Caption <> '' then
   SelectInfo('where b.location = '''+ComputerSystemsUnit6.frmSelectLoc.Label1.Caption+'''','order by a.username');
end;

procedure TfrmComputerSystems.pg1Change(Sender: TObject);
begin    
  qryLST.Active := False;
  ibQuery3.Active := False; 
  qryCompLoc.Active := False;
  qryLeasedComps.Active := False;
  qryUps1.Active := False;
  qryUps2.Active := False;
  qryPrntr1.Active := False;
  qryPrntr2.Active := False;
  If pg1.ActivePageIndex = 1 then
   begin
    {Edit1.Enabled := False;
    RankComputers1.Enabled := False;
    Processor1.Enabled := False;
    setupPrgmList; }
    PG1.ActivePageIndex := 0;
   end;
  If pg1.ActivePageIndex = 0 then
   begin
    Edit1.Enabled := True;
    RankComputers1.Enabled := True;
    Processor1.Enabled := True;
   end;     
  If pg1.ActivePageIndex = 2 then
   begin
    Edit9.Text := DateToStr(Date);
    Edit8.SetFocus;
    qryLST.Active := True;
    ibQuery3.Active := True;
   end;
  If pg1.ActivePageIndex = 3 then
   begin
    qryCompLoc.Active := True;
   end;
  If pg1.ActivePageIndex = 4 then
   begin
    qryUps1.Active := True;
    qryUps2.Active := True;
   end;
  If pg1.ActivePageIndex = 5 then
   begin
    qryPrntr1.Active := True;
    qryPrntr2.Active := True;
   end;
end;

procedure TfrmComputerSystems.PrinterEditClick(Sender: TObject);
var
  purdte, con, ip, sn, mke, ste, loc: String;
  lne: Integer;
begin
  if qryPrntr1.Fields[1].IsNull then mke := '' else mke := qryPrntr1.Fields[1].Value;
  if qryPrntr2.Fields[7].IsNull then ste := '' else ste := qryPrntr2.Fields[7].Value;
  if qryPrntr2.Fields[1].IsNull then loc := '' else loc := qryPrntr2.Fields[1].Value;
  if qryPrntr2.Fields[4].IsNull then con := '' else con := qryPrntr2.Fields[4].Value;
  if qryPrntr2.Fields[5].IsNull then ip := '' else ip := qryPrntr2.Fields[5].Value;
  if qryPrntr2.Fields[2].IsNull then purdte := '' else purdte := DateToStr(qryPrntr2.Fields[2].Value);
  if qryPrntr2.Fields[3].IsNull then sn := '' else sn := qryPrntr2.Fields[3].Value;
  lne := qryPrntr2.Fields[6].Value;
  AddPrinterInfo(1,lne,mke,ste,loc,con,ip,purdte,sn);
end;

procedure TfrmComputerSystems.PrinterAddClick(Sender: TObject);
var
  purdte, con, ip, sn, mke, ste, loc: String;
begin
  purdte:=''; con:=''; ip:=''; sn:=''; mke:=''; ste:=''; loc:='';
  if messageDlg('Add another '+qryPrntr1.Fields[1].Value+' printer?', mtConfirmation,[mbyes,mbno],0) = mrYes then
    AddPrinterInfo(0,qryPrntr1.Fields[0].Value,mke,ste,loc,con,ip,purdte,sn);
end;

procedure TfrmComputerSystems.PrinterNewClick(Sender: TObject);
var
  purdte, con, ip, sn, mke, ste, loc: String;
  lne: Integer;
begin
  purdte:=''; con:=''; ip:=''; sn:=''; ste:=''; loc:='';
  mke := InputBox('Printer id','Enter printer make and model','');
  ModifyDB(0,'select max(lineno) from prntr1');
  lne := ibQuery1.Fields[0].Value+1;
  ModifyDB(1,'INSERT INTO PRNTR1 (LINENO, MAKE) VALUES ('+IntToStr(lne)+','''+mke+''')');
  AddPrinterInfo(0,lne,mke,ste,loc,con,ip,purdte,sn);
end;

procedure TfrmComputerSystems.AddPrinterInfo(c,lne1: Integer; mke,ste,loc,con,ip,purdte,sn: String);
var
  str: String;
  lne2: Integer;
begin
  ste := InputBox('Site','Enter the site #, ie 01',ste);
  if ste = '' then ste := 'null' else ste := ''''+ste+'''';
  loc := InputBox('Location','Enter the location, ie Accouting',loc);
  if loc = '' then loc := 'null' else loc := ''''+loc+'''';
  con := InputBox('Connection Type','Enter the connetion type, ie Networked',con);
  if con = '' then con := 'null' else con := ''''+con+'''';
  ip := InputBox('IP Address','Enter the ip address, ie 192.168.134.9',ip);
  if ip = '' then ip := 'null' else ip := ''''+ip+'''';
  sn := InputBox('Serial number','Enter the serial number',sn);
  if sn = '' then sn := 'null' else sn := ''''+sn+'''';
  purdte := InputBox('Date Purchased','Enter the date of purchase',purdte);
  if purdte = '' then purdte := 'null' else purdte := ''''+purdte+'''';

  case c of
    0: begin
         ModifyDB(0,'select max(lineno) from prntr2');
         lne2 := ibQuery1.Fields[0].Value;
         str := 'INSERT INTO PRNTR2 (LINENO, LOC, SERIALNO, CONTYPE, IP_ADDRESS, SITE, PRNTR1, PURDTE, STATUS) VALUES ('+IntToStr(ibQuery1.Fields[0].Value+1);
         str := str + ','+loc+','+SN+','+CON+','+IP+','+STE+','+IntToStr(lne1)+','+PURDTE+',0)';
         ModifyDB(1,str);
       end;
  else
    begin
      str := 'update prntr2 set loc = '+loc+', serialno ='+sn+',contype='+con+',ip_address='+ip+',site='+ste+',purdte='+purdte+',status=0';
      str := str + ' where PRNTR1 ='+IntToStr(lne1);
      ModifyDB(1,str);
    end;
  end;
  RefreshPrinters(lne1,lne2);
end;

procedure TfrmComputerSystems.RefreshPrinters(a,b: Integer);
begin
  qryPrntr2.Active := False;
  qryPrntr1.Active := False;
  qryPrntr1.Active := True;
  qryPrntr2.Active := True;
  qryPrntr1.Locate('lineno', a, [loCaseInsensitive]);
end;

procedure TfrmComputerSystems.PrinterStatusClick(Sender: TObject);
begin
  if qryPrntr2.Fields[8].Value = 0 then
    qryPrntr2.Fields[8].Value := 1
  else
    qryPrntr2.Fields[8].Value := 0;
end;

procedure TfrmComputerSystems.Label13DblClick(Sender: TObject);
begin
  If Edit3.Text <> '' then
   begin
    if CheckSoftware(editSerialNumber.Text, Edit3.Text) = 1 then AddSoftInfo;
    with qrySoftComp do begin Active := False; Active := True; end;
    Edit3.Text := '';
    Edit4.Text := '';
    Edit5.Text := '';
   end;
end;

function TfrmComputerSystems.CheckSoftware(str1, str2: String): Integer;
begin
  with ibQuery2 do
   begin
    Active := False;
    Sql.Clear;
    Sql.Add('select lineno from comp_software where computer = '''+str1+''' and name = '''+str2+'''');
    Active := True;
    If Fields[0].IsNull then Result := 1 else Result := 0;
   end;
end;

procedure TfrmComputerSystems.AddSoftInfo;
var
  sqlStr: String;
  a: Integer;
begin   
  with ibQuery2 do
   begin
    Active := False;
    Sql.Clear;
    Sql.Add('select max(lineno) from comp_software');
    Active := True;
    if Fields[0].IsNull then a := 1 else a := Fields[0].Value + 1;
   end;
  sqlStr := 'insert into comp_software (lineno, name, key, installs, computer) values ('+IntToStr(a)+', '''+Edit3.Text+'''';
  if Edit4.Text <> '' then sqlStr := sqlStr + ','''+Edit4.Text+'''' else sqlStr := sqlStr + ', null'; 
  if Edit5.Text <> '' then sqlStr := sqlStr + ','''+Edit5.Text+'''' else sqlStr := sqlStr + ', null';
  sqlStr := sqlStr + ','''+editSerialNumber.Text+''')';
  with ibQuery2 do
   begin
    Active := False;
    Sql.Clear;
    Sql.Add(sqlStr);
    ExecSql;
    //messageDlg(sqlStr, mtInformation, [mbok],0);
   end;
end;

procedure TfrmComputerSystems.SetupPrgmList;
begin
  ListBox1.Items.Clear;
  with ibQuery2 do
   begin
    Active := False;
    Sql.Clear;
    Sql.Add('select distinct name from comp_software order by name');
    Active := True;
   end;
  while not ibQuery2.Eof do
   begin
    ListBox1.Items.Add(ibQuery2.Fields[0].Value);
    ibQuery2.Next;
   end;  
  if qryCompUser.Fields[0].isNull then editUserName.Text := '' else editUserName.Text := qryCompUser.Fields[0].Value;
  with qrySoftComp do
   BEGIN
    Active := False;
    Sql.Strings[2] := 'where b.computer = '''+editSerialNumber.Text+'''';
    Active := True;
   END;
end;

procedure TfrmComputerSystems.ListBox1DblClick(Sender: TObject);
begin
  Edit3.Text := ListBox1.Items[ListBox1.ItemIndex];
  //Label13DblClick(Self);
end;

procedure TfrmComputerSystems.ListLeaseexpiresClick(Sender: TObject);
var
  dte: TDate;
  sqlStr, SqlStr1: String;
begin
  dte := date+90;
  sqlStr1 := InputBox('Date to return by','Date:',DateToStr(dte));
  sqlStr := 'SELECT a.SERIAL_NO, a.MODEL, a.CTYPE, a.LOCATION, a.PURCHASED, '
  +'a.LEASED, a.STATUS, a.PO_NUM, a.QUOTE_NO, a.REPLACE FROM COMPUTERS a where '
  + 'a.status = 0 and a.LEASED = 0 and a.REPLACE < '''+sqlStr1+'''';
  ModifyDB(0,sqlStr);
end;

procedure TfrmComputerSystems.DBGrid3DblClick(Sender: TObject);
begin
  if messageDlg('Delete '+qrySoftComp.Fields[1].Value+' from '+editUsername.Text+'''s computer?', mtConfirmation, [mbyes,mbno],0) = mrYes then
   ModifyDB(1,'delete from comp_software where lineno ='+IntToStr(qrySoftComp.Fields[4].Value));
  qrySoftComp.Active := False;
  qrySoftComp.Active := True;
end;

procedure TfrmComputerSystems.dsQryComputersDataChange(Sender: TObject;
  Field: TField);
begin
  if not qryComputers.Fields[0].IsNull then
    begin
      editSerialNumber.Text := qryComputers.Fields[0].Value;
      Label10.Caption := 'Computer #'+IntToStr(qryComputers.RecNo)+' of ' +IntToStr(qryComputers.RecordCount);
    end;
end;

procedure TfrmComputerSystems.RefreshClick(Sender: TObject);
var
  str: String;
begin
  str := qryComputers.Fields[0].Value;
  DataModule2.IBTransaction1.Commit;
  with qryComputers do begin Active := False; Active := True; end;
  with qryCompUser do begin Active := False; Active := True; end;
  qryComputers.Locate('serial_no',str,[loCaseInsensitive]);
end;  

procedure TfrmComputerSystems.CleanerInstalled1Click(Sender: TObject);
begin
  If MessageDlg('Registry Cleaner Installed?', mtConfirmation, [mbyes, mbNo],0) = mryes then
    UpdateMaint('update computers set regcln = 0 where serial_no = '''+qryComputers.Fields[0].Value+'''')
  else
   UpdateMaint('update computers set regcln = 1 where serial_no = '''+qryComputers.Fields[0].Value+'''');
end;   

procedure TfrmComputerSystems.RegistryCleaned1Click(Sender: TObject);
var
  str: String;
begin
  str := '';
  str := InputBox('Registry Cleaned?', 'Date cleaned', DateToStr(Date));
  if str <> '' then
   begin
    try
     StrToDate(str);
     UpdateMaint('update computers set lstcln = '''+str+''' where serial_no = '''+qryComputers.Fields[0].Value+'''');
    except
     doNothing;
    end;
   end;
end;     

procedure TfrmComputerSystems.ReplacementDate1Click(Sender: TObject);
var
  dte: String;
begin
  dte := DateToStr(Date + 45);
  SelectInfo('where a.replace < '''+dte+''' and a.status < 2','order by b.serial_no');
{  with ibQuery2 do
    begin
      Active := False;
      Sql.Clear;
      Sql.Add('select b.fullname, a.purchased, a.model, a.ctype, a.leased, a.quote_no, a.replace');
      Sql.Add('from computers a  left join comp_user b on a.serial_no = b.serial_no');
      Sql.Add('where a.purchased >= ''1/1/2013''');
      Sql.Add('order by a.purchased');
    end; }
end;

procedure TfrmComputerSystems.doNothing;
begin
//
end;

procedure TfrmComputerSystems.UpdateMaint(sqlStr: String);
var
  str: String;
begin
  str := qryComputers.Fields[0].Value;
  with ibQuery2 do
   begin
    Active := False;
    Sql.Clear;
    Sql.Add(sqlStr);
    ExecSql;
   end;
  qryComputers.Active := False;
  qryComputers.Active := True;
  qryComputers.Locate('serial_no', str, [loCaseInsensitive]);
end;

procedure TfrmComputerSystems.DelCompClick(Sender: TObject);
begin
  If MessageDlg('Delete all information about the computer with serial number '+qryComputers.Fields[0].Value+'?', mtConfirmation, [mbyes, mbNo],0) = mryes then
   begin
    modifyDB(1, 'Delete from comp_software where computer = '''+qryComputers.Fields[0].Value+'''');  
    modifyDB(1, 'Delete from comp_user where serial_no = '''+qryComputers.Fields[0].Value+'''');
    modifyDB(1, 'Delete from computers where serial_no = '''+qryComputers.Fields[0].Value+'''');
   end;    
  qryComputers.Active := False;
  qryComputers.Active := True;
end;

procedure TfrmComputerSystems.DatePurchased1Click(Sender: TObject);
var
  dte2,snmbr: String;
  a: Integer;
begin
  a := 0;   //if a is 1 the program stops asking for input data
  if qryComputers.Fields[9].isNull then dte2 := DateToStr(Date()) else dte2 := DateToStr(qryComputers.Fields[9].Value);
  dte2 := InputBox('Date acquired', 'Date', dte2);
  if dte2 = '' then a := 1;   //the value 1 will cause program to stop asking for input
  if a <> 1 then              //like hitting the cancel button
   begin
    modifyDB(1, 'update computers set purchased = '''+dte2+''' where serial_no = '''+qryComputers.Fields[0].Value+'''');
    dte2 := DateToStr(StrToDate(dte2)+(365*3));
    //messageDlg(dte2, mtInformation, [mbok],0);
    modifyDB(1, 'update computers set replace = '''+dte2+''' where serial_no = '''+qryComputers.Fields[0].Value+'''');
   end;
  a := 0;   //if a is 1 the program stops asking for input data
  if qryComputers.Fields[10].isNull then dte2 := '0' else dte2 := IntToStr(qryComputers.Fields[10].Value);
  dte2 := InputBox('Leased ?', '0 - Yes, 1 - No', dte2);
  if dte2 = '' then a := 1;
  if a <> 1 then modifyDB(1, 'update computers set leased = '+dte2+' where serial_no = '''+qryComputers.Fields[0].Value+'''');
  
  a := 0;   //if a is 1 the program stops asking for input data
  if qryComputers.Fields[11].isNull then dte2 := '' else dte2 := qryComputers.Fields[11].Value;
  dte2 := InputBox('PO number?', 'Leave blank for no po', dte2);
  if dte2 = '' then a := 1;
  if a <> 1 then modifyDB(1, 'update computers set po_num = '''+dte2+''' where serial_no = '''+qryComputers.Fields[0].Value+'''');

  a := 0;   //if a is 1 the program stops asking for input data
  if qryComputers.Fields[12].isNull then dte2 := '' else dte2 := qryComputers.Fields[12].Value;
  dte2 := InputBox('Quote number', 'Leave blank for no quote', dte2);
  if dte2 = '' then a := 1;
  if a <> 1 then modifyDB(1, 'update computers set quote_no = '''+dte2+''' where serial_no = '''+qryComputers.Fields[0].Value+'''');
                                                                                                                                
  a := 0;   //if a is 1 the program stops asking for input data
  if qryComputers.Fields[13].isNull then
    dte2 := '0'
  else     //the next line reduces the value to two decimal points
    dte2 := FloatToStr(Trunc(qryComputers.Fields[13].Value*100)/100);
  dte2 := InputBox('Cost?', 'Numbers only, no $', dte2);
  if dte2 = '' then a := 1;
  if a <> 1 then modifyDB(1, 'update computers set cost = '''+dte2+''' where serial_no = '''+qryComputers.Fields[0].Value+'''');
  snmbr := qryComputers.Fields[0].Value;
  qryComputers.Active := False;
  qryComputers.Active := True;
  qryComputers.locate('serial_no', snmbr, [loCaseInsensitive]);
end;

procedure TfrmComputerSystems.DBGrid2DblClick(Sender: TObject);
begin
  if messageDlg('Delete lan speed test?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
    modifyDB(1,'delete from COMPUTERS_LST where serial_no = '''+qryComputers.Fields[0].Value+''' and seq = '+IntToStr(qryCust_LST.Fields[1].Value));
    qryCust_LST.Active := False;
    qryCust_LST.Active := True;
   End;
end;

procedure TfrmComputerSystems.Edit8Change(Sender: TObject);
begin
  With qryLST do
   begin
    Active := False;
    Sql.Strings[3] := 'where b.location = '''+edit8.text+'''';
    Active := True;
   end;
end;

procedure TfrmComputerSystems.EditSubscriptionClick(Sender: TObject);
var
  lne: Integer;
  id, key, pDate: String;
begin
  lne := 0; id := ''; key := ''; pDate := '';
  modifyDB(0,'select * from comp_malwre where id = '''+DbText2.Caption+'''');
  lne := ibQuery1.Fields[0].Value;
  id := InputBox('Editing subscription key','Enter ID number', ibQuery1.Fields[1].Value);
  if id <> '' then
    begin
      key := InputBox('Editing subscription key','Enter key number', ibQuery1.Fields[2].Value);
      if key <> '' THEN
        begin
          pDate := InputBox('Editing subscription key','Enter purchase date', DateToStr(ibQuery1.Fields[3].Value));
          if pDate <> '' then
             begin
               modifyDB(1,'update comp_malwre set id = '''+id+''', key = '''+key+''', purchased = '''+pDate+''' where lineno = '+IntToStr(lne));
               RefreshClick(Self);
             end;
        end;
    end;
  //messageDlg(InttoStr(ibQuery1.Fields[0].Value)+', '+ibQuery1.Fields[1].Value+', '+ibQuery1.Fields[2].Value+', '+DateToStr(ibQuery1.Fields[3].Value),mtInformation, [mbok],0);
end;

procedure TfrmComputerSystems.btnCompInfoClick(Sender: TObject);
var
  A: array[0..300] of Char;
  str: String;
begin
  str:='J:\IT System\Comp_Info\'+qryComputers.Fields[0].Value+'.pdf';
  strPCopy(A, str);
  ShellExecute(Handle,'open', A, nil,nil,SW_MAXIMIZE);
end;

procedure TfrmComputerSystems.btnOfficeVerClick(Sender: TObject);
var
  str, str2: String;
  yr,mn,dy: Word;
begin
  decodeDate(date, yr,mn,dy);
  str := inputBox('Office version','Office 2016 Pro','Office '+IntToStr(yr)+' H&B');
  str2 := inputBox('Office key','Install key','');
  if str2 <> '' then str2 := '''' + str2 + '''';
  if str = '' then str := 'null' else str := '''' + UpperCase(str) + '''';
  if str <> 'null' then
    begin
      modifyDB(0,'select max(lineno) from comp_software');
      dy := ibQuery1.Fields[0].Value + 1;
      modifyDB(1,'INSERT INTO COMP_SOFTWARE (LINENO, NAME, KEY, COMPUTER) VALUES ('+IntToStr(dy)+','+str+', '+str2+','''+qryComputers.Fields[0].Value+''')');
      qrySoftComp.Active := False;
      qrySoftComp.Active := True;
    end;
end;

procedure TfrmComputerSystems.btnSaveLSTClick(Sender: TObject);
var
  a: Integer;
  sqlStr: String;
begin
  sqlStr := 'values ('''+qryLST.Fields[1].Value + '''';  //serial_no
  With ibQuery1 do
   begin
    Active := False;
    Sql.Clear;
    Sql.Add('select max(seq) from computers_lst where serial_no = '''+qryLST.Fields[1].Value+'''');
    Active := True;
    If ibQuery1.Fields[0].IsNull then a := 0 else a := ibQuery1.Fields[0].Value;
    Active := False;
    Sql.Clear;
    Sql.Add('insert into computers_lst (serial_no,seq,dte,wrt,rd,comments)');
    sqlStr := sqlStr + ','+intToStr(a+1)+','''+Edit9.Text+'''';  //seq and dte
    If Edit10.Text = '' then sqlStr := sqlStr + ',null' else sqlStr := sqlStr + ','+Edit10.Text;  //wrt
    If Edit11.Text = '' then sqlStr := sqlStr + ',null' else sqlStr := sqlStr + ','+Edit11.Text;  //rd
    If Memo2.Text = '' then sqlStr := sqlStr + ',null)' else sqlStr := sqlStr + ','''+CheckInput(Memo2.Text)+''')'; //comments
    Sql.Add(sqlStr);
    If Edit8.Text <> '' then ExecSql;
    Edit10.Text := '';
    Edit11.Text := '';
    Memo2.Lines.Clear;
    Edit10.SetFocus;
   end;
  ibQuery3.Active := False;
  ibQuery3.Active := True;
end;

function TfrmComputerSystems.CheckInput(str1: String): String;
var
  i: Integer;
  str2: String;
begin
  str2 := '';
  For i := 1 to Length(str1) do
   If str1[i] = #039 then
    str2 := str2 + str1[i]+ #039
   else
    str2 := str2 + str1[i];
  Result := str2;
end;

procedure TfrmComputerSystems.Button1Click(Sender: TObject);
begin
  if messageDlg('Delete lan speed test entry?', mtConfirmation, [mbyes, mbno],0) = mrYes then
   ModifyDB(1,'delete from computers_lst where serial_no = '''+qryLST.Fields[1].Value+''' and seq = '+IntToStr(ibQuery3.Fields[4].Value));
  ibQuery3.Active := False;
  ibQuery3.Active := True;
end;

procedure TfrmComputerSystems.rgSwitchLocClick(Sender: TObject);
var
  i, a, b: Integer;
begin
  a := 48; b := 2; rgSwitchPorts.Caption := 'Ports'; rgSwitchPorts.Width := 113; rgSwitch2.Visible := False;
  case rgSwitchLoc.itemIndex of
   0: begin
       a := 24; b := 1; rgSwitchPorts.Caption := 'Switch 1'; rgSwitchPorts.Width := 57;
       rgSwitch2.Visible := True; Label21.Caption := 'http://192.168.134.240';
      end;
   1: Label21.Caption := 'http://192.168.134.244';
   2: Label21.Caption := 'http://192.168.134.243';
   3: Label21.Caption := 'http://192.168.134.242';
  end;
  with rgSwitchPorts do
   BEGIN
    Columns := b;
    Items.Clear;
    For i := 1 to a do rgSwitchPorts.Items.Add(IntToStr(i));
   END;
end;

procedure TfrmComputerSystems.Label21DblClick(Sender: TObject);
var
  A: array[0..300] of Char;
begin
  if Label21.Caption <> '' then
   begin
    strPCopy(A, Label21.Caption);
    ShellExecute(Handle,'open', A, nil,nil,SW_MAXIMIZE);
   end;
end; 

procedure TfrmComputerSystems.rgSwitch2Click(Sender: TObject);
begin
  prtNum(2, rgSwitch2.itemIndex+1);
end;

procedure TfrmComputerSystems.rgSwitchPortsClick(Sender: TObject);
begin
  prtNum(1, rgSwitchPorts.itemIndex+1);
end;

procedure TfrmComputerSystems.prtNum(a, i: Integer);
var
  prt, strI: String;
begin
  prt := RightStr(Label21.Caption,3);
  case i of
   1..9: strI := '0'+IntToStr(i);
  else
   strI := IntToStr(i);
  end;
  prt := prt + '-'+IntToStr(a)+'-'+strI;
  Memo3.Clear;
  Memo3.Lines.Add(prt);
end;

procedure TfrmComputerSystems.Button2Click(Sender: TObject);
var
  a: Integer;
  ip, prt, tgd, num, loc, srl: String;
begin
  if rgSwitchLoc.ItemIndex >= 0 then
   BEGIN
    Memo3.Lines.Clear;
    ModifyDB(0,'select max(lineno) from switches');
    if ibQuery1.Fields[0].IsNull then a := 1 else a := ibQuery1.Fields[0].Value;
    ip := RightStr(label21.Caption, 15);
    num := InputBox('Enter switch number', 'ie: 1 or 2', '1');
    prt := InputBox('Enter port number', 'ie: 6', '');        
    if messageDlg('Is port tagged', mtconfirmation, [mbyes, mbno], 0) = mrYes then tgd := '0' else tgd := '1';
    loc := InputBox('Enter switch location', 'ie: 601', '');
    frmSelectSerialNo.ShowModal;
    srl := frmSelectSerialNo.lblSN71.Caption;
    Memo3.Lines.Add(IntToStr(a+1));
    Memo3.Lines.Add(ip);
    Memo3.Lines.Add(num);
    Memo3.Lines.Add(prt);
    Memo3.Lines.Add(loc);
    Memo3.Lines.Add(srl);
    modifyDB(0,'select lineno from switches where serial_no = '''+srl+'''');
    if ibQuery1.Fields[0].IsNull then
     messageDlg('insert into switches (lineno, ipaddress, switch_no, port_no, tagged, location, serial_no) values ('+IntToStr(a+1)+', '''+ip+''','''+num+''','''+prt+''','''+tgd+''','''+loc+''','''+srl+''')', mtInformation, [mbok],0)
     //modifyDB(1,'insert into switches (lineno, ipaddress, switch_no, port_no, tagged, location, serial_no) values ('+IntToStr(a+1)+', '''+ip+''','''+num+''','''+prt+''','''+tgd+''','''+loc+''','''+srl+''')')
    else
     modifyDB(1,'update switches set ipaddress = '''+ip+''', switch_no = '+num+', port_no = '+prt+', tagged = '+tgd+', location = '''+loc+''', serial_no = '''+srl+''' where lineno = '+IntToStr(a)+')');
   END;
end;

procedure TfrmComputerSystems.Button3Click(Sender: TObject);
var
  A: array[0..300] of Char;
  url: String;
begin
  if NOT qryPrntr2.Fields[5].IsNull then
   begin
     url := 'http://'+qryPrntr2.Fields[5].Value;
     strPCopy(A, url);
     ShellExecute(Handle,'open', A, nil,nil,SW_MAXIMIZE);
   end;
end;

procedure TfrmComputerSystems.btnChangeReplaceDateClick(Sender: TObject);
var
  dte: String;
begin
  if qryComputers.Fields[22].isNull then dte := '' else dte := qryComputers.Fields[22].Value;
  dte := InputBox('Change replacement date','MM/DD/YYYY',dte);
  modifyDB(1,'update Computers set replace ='''+dte+''' where serial_no = '''+qryComputers.Fields[0].Value+'''');
  RefreshClick(Self);
end;

procedure TfrmComputerSystems.rgLeasedPg1Click(Sender: TObject);
{var
  str: String;}
begin
{  str := '';
  case rgLeasedPg1.ItemIndex of
   0: str := 'Where a.leased = 0';
   1: str := 'Where a.leased = 1';
   else
    str := '';
  end;
  with qryLeasedComps do
   begin
    Active := False;
    Sql.Strings[4] := str;
    Active := True;
   end;  }
end;

procedure TfrmComputerSystems.rgLeasedSortByClick(Sender: TObject);
{var
  str: String; }
begin
{  str := '';
  case rgLeasedSortBy.ItemIndex of
   0: str := 'order by c.description, b.fullname';
   1: str := 'order by b.fullname';
   else
    str := '';
  end;
  with qryLeasedComps do
   begin
    Active := False;
    Sql.Strings[5] := str;
    Active := True;
   end;  }
end;

procedure TfrmComputerSystems.DBGrid8DblClick(Sender: TObject);
begin
  //messageDlg(qryLeasedComps.Fields[0].Value,mtInformation,[mbok],0);
  qryComputers.Locate('serial_no',qryLeasedComps.Fields[0].Value,[loCaseInsensitive]);
  pg1.ActivePageIndex := 0;
end;

procedure TfrmComputerSystems.Edit12KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //qryLeasedComps.Locate('fullname',Edit12.Text,[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmComputerSystems.Newsubscription1Click(Sender: TObject);
var
  nId, nKey, nDate: String;
  a: Integer;
begin
  a := 0; nId := ''; nKey := ''; nDate := '';
  nId := UpperCase(InputBox('New subscription','Enter ID', ''));
  if nId <> '' then a := 1;
  if a > 0 then nKey := UpperCase(InputBox('New subscription','Enter Key',''));
  if nKey <> '' then a := a + 1;
  if a > 1 then nDate := UpperCase(InputBox('New subscription','Enter date purchased', DateToStr(date)));
  if nDate <> '' then a := a + 1;
  if a = 3 then
   begin
    modifyDB(0,'select lineno from comp_malwre where id = '''+nId+'''');
    if ibQuery1.Fields[0].IsNull then
     begin
      modifyDB(0,'select max(lineno) from comp_malwre');
      modifyDB(1,'insert into comp_malwre (lineno, id, key, purchased) values ('+IntToStr(ibQuery1.Fields[0].Value + 1)+','''+nId+''','''+nKey+''','''+nDate+''')');
     end;
   end;
end;

procedure TfrmComputerSystems.Thiscomputer1Click(Sender: TObject);
begin
  with frmIdList do
   begin
    ShowModal;
    if messageDlg('Assign id# '+ibQuery1.Fields[1].Value+' to computer '+qryComputers.Fields[0].Value+'?', mtConfirmation, [mbyes, mbno],0) = mrYes then
     modifyDB(1,'update computers set lineno_malwre = '+IntToStr(ibQuery1.Fields[0].Value)+' where serial_no = '''+qryComputers.Fields[0].Value+'''');
    Edit1.Text := qryComputers.Fields[0].Value;
    with qryComputers do
     begin
      Active := False;
      Active := True;
      Locate('serial_no', Edit1.Text, [loCaseInsensitive]);
     end;
    IBQuery1.Active := False;
    Edit1.Text := '';
   end;
end;

procedure TfrmComputerSystems.Change1Click(Sender: TObject);
begin
  Thiscomputer1Click(Self);
end;

procedure TfrmComputerSystems.ChangeStatus1Click(Sender: TObject);
var
  a: String;
begin
  a := inputBox('Status change','0-Active, 1-Replace, 2-UTD, 3-Dead','1');
  modifyDB(1,'update Computers set status = '+a+', RDATE = '''+DateToStr(date)+''' where serial_no = '''+qryComputers.Fields[0].Value+'''');
  RefreshClick(Self);
end;

procedure TfrmComputerSystems.Change_NameClick(Sender: TObject);
var
  chn: String;
begin
  if QryComputers.Fields[19].IsNull then
    chn := ''
  else
    chn := qryComputers.Fields[19].Value;
  chn := InputBox('Enter computer name','ie: Leased_BrianD',chn);
  if chn <> '' then
    modifyDB(1,'update computers set compname = '''+chn+''' where serial_no = '''+qryComputers.Fields[0].Value+'''');
  chn := qryComputers.Fields[0].Value;
  with qryComputers do
    begin
      Active := False;
      Active := True;
      Locate('serial_no', chn, [loCaseInsensitive]);
    end;
end;

procedure TfrmComputerSystems.hiscomputer2Click(Sender: TObject);
begin
  with frmIdList do
   begin
    modifyDB(1,'update computers set lineno_malwre = null where serial_no = '''+qryComputers.Fields[0].Value+'''');
    Edit1.Text := qryComputers.Fields[0].Value;
    with qryComputers do
     begin
      Active := False;
      Active := True;
      Locate('serial_no', Edit1.Text, [loCaseInsensitive]);
     end;
    IBQuery1.Active := False;
    Edit1.Text := '';
   end;
end;

procedure TfrmComputerSystems.Entiresubscription1Click(Sender: TObject);
begin
  with frmIdList do
   begin
    ShowModal;
    if messageDlg('Delete id# '+ibQuery1.Fields[1].Value+' to computer '+qryComputers.Fields[0].Value+'?', mtConfirmation, [mbyes, mbno],0) = mrYes then
     modifyDB(1,'update computers set lineno_malwre = '+IntToStr(ibQuery1.Fields[0].Value)+' where serial_no = '''+qryComputers.Fields[0].Value+'''');
    Edit1.Text := qryComputers.Fields[0].Value;
    with qryComputers do
     begin
      Active := False;
      Active := True;
      Locate('serial_no', Edit1.Text, [loCaseInsensitive]);
     end;
    IBQuery1.Active := False;
    Edit1.Text := '';
   end;
end;

procedure TfrmComputerSystems.byId1Click(Sender: TObject);
begin
  with ComputerSystemsUnit10.frmMalwareBytesUsage do
   begin
    ibQuery1.Active := False;
    IBQuery1.SQL.Clear;
    ibQuery1.SQL.Add('select c.id, c.key, c.purchased, a.serial_no, b.fullname');
    ibQuery1.SQL.Add('from comp_malwre c');
    ibQuery1.SQL.Add('left join computers a on c.lineno = a.lineno_malwre');
    ibQuery1.SQL.Add('left join comp_user b on b.serial_no = a.serial_no');
    ibQuery1.SQL.Add('where a.status < 3 order by c.ID');
    ibQuery1.Active := True;
    Caption := 'Computers by Malware ID subscription';
    ShowModal;
   end;
end;

end.



