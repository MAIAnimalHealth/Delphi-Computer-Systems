program ComputerSystems;

uses
  Forms,
  ComputerSystemsUnit1 in 'ComputerSystemsUnit1.pas' {frmComputerSystems},
  DbAccess in '..\..\..\DbAccess.pas' {DataModule2: TDataModule},
  ComputerSystemsUnit3 in 'ComputerSystemsUnit3.pas' {frmProcessor},
  ComputerSystemsUnit4 in 'ComputerSystemsUnit4.pas' {frmSelectUser},
  ComputerSystemsUnit5 in 'ComputerSystemsUnit5.pas' {frmRanking},
  ComputerSystemsUnit6 in 'ComputerSystemsUnit6.pas' {frmSelectLoc},
  ComputerSystemsUnit7 in 'ComputerSystemsUnit7.pas' {frmSelectSerialNo},
  ComputerSystemsUnit2 in 'ComputerSystemsUnit2.pas' {frmUsers},
  ComputerSystemsUnit9 in 'ComputerSystemsUnit9.pas' {frmIdList},
  ComputerSystemsUnit10 in 'ComputerSystemsUnit10.pas' {frmMalwareBytesUsage};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmComputerSystems, frmComputerSystems);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TfrmProcessor, frmProcessor);
  Application.CreateForm(TfrmSelectUser, frmSelectUser);
  Application.CreateForm(TfrmRanking, frmRanking);
  Application.CreateForm(TfrmSelectLoc, frmSelectLoc);
  Application.CreateForm(TfrmSelectSerialNo, frmSelectSerialNo);
  Application.CreateForm(TfrmUsers, frmUsers);
  Application.CreateForm(TfrmIdList, frmIdList);
  Application.CreateForm(TfrmMalwareBytesUsage, frmMalwareBytesUsage);
  Application.Run;
end.
