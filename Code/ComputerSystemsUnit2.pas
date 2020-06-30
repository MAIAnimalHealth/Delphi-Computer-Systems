unit ComputerSystemsUnit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ExtCtrls, StdCtrls;

type
  TfrmUsers = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    qryUsers: TIBQuery;
    dsQryUsers: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsers: TfrmUsers;

implementation
   Uses dbAccess;
{$R *.dfm}

procedure TfrmUsers.FormShow(Sender: TObject);
begin
  qryUsers.Active := True;
  Edit1.Text := '';
  Edit1.SetFocus;
end;

procedure TfrmUsers.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  qryUsers.Locate('fullname', Edit1.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TfrmUsers.DBGrid1DblClick(Sender: TObject);
begin
  Edit1.Text := qryUsers.Fields[1].Value;
  frmUsers.Close;
end;

procedure TfrmUsers.Button1Click(Sender: TObject);
begin
  Edit1.Text := 'Cancel';
  frmUsers.Close;
end;

procedure TfrmUsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryUsers.Active := False;
end;

end.

