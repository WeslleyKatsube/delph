object MAIN_MENU: TMAIN_MENU
  Left = 0
  Top = 0
  Caption = 'MENU'
  ClientHeight = 411
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = BARRA_MENU
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BARRA_MENU: TMainMenu
    Left = 32
    Top = 360
    object CADASTROS1: TMenuItem
      Caption = 'CADASTROS'
      object CADASTRODECIDADES1: TMenuItem
        Caption = 'CIDADES'
        OnClick = CADASTRODECIDADES1Click
      end
      object CADASTRODECLIENTES1: TMenuItem
        Caption = 'CLIENTES'
        OnClick = CADASTRODECLIENTES1Click
      end
    end
    object CONSULTAS1: TMenuItem
      Caption = 'CONSULTAS'
      object CONSULTASDECIDADES1: TMenuItem
        Caption = 'CIDADES'
        OnClick = CONSULTASDECIDADES1Click
      end
      object CONSULTASDECLIENTES1: TMenuItem
        Caption = 'CLIENTES'
        OnClick = CONSULTASDECLIENTES1Click
      end
    end
    object RELATORIOS1: TMenuItem
      Caption = 'RELATORIOS'
      object Gerarrelatrios1: TMenuItem
        Caption = 'Gerar relat'#243'rios'
        OnClick = Gerarrelatrios1Click
      end
    end
  end
end
