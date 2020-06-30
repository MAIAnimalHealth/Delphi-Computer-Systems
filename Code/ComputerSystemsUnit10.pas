unit ComputerSystemsUnit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, ExtCtrls, Grids, DBGrids;

type
  TfrmMalwareBytesUsage = class(TForm)
    Panel1: TPanel;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMalwareBytesUsage: TfrmMalwareBytesUsage;

implementation
  uses DbAccess;

{$R *.dfm}

end.
