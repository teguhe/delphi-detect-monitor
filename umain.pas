unit umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfMain = class(TForm)
    btnRefresh: TButton;
    lb1: TLabel;
    edCount: TEdit;
    lb11: TLabel;
    edResolution: TEdit;
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

procedure TfMain.btnRefreshClick(Sender: TObject);
var vRes : string;
  I: Integer;
begin

  edCount.Text:=IntToStr(Screen.MonitorCount);

  vRes:='';

  for I := 0 to StrToInt(edCount.Text)-1 do
  begin
    vRes:=vRes+'Monitor '+I.ToString+' : '+Screen.Monitors[i].Width.ToString+' x '+Screen.Monitors[i].Height.ToString+' ( '+Screen.Monitors[i].PixelsPerInch.ToString+' ppi / '+(Screen.Monitors[i].PixelsPerInch*100/96).ToString+' % ) | ';
  end;

  edResolution.Text:=vRes;


end;

end.
