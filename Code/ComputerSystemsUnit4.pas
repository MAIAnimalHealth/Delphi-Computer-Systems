unit ComputerSystemsUnit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ExtCtrls, StdCtrls;

type
  TfrmSelectUser = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    qrySelectUsername: TIBQuery;
    dsSelectUsername: TDataSource;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelectUser: TfrmSelectUser;

implementation
  uses dbAccess;
{$R *.dfm}

procedure TfrmSelectUser.FormShow(Sender: TObject);
begin
  qrySelectUsername.Active := True;
  Edit1.Text := '';
  Edit1.SetFocus;
end;

procedure TfrmSelectUser.DBGrid1DblClick(Sender: TObject);
begin
  Label1.Caption := '';
  frmSelectUser.Close;
end;

procedure TfrmSelectUser.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  qrySelectUsername.Locate('fullname', edit1.Text, [loPartialKey, loCaseInsensitive]);
end;

end.
