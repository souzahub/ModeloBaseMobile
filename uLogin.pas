unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniImageList, uniButton, uniBitBtn, unimBitBtn,
  uniEdit, unimEdit, uniLabel, unimLabel, Vcl.Imaging.pngimage, uniImage,
  unimImage;

type
  TformLogin = class(TUnimLoginForm)
    CntPnlTop: TUnimContainerPanel;
    cp: TUnimContainerPanel;
    UnimImage1: TUnimImage;
    cpTitulo: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    edSenha: TUnimEdit;
    edUsuario: TUnimEdit;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimContainerPanel3: TUnimContainerPanel;
    sbConectarOs: TUnimBitBtn;
    sbSair: TUnimBitBtn;
    UniNativeImageList1: TUniNativeImageList;
    procedure sbConectarOsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function formLogin: TformLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniGUI.Loading;

function formLogin: TformLogin;
begin
  Result := TformLogin(UniMainModule.GetFormInstance(TformLogin));
end;

procedure TformLogin.sbConectarOsClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

initialization
  RegisterAppFormClass(TformLogin);

end.
