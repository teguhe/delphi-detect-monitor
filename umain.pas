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
begin

    { TODO : show on monitor 1 }
    Application.CreateForm(TfTest, fTest);

    with fTest do
    begin
      BoundsRect            := Screen.Monitors[0].BoundsRect;
      WindowState           :=TWindowState.wsMaximized;
//      Top                   :=1;
      Left                  :=0;
//      Width                 :=Screen.Monitors[0].Width;
//      Height                 :=Screen.Monitors[0].Height;

      //Position              :=poScreenCenter;
      Caption               :='Monitor 1';
      lbTest.Caption        :='Monitor 1';

      lbTop.Caption:=fTest.Top.ToString;
      lbLeft.Caption:=fTest.Left.ToString;

      Show;
    end;

    { TODO : show on monitor 2 }
    Application.CreateForm(TfTest2, fTest2);

    with fTest2 do
    begin
      BoundsRect            := Screen.Monitors[1].BoundsRect;
      Left                  :=Screen.Monitors[0].Width;
      WindowState           :=TWindowState.wsMaximized;
//      Top                   :=0;

//      //Position              :=poScreenCenter;
//      Width                 :=Screen.Monitors[1].Width;
//      Height                :=Screen.Monitors[1].Height;
      Caption               :='Monitor 2';
      lbTest.Caption        :='Monitor 2';

      lbTop.Caption:=fTest2.Top.ToString;
      lbLeft.Caption:=fTest2.Left.ToString;

      Show;
    end;

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
