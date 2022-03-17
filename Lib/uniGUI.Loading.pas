unit uniGUI.Loading;

interface

type
  ILoading = interface
    ['{31886DDA-BD81-4815-B4C7-E3E9259AB6C8}']
  end;

  TLoading = class(TInterfacedObject, ILoading)
  private
    FImage: string;
    const
      FFolder = '/files/loading/';
      FCSSFile = 'loading.css';
    class function CustomFile: string;
    function CustomCSS: string;
  public
    class function Render(aNumFile:string='01'): ILoading;
    constructor Create(aNumFile:string);
    destructor Destroy;override;
  end;

implementation

uses ServerModule, uniGUIClasses, uniGUITypes, System.Classes;

constructor TLoading.Create(aNumFile:string);
begin
  FImage := aNumFile;
  if Pos('#loading',UniServerModule.CustomCSS.Text) = 0 then
    UniServerModule.CustomCSS.Add(CustomCSS);
end;

function TLoading.CustomCSS: string;
begin
  Result :=
    '#loading .loading-indicator, .x-mask-msg {' +
    '  background-image: url('+FFolder+FImage+'.gif) !important; ' +
    '}';
end;

class function TLoading.CustomFile: string;
begin
  Result := FFolder+FCSSFile;
end;

destructor TLoading.Destroy;
begin

  inherited;
end;

class function TLoading.Render(aNumFile:string='01'): ILoading;
begin
  Result := Self.Create(aNumFile);
end;

initialization
  UniAddCSSLibrary(TLoading.CustomFile,True,[upoFolderFiles,upoPlatformBoth,upoDefer]);

end.
