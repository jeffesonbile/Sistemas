unit View.Pages.Form.Template;

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
  Router4D.Interfaces,
  Vcl.StdCtrls,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons;

type
  TFormTemplate = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    lblTitulo: TLabel;
    btnConfiguracoes: TSpeedButton;
    btnRelatorios: TSpeedButton;
    btnHistorico: TSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FEndPoint : String;
    FPK : String;
    FTitle : String;
    procedure ApplyStyle;
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  public
  end;

var
  FormTemplate: TFormTemplate;

implementation

{$R *.dfm}

uses
View.Styles.Colors;

{ TFormTemplate }

procedure TFormTemplate.ApplyStyle;
begin
  Panel1.Color := COLOR_BACKGROUND;
  Panel2.Color := COLOR_C1;
  Panel3.Color := COLOR_BACKGROUND;
  Panel4.Color := COLOR_C1;

  lblTitulo.Font.Size := FONT_H5;
  lblTitulo.Font.Color := FONT_COLOR3;
  lblTitulo.Font.Name := 'Segoe UI';

end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
  ApplyStyle;
end;

function TFormTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFormTemplate.UnRender;
begin

end;

end.
