unit Forms.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FormStand, SubjectStand,
  FMX.Objects;

type
  TMainForm = class(TForm)
    OpenButton: TButton;
    StyleBook1: TStyleBook;
    FormStand1: TFormStand;
    CloseButton: TButton;
    Rectangle1: TRectangle;
    procedure OpenButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

uses Forms.Second;

procedure TMainForm.OpenButtonClick(Sender: TObject);
var
  LFormInfo: TFormInfo<TSecondForm>;
begin
  LFormInfo := FormStand1.GetFormInfo<TSecondForm>(True, Rectangle1);
  if not LFormInfo.IsVisible then
    LFormInfo.Show;
end;

procedure TMainForm.CloseButtonClick(Sender: TObject);
var
  LFormInfo: TFormInfo<TSecondForm>;
begin
  LFormInfo := FormStand1.FormInfo<TSecondForm>;
  if Assigned(LFormInfo) then
    LFormInfo.HideAndClose;
end;

end.