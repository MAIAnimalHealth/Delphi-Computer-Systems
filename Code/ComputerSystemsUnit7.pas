unit ComputerSystemsUnit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ExtCtrls, StdCtrls;

type
  TfrmSelectSerialNo = class(TForm)
    Panel1: TPanel;
    DataSource71: TDataSource;
    DBGrid71: TDBGrid;
    IBQuery71: TIBQuery;
    lblSN71: TLabel;
    procedure DBGrid71DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelectSerialNo: TfrmSelectSerialNo;

implementation
  uses ComputerSystemsUnit1, DbAccess;
{$R *.dfm}

procedure TfrmSelectSerialNo.DBGrid71DblClick(Sender: TObject);
begin
  lblSN71.Caption := ibQuery71.Fields[0].Value;
  frmSelectSerialNo.Close;
end;

procedure TfrmSelectSerialNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibQuery71.Active := False;
end;

procedure TfrmSelectSerialNo.FormShow(Sender: TObject);
begin
  ibQuery71.Active := True;
end;

end.
