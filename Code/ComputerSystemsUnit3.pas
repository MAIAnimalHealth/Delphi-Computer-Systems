unit ComputerSystemsUnit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ShellAPI,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ExtCtrls, StdCtrls;

type
  TfrmProcessor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    qryGetProcessor: TIBQuery;
    dsGetProcessor: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    btnAddNew: TButton;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnAddNewClick(Sender: TObject);
    procedure query1(i: Integer; sqlStr: String);
    procedure Label2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure AddProcessorInfo();
    procedure AddMemoryInfo();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcessor: TfrmProcessor;

implementation
  uses dbAccess, ComputerSystemsUnit1;
{$R *.dfm}

procedure TfrmProcessor.FormShow(Sender: TObject);
begin
  qryGetProcessor.Active := True;
end;

procedure TfrmProcessor.btnAddNewClick(Sender: TObject);
begin
  if frmProcessor.Caption = 'Select or add a processor' then AddProcessorInfo() else AddMemoryInfo();
end;  

procedure TfrmProcessor.AddMemoryInfo();
var
  lne, c: Integer;
  mDesc, mSpeed, mBit, mDDr, mValue, str: String;
begin
  c := 0;
  Query1(0, 'select max(lineno) from computers_memory');
  if ibQuery1.Fields[0].IsNull then lne := 1 else lne := ibQuery1.Fields[0].Value + 1;
  mDesc := InputBox('Memory description', 'ie: PC2700', '');
  mSpeed := InputBox('Memory speed', 'ie: 667', '');
  if mSpeed <> '' then c := 1;
  mBit := InputBox('64 bit compatible', 'No -> 4, Yes -> 8', '');
  if mBit <> '' then c := c + 1;
  mDDR := InputBox('DDR Type', 'DDR -> 2, DDR2 -> 4, DDR3 -> 8', '');
  if mDDR <> '' then c := c + 1;
  if c = 3 then mValue := IntToStr(StrToInt(mSpeed) * StrToInt(mBit) * StrToInt(mDDR)) else mValue := 'null';
  if mDesc <> '' then
   begin
    str := 'insert into computers_memory (lineno, description, speed, bit_32_64, ddr_type,mValue) values ('+IntToStr(lne)+', '''+mDesc+'''';
    if mSpeed <> '' then str := str + ','+mSpeed else str := str + ',null';   
    if mBit <> '' then str := str + ','+mBit else str := str + ',null';
    if mDDR <> '' then str := str + ','+mDDR else str := str + ',null';
    if mValue <> '' then str := str + ','+mValue+')' else str := str + ',null)';
    Query1(1,str);
    with qryGetProcessor do
     begin
      Active := False;
      Active := True;
      Locate('description', mDesc, [loCaseInsensitive]);
     end;
   end;
end;

procedure TfrmProcessor.AddProcessorInfo();
var
  lne: Integer;
  pDesc, pMark, pRank, str: String;
begin
  Query1(0, 'select max(lineno) from computers_cpu');
  if ibQuery1.Fields[0].IsNull then lne := 1 else lne := ibQuery1.Fields[0].Value + 1;
  pDesc := InputBox('Processor description', 'ie: Pentium 4 @ 2.80 GHz', '');
  pMark := InputBox('Processor mark', 'ie: 414', '');
  pRank := InputBox('Process rank', 'ie: 1039', '');
  if pDesc <> '' then
   begin
    str := 'insert into computers_cpu (lineno, processor, mark, rank) values ('+IntToStr(lne)+', '''+pDesc+'''';
    if pMark <> '' then str := str + ','+pMark else str := str + ',null';
    if pRank <> '' then str := str + ','+pRank+')' else str := str + ',null)';
    Query1(1,str);
    with qryGetProcessor do
     begin
      Active := False;
      Active := True;
      Locate('processor', pDesc, [loCaseInsensitive]);
     end;
   end;
end;

procedure TfrmProcessor.Query1(i: Integer; sqlStr: String);
begin
  With ibQuery1 do
   begin
    Active := False;
    Sql.Clear;
    Sql.Add(sqlStr);
    Case i of
     0: Active := True;
     1: ExecSql;
    end;
   end;
end;

procedure TfrmProcessor.Label2Click(Sender: TObject);
var
  A: array[0..300] of Char;
begin
  strPCopy(A, 'http://www.cpubenchmark.net/cpu_list.php');
  ShellExecute(Handle,'open', A, nil,nil,SW_MAXIMIZE);
  //http://www.cpubenchmark.net/cpu_list.php;
end;

procedure TfrmProcessor.DBGrid1DblClick(Sender: TObject);
begin
  frmProcessor.Close;
end;

end.
