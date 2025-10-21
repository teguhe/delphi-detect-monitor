unit uTest2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfTest2 = class(TForm)
    lbTest: TLabel;
    lbTop: TLabel;
    lbLeft: TLabel;
    btnClose: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTest2: TfTest2;

implementation

{$R *.dfm}

procedure TfTest2.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  //Release;

end;

procedure TfTest2.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#27 then Close;

end;

procedure TfTest2.FormShow(Sender: TObject);
begin

  fTest2.lbLeft.Caption:='Actual Position = '+fTest2.Width.ToString+'x'+fTest2.Height.ToString;

end;

end.
