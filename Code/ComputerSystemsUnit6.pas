unit ComputerSystemsUnit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, StdCtrls;

type
  TfrmSelectLoc = class(TForm)
    Panel1: TPanel;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelectLoc: TfrmSelectLoc;

implementation
  uses dbAccess;
  
{$R *.dfm}

procedure TfrmSelectLoc.FormShow(Sender: TObject);
begin
  frmSelectLoc.ibQuery1.Active := True;
  frmSelectLoc.label1.Caption := '';
end;

procedure TfrmSelectLoc.DBGrid1DblClick(Sender: TObject);
begin
  frmSelectLoc.label1.Caption := ibQuery1.Fields[0].Value;
  frmSelectLoc.Close;
end;

end.
