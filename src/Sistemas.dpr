program Sistemas;

uses
  Vcl.Forms,
  Vew.Main in 'view\Vew.Main.pas' {frmPrincipal},
  View.Styles.Colors in 'view\Styles\View.Styles.Colors.pas',
  View.Routers in 'view\Routers\View.Routers.pas' {View.Pages.Form.Template in 'view\Pages\View.Pages.Form.Template.pas' {FormTemplate},
  View.Pages.Form.Template in 'view\Pages\View.Pages.Form.Template.pas' {FormTemplate},
  View.Pages.Principal in 'view\Pages\View.Pages.Principal.pas' {PagePrincipal},
  View.Pages.Usuarios in 'view\Pages\View.Pages.Usuarios.pas' {PageUsuarios},
  View.Pages.Horarios in 'view\Pages\View.Pages.Horarios.pas' {PageHorarios},
  Model.CalculoHorarioSaida in 'Model\Model.CalculoHorarioSaida.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TFormTemplate, FormTemplate);
  Application.CreateForm(TPageUsuarios, PageUsuarios);
  Application.CreateForm(TPageUsuarios, PageUsuarios);
  Application.CreateForm(TPageUsuarios, PageUsuarios);
  Application.CreateForm(TPagePrincipal, PagePrincipal);
  Application.CreateForm(TFormTemplate, FormTemplate);
  Application.CreateForm(TPagePrincipal, PagePrincipal);
  Application.CreateForm(TPageUsuarios, PageUsuarios);
  Application.CreateForm(TPageHorarios, PageHorarios);
  Application.Run;
end.
