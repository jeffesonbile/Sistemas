object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Delphi To Hero'
  ClientHeight = 604
  ClientWidth = 1035
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 604
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object pnlMenu: TPanel
      Left = 0
      Top = 0
      Width = 73
      Height = 604
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object btnPrincipal: TSpeedButton
        Left = 0
        Top = 75
        Width = 73
        Height = 72
        Align = alTop
        Caption = 'Principal'
        Flat = True
        OnClick = btnPrincipalClick
        ExplicitTop = 73
      end
      object btnUsuarios: TSpeedButton
        Left = 0
        Top = 219
        Width = 73
        Height = 72
        Align = alTop
        Caption = 'Usu'#225'rios'
        Flat = True
        OnClick = btnUsuariosClick
        ExplicitLeft = 16
        ExplicitTop = 203
      end
      object btnHorarios: TSpeedButton
        Left = 0
        Top = 147
        Width = 73
        Height = 72
        Align = alTop
        Caption = 'Hor'#225'rios'
        Flat = True
        OnClick = btnHorariosClick
        ExplicitTop = 141
      end
      object pnlLogo: TPanel
        Left = 0
        Top = 0
        Width = 73
        Height = 75
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
      end
    end
    object pnlFull: TPanel
      Left = 73
      Top = 0
      Width = 962
      Height = 604
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 962
        Height = 75
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
      end
      object pnlPrincipal: TPanel
        Left = 0
        Top = 75
        Width = 962
        Height = 529
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
      end
    end
  end
end
