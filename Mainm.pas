unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, unimButton, UniFSToast, UniFSConfirm, uniEdit,
  unimEdit, uniToolBar, unimToolbar;

type
  TMainmForm = class(TUnimForm)
    UnimButton1: TUnimButton;
    UnimToolBar1: TUnimToolBar;
    procedure btnCustomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uLogin, uniGUI.Loading;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.btnCustomClick(Sender: TObject);
var
  Confirm: TUniFSConfirm;
begin

end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
