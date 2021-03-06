unit View.Pages.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Router4D.Interfaces, Vcl.DBCtrls;


type
  TPagePrincipal = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render : Tform;
    procedure UnRender;
  end;

var
  PagePrincipal: TPagePrincipal;

implementation

{$R *.dfm}

uses
  View.Styles.Colors;

{ TPagePrincipal }

function TPagePrincipal.Render: Tform;
begin
  Result := Self;

  Panel1.Color := COLOR_BACKGROUND;
end;

procedure TPagePrincipal.UnRender;
begin

end;

end.
