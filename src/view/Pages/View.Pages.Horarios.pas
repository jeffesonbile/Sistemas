unit View.Pages.Horarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Pages.Form.Template, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TPageHorarios = class(TFormTemplate)
    lblExpediente: TLabel;
    lblHorarioEntrada: TLabel;
    Panel5: TPanel;
    edtTempoExpediente: TMaskEdit;
    lblInicioAlmolco: TLabel;
    lblFinalAlmoco: TLabel;
    edtHoraInicio: TMaskEdit;
    edtHoraSaidaAlmoco: TMaskEdit;
    edtHoraRetornoAlmoco: TMaskEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    lblTituloResultado: TLabel;
    lblResultado: TLabel;
    btnCalcular: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);

  private
    { Private declarations }
    procedure ApplyStyle;
    procedure CalcularHorarioSaida;
    procedure LimparResultado;
  public
    { Public declarations }
  end;

var
  PageHorarios: TPageHorarios;

implementation

{$R *.dfm}

uses
  View.Styles.Colors,
  Model.CalculoHorarioSaida;


procedure TPageHorarios.ApplyStyle;
begin
  lblExpediente.Font.Size := FONT_H7;
  lblExpediente.Font.Color := FONT_COLOR3;
  lblExpediente.Font.Name := 'Segoe UI';

  lblHorarioEntrada.Font.Size := FONT_H7;
  lblHorarioEntrada.Font.Color := FONT_COLOR3;
  lblHorarioEntrada.Font.Name := 'Segoe UI';

  lblInicioAlmolco.Font.Size := FONT_H7;
  lblInicioAlmolco.Font.Color := FONT_COLOR3;
  lblInicioAlmolco.Font.Name := 'Segoe UI';

  lblFinalAlmoco.Font.Size := FONT_H7;
  lblFinalAlmoco.Font.Color := FONT_COLOR3;
  lblFinalAlmoco.Font.Name := 'Segoe UI';

  lblTituloResultado.Font.Size := FONT_H1;
  lblTituloResultado.Font.Color := FONT_COLOR3;
  lblTituloResultado.Font.Name := 'Segoe UI';

  lblResultado.Font.Size := FONT_H1_PLUS;
  lblResultado.Font.Color := COLOR_BACKGROUND_DESTAK;
  lblResultado.Font.Name := 'Segoe UI';
end;

procedure TPageHorarios.btnCalcularClick(Sender: TObject);
begin
  inherited;
  CalcularHorarioSaida;
end;

procedure TPageHorarios.CalcularHorarioSaida;
var
  calculos: TCalculoHorarioSaida;
begin
  calculos := TCalculoHorarioSaida.Create;
  try
    LimparResultado;
    calculos.HoraInicio := edtHoraInicio.Text;
    calculos.HoraInicioAlmoco := edtHoraSaidaAlmoco.Text;
    calculos.HoraFimAlmoco := edtHoraRetornoAlmoco.Text;
    calculos.TempoExpediente := edtTempoExpediente.Text;

    case calculos.ValidaCampos of
      0://VALIDOU CORRETAMENTE
        begin
           lblTituloResultado.Caption := 'O Seu hor?rio de sa?da ?:';
           lblResultado.Caption := calculos.CalculaHoraSaida;
         end;
      1://RETORNOU C?DIGO DE ERRO 1
        begin
          Application.MessageBox(calculos.RetornaMensagemErro, 'Aten??o', MB_ICONEXCLAMATION + MB_OK);
          edtTempoExpediente.SetFocus;
        end;
      2://RETORNOU C?DIGO DE ERRO 2
        begin
          Application.MessageBox(calculos.RetornaMensagemErro, 'Aten??o', MB_ICONEXCLAMATION + MB_OK);
          edtHoraInicio.SetFocus;
        end;
      3://RETORNOU C?DIGO DE ERRO 3
        begin
          Application.MessageBox(calculos.RetornaMensagemErro, 'Aten??o', MB_ICONEXCLAMATION + MB_OK);
          edtHoraSaidaAlmoco.SetFocus;
        end;
      4://RETORNOU C?DIGO DE ERRO 4
        begin
          Application.MessageBox(calculos.RetornaMensagemErro, 'Aten??o', MB_ICONEXCLAMATION + MB_OK);
          edtHoraRetornoAlmoco.SetFocus;
        end;
      5://RETORNOU C?DIGO DE ERRO 5
        begin
          Application.MessageBox(calculos.RetornaMensagemErro, 'Aten??o', MB_ICONEXCLAMATION + MB_OK);
          edtHoraSaidaAlmoco.SetFocus;
        end;
      6://RETORNOU C?DIGO DE ERRO 6
        begin
          Application.MessageBox(calculos.RetornaMensagemErro, 'Aten??o', MB_ICONEXCLAMATION + MB_OK);
          edtHoraRetornoAlmoco.SetFocus;
        end;
    end;
  finally
    calculos.Free;
  end;
end;

procedure TPageHorarios.FormCreate(Sender: TObject);
begin
  inherited;
  lblTitulo.Caption := 'Calcular Horario de sa?da:';
  ApplyStyle;

end;

procedure TPageHorarios.LimparResultado;
begin
  lblTituloResultado.Caption := '';
  lblResultado.Caption := '';
end;

end.
