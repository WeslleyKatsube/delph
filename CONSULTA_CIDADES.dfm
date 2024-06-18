object CONS_CIDADES: TCONS_CIDADES
  Left = 0
  Top = 0
  Caption = 'CIDADES'
  ClientHeight = 346
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid_CIDADES: TDBGrid
    Left = 0
    Top = 109
    Width = 543
    Height = 237
    Align = alClient
    DataSource = DM_SISTEMA.DataSource_CONSULTA_CIDADE
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object RadioButton_SORT_CODIGO: TRadioButton
    Left = 0
    Top = 0
    Width = 543
    Height = 17
    Align = alTop
    Caption = 'Ordenar por codigos'
    Checked = True
    TabOrder = 1
    TabStop = True
    OnClick = RadioButton_SORT_CODIGOClick
  end
  object RadioButton_SORT_NOME: TRadioButton
    Left = 0
    Top = 17
    Width = 543
    Height = 17
    Align = alTop
    Caption = 'Ordenar por nomes'
    TabOrder = 2
    OnClick = RadioButton_SORT_NOMEClick
  end
  object RadioButton_SORT_ESTADOS: TRadioButton
    Left = 0
    Top = 34
    Width = 543
    Height = 17
    Align = alTop
    Caption = 'Ordenar por estados'
    TabOrder = 3
    OnClick = RadioButton_SORT_ESTADOSClick
  end
  object Edit_BUSCA: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 54
    Width = 537
    Height = 21
    Align = alTop
    TabOrder = 4
  end
  object Button_BUSCA: TButton
    AlignWithMargins = True
    Left = 3
    Top = 81
    Width = 537
    Height = 25
    Align = alTop
    Caption = 'BUSCAR'
    TabOrder = 5
    OnClick = Button_BUSCAClick
  end
end
