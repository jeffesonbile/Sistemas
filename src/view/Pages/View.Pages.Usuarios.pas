unit View.Pages.Usuarios;

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
  View.Pages.Form.Template,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons;

type
  [ClassToBind('','','Cadastro de usu?rios')]
  TPageUsuarios = class(TFormTemplate)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageUsuarios: TPageUsuarios;

implementation

{$R *.dfm}

procedure TPageUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  lblTitulo.Caption := 'Cadastro de usu?rios:';
end;

end.
