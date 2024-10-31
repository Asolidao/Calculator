object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Oficina de Programa'#231#227'o Visual'
  ClientHeight = 441
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 607
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 500
      end
      item
        Alignment = taCenter
        Width = 500
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 24
    object NotePad1: TMenuItem
      Caption = 'NotePad'
      OnClick = NotePad1Click
    end
    object Calculadora2: TMenuItem
      Caption = 'Calculadora'
      OnClick = Calculadora2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object sair2: TMenuItem
      Caption = 'sair'
      OnClick = sair2Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 184
    Top = 24
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 24
    object Aplicativos1: TMenuItem
      Caption = 'Aplicativos'
      object Calculadora1: TMenuItem
        Caption = 'Calculadora'
        OnClick = Calculadora1Click
      end
      object rocarusuario1: TMenuItem
        Caption = 'Trocar usuario'
        OnClick = rocarusuario1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = 'Sair'
        OnClick = N2Click
      end
    end
  end
end
