program detect_monitor;

uses
  Vcl.Forms,
  umain in 'umain.pas' {fMain},
  uTest in 'uTest.pas' {fTest},
  uTest2 in 'uTest2.pas' {fTest2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfTest2, fTest2);
  Application.Run;
end.
