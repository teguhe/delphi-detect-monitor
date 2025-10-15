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
    btnCreateForm: TButton;
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCreateFormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    mon1Width, mon1height : Integer;
  end;

var
  fMain: TfMain;

implementation

uses
  uTest, uTest2;

{$R *.dfm}

procedure TfMain.btnCreateFormClick(Sender: TObject);
var I: Integer;
var
  MonitorCount: Integer;
  Monitor: TMonitor;
begin

  MonitorCount := Screen.MonitorCount;

  if MonitorCount < 2 then
  begin
    ShowMessage('Monitor ke-2 tidak tersedia.');
    Exit;
  end;

  // Ambil monitor ke-2
  Monitor := Screen.Monitors[0]; // 0 = utama, 1 = monitor kedua

  // Buat Form2 jika belum dibuat
  if not Assigned(fTest2) then
    Application.CreateForm(TfTest2, fTest2);
    fTest2.BorderStyle:=bsNone;
    fTest2.WindowState:=TWindowState.wsMaximized;
    fTest2.Width:=Screen.Monitors[1].Width;
    fTest2.Height:=Screen.Monitors[1].Height;

  // Atur posisi Form2 ke monitor kedua
    fTest2.Left := Monitor.Width;
    fTest2.Top := Monitor.Top;

  // Tampilkan Form2
    fTest2.Show;


end;

procedure TfMain.btnRefreshClick(Sender: TObject);
var vRes : string;
  I: Integer;
begin

  edCount.Text:=IntToStr(Screen.MonitorCount);

  vRes:='';

  for I := 0 to StrToInt(edCount.Text)-1 do
  begin
    vRes:=vRes+'Monitor '+I.ToString+' : '+Screen.Monitors[i].Width.ToString+' x '+Screen.Monitors[i].Height.ToString+' ( '+Screen.Monitors[i].PixelsPerInch.ToString+' ppi / '+(Screen.Monitors[i].PixelsPerInch*100/96).ToString+' % ) | ';
    //Screen[i].BoundsRect := Screen.Monitors[i].BoundsRect;
  end;
//
//  mon1Width
//  mon1height

  edResolution.Text:=vRes;

  btnCreateForm.Visible:=True;
  btnCreateForm.Caption:='Create '+IntToStr(Screen.MonitorCount)+' Form Test!';


end;

end.
