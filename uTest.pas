unit uTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfTest = class(TForm)
    lbTest: TLabel;
    lbTop: TLabel;
    lbLeft: TLabel;

  private
    { Private declarations }

    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;

  public
    { Public declarations }


  end;

var
  fTest: TfTest;

implementation

{$R *.dfm}


procedure TfTest.WMSysCommand(var Msg: TWMSysCommand);
begin
  if ((Msg.CmdType and $FFF0) = SC_MOVE) or
    ((Msg.CmdType and $FFF0) = SC_SIZE) then
  begin
    lbTop.Caption:=ftest.Top.ToString;
    lbLeft.Caption:=ftest.Left.ToString;
    //Msg.Result := 0;
    //Exit;
  end;
  inherited;
end;

end.
