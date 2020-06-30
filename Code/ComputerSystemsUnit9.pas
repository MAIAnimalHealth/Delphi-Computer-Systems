unit ComputerSystemsUnit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DB, IBCustomDataSet, IBQuery, StdCtrls;

type
  TfrmIdList = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    IBQuery2: TIBQuery;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIdList: TfrmIdList;

implementation
  uses ComputerSystemsUnit1, DbAccess;

{$R *.dfm}

procedure TfrmIdList.FormShow(Sender: TObject);
begin
  ibQuery1.Active := True;   
  ibQuery2.Active := True;
end;

procedure TfrmIdList.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ibQuery1.Locate('id', edit1.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TfrmIdList.DBGrid1DblClick(Sender: TObject);
begin
  Edit1.Text := ibQuery1.Fields[1].Value;
  frmIdList.Close;
end;

end.
