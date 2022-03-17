unit uMFormCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, UniFSConfirm, uniButton, unimButton;

type
  TUnimForm1 = class(TUnimForm)
    btnAlert: TUnimButton;
    btnInfo: TUnimButton;
    btnCustom: TUnimButton;
    btnQuestion: TUnimButton;
    btnMask: TUnimButton;
    Confirm: TUniFSConfirm;
    procedure btnMaskClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnCustomClick(Sender: TObject);
    procedure btnQuestionClick(Sender: TObject);
    procedure btnAlertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}


procedure TUnimForm1.btnAlertClick(Sender: TObject);
begin

  Confirm.TypeColor := TTypeColor.orange;
  Confirm.Theme := TTheme.modern;
  Confirm.Icon := 'fa fa-exclamation-circle';
  Confirm.Alert('Alert','Alert powerd by Falcon');

end;

procedure TUnimForm1.btnCustomClick(Sender: TObject);
begin
    Confirm := TUniFSConfirm.Create(Self);
  try
    Confirm.Theme := TTheme.dark;
    Confirm.TypeColor := TTypeColor.orange;
    Confirm.boxWidth := '80%';
    Confirm.Alert('My Custom Dialog','Custom');
  finally
    FreeAndNil(Confirm);
  end;
end;

procedure TUnimForm1.btnInfoClick(Sender: TObject);
begin
  Confirm.TypeColor := TTypeColor.blue;
  Confirm.Theme := TTheme.supervan;
  Confirm.Alert('Alert','Alert powerd by Falcon');
end;

procedure TUnimForm1.btnMaskClick(Sender: TObject);
begin
    {Attention -> Habiliting -> UniMainModule.EnableSynchronousOperations = True}
  try
    Confirm.ShowMask('Carregando...');

    Sleep(5000); {My long task}
  finally
    Confirm.RemoveMask;
  end;

end;

procedure TUnimForm1.btnQuestionClick(Sender: TObject);
begin
    Confirm.Question('Hello','Are you sure to continue?','fa fa-smile-o', TTypeColor.blue, TTheme.modern,
    procedure(Button: TConfirmButton)
    begin
      if Button = Yes then
      Confirm.Alert('Success', ' ', 'fa fa-check-circle-o', TTypeColor.green, TTheme.modern);
      if Button = No then
     // Confirm.Alert('Canceled', ' ', 'fa fa-exclamation-circle', TTypeColor.blue, TTheme.modern);
      try
        Confirm.ShowMask('Carregando...');

        Sleep(3000); {My long task}
      finally
        Confirm.RemoveMask;
      end;

    end );
end;

end.
