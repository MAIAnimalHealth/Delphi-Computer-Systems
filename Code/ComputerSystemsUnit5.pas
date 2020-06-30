unit ComputerSystemsUnit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ShellAPI,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, StdCtrls;
//  frxClass, frxDBSet;

type
  TfrmRanking = class(TForm)
    Panel1: TPanel;
    qryCompList: TIBQuery;
    dsQryCompList: TDataSource;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRanking: TfrmRanking;

implementation
  Uses dbAccess;

{$R *.dfm}

procedure TfrmRanking.Button1Click(Sender: TObject);
var
  str: String;
  b: array[0..300] of Char;
begin
  qryCompList.First;
  Memo1.Lines.Clear;
  while not qryCompList.Eof do
   begin
    str := qryCompList.Fields[0].Value + ',' + qryCompList.Fields[1].Value +',';
    if not qryCompList.Fields[2].isNull then str := str + qryCompList.Fields[2].Value + ',' else str := str + ',';
    if not qryCompList.Fields[3].isNull then str := str + qryCompList.Fields[3].Value + ',' else str := str + ',';
    if not qryCompList.Fields[4].isNull then str := str + qryCompList.Fields[4].Value + ',' else str := str + ',';
    if not qryCompList.Fields[5].isNull then str := str + qryCompList.Fields[5].Value + ',' else str := str + ',';
    if not qryCompList.Fields[6].isNull then str := str + qryCompList.Fields[6].Value + ',' else str := str + ',';
    //if not qryCompList.Fields[7].isNull then str := str + IntToStr(qryCompList.Fields[7].Value);
    Memo1.Lines.Add(str);
    qryCompList.Next;
   end;
  Memo1.Lines.SaveToFile('J:\Transfer\compList.csv');
  strPCopy(b, 'J:\Transfer\compList.csv');
  ShellExecute(Handle,'open', b, nil,nil,SW_MAXIMIZE);
end;

end.
