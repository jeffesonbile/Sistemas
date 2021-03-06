unit Vew.Main;

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
  Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    pnlMain: TPanel;
    pnlMenu: TPanel;
    pnlFull: TPanel;
    pnlTop: TPanel;
    pnlPrincipal: TPanel;
    pnlLogo: TPanel;
    btnPrincipal: TSpeedButton;
    btnHorarios: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnPrincipalClick(Sender: TObject);
    procedure btnHorariosClick(Sender: TObject);
  private
    procedure ApplyStyle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Router4D,
  View.Styles.Colors,
  View.Pages.Principal;

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  ApplyStyle;

  TRouter4D.Render<TPagePrincipal>.SetElement(pnlPrincipal, pnlMain);

end;

procedure TfrmPrincipal.btnUsuariosClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Usuarios');
end;

procedure TfrmPrincipal.btnHorariosClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Horarios');
end;

procedure TfrmPrincipal.btnPrincipalClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Principal');
end;

procedure TfrmPrincipal.ApplyStyle;
begin
  pnlPrincipal.Color := COLOR_BACKGROUND;
  pnlTop.Color := COLOR_BACKGROUND_TOP;
  pnlLogo.Color := COLOR_BACKGROUND_DESTAK;
  pnlMenu.Color := COLOR_BACKGROUND_MENU;
  Self.Font.Color := FONT_COLOR;
  Self.Font.Size := FONT_H6;
end;

end.

