unit Model.CalculoHorarioSaida;

interface

uses
  System.SysUtils;

type
  TCalculoHorarioSaida = class
    private
      FHoraInicio,
      FHoraInicioAlmoco,
      FHoraFimAlmoco,
      FTempoExpediente : String;
      const
        MENSSAGEM_ERRO_1 = 'Campo Expediente inv?lido.' + #13#10 + 'Verifique!';
        MENSSAGEM_ERRO_2 = 'Campo Entrada inv?lido.' + #13#10 + 'Verifique!';
        MENSSAGEM_ERRO_3 = 'Campo Almo?o inv?lido.' + #13#10 + 'Verifique!';
        MENSSAGEM_ERRO_4 = 'Campo Final almo?o inv?lido.' + #13#10 + 'Verifique!';
        MENSSAGEM_ERRO_5 = 'O hor?rio de incio de almo?o n?o pode ser maior que o hor?rio de entrada'+ #13#10 + 'Verifique!';
        MENSSAGEM_ERRO_6 = 'O hor?rio de final de almo?o n?o pode ser maior que o hor?rio de inicio de almo?o'+ #13#10 + 'Verifique!';
    public
      property HoraInicio: String read FHoraInicio write FHoraInicio;
      property HoraInicioAlmoco: String read FHoraInicioAlmoco write FHoraInicioAlmoco;
      property HoraFimAlmoco: String read FHoraFimAlmoco write FHoraFimAlmoco;
      property TempoExpediente: String read FTempoExpediente write FTempoExpediente;
      function CalculaHoraSaida : String;
      function ValidaCampos : Integer;
      function RetornaMensagemErro : PWideChar;

  end;

implementation

{ TCalculoHorarioSaida }

function TCalculoHorarioSaida.CalculaHoraSaida: String;
var
  lTempoExpediente,
  lInicio,
  lInicioAlmoco,
  lRetornoAlmoco: TDateTime;
begin
   lInicio := StrTotime(FHoraInicio);
   lInicioAlmoco := StrTotime(FHoraInicioAlmoco);
   lRetornoAlmoco := StrTotime(FHoraFimAlmoco);
   lTempoExpediente := StrTotime(FTempoExpediente);

   Result := TimeToStr(lRetornoAlmoco +  (lTempoExpediente - (lInicioAlmoco - lInicio)));
end;

function TCalculoHorarioSaida.RetornaMensagemErro: PWideChar;
begin
  case ValidaCampos of
    1: Result := MENSSAGEM_ERRO_1;
    2: Result := MENSSAGEM_ERRO_2;
    3: Result := MENSSAGEM_ERRO_3;
    4: Result := MENSSAGEM_ERRO_4;
    5: Result := MENSSAGEM_ERRO_5;
    6: Result := MENSSAGEM_ERRO_6;
  end;
end;

function TCalculoHorarioSaida.ValidaCampos: Integer;
var
  i : Integer;
  lFHoraInicio,
  lHoraInicioAlmoco,
  lHoraFimAlmoco : TTime;
begin
  try
    i := 1;
    StrToTime(TempoExpediente);

    i := 2;
    StrToTime(FHoraInicio);

    i := 3;
    StrToTime(HoraInicioAlmoco);

    i := 4;
    StrToTime(HoraFimAlmoco);

    lFHoraInicio := StrToTime(FHoraInicio);
    lHoraInicioAlmoco := StrToTime(HoraInicioAlmoco);
    lHoraFimAlmoco:= StrToTime(HoraFimAlmoco);

    if lFHoraInicio > lHoraInicioAlmoco then
      i := 5
    else if lHoraInicioAlmoco >  lHoraFimAlmoco then
      i := 6
    else
      i := 0; // se chegou aqui n?o deu erro

    Result := i;
  except
    Result := i;
  end;

end;

end.
