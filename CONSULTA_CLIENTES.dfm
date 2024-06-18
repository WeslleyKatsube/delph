object CONS_CLIENTES: TCONS_CLIENTES
  Left = 0
  Top = 0
  Caption = 'CLIENTES'
  ClientHeight = 455
  ClientWidth = 1181
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid_CLIENTES: TDBGrid
    Left = 0
    Top = 103
    Width = 1181
    Height = 352
    Align = alClient
    DataSource = DM_SISTEMA.DataSource_CONSULTA_CLIENTE
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_ESTADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CEP'
        Visible = True
      end>
  end
  object Edit_BUSCA: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 54
    Width = 1175
    Height = 21
    Align = alTop
    TabOrder = 1
  end
  object RadioButton_SORT_COD_CLIENTE: TRadioButton
    Left = 0
    Top = 0
    Width = 1181
    Height = 17
    Align = alTop
    Caption = 'Ordenar por c'#243'digo do cliente'
    TabOrder = 2
    OnClick = RadioButton_SORT_COD_CLIENTEClick
    ExplicitLeft = -8
    ExplicitTop = -12
  end
  object RadioButton_SORT_NOME: TRadioButton
    Left = 0
    Top = 34
    Width = 1181
    Height = 17
    Align = alTop
    Caption = 'Ordenar por nome'
    TabOrder = 3
    OnClick = RadioButton_SORT_NOMEClick
    ExplicitLeft = -8
    ExplicitTop = 5
  end
  object RadioButton_SORT_COD_CIDADE: TRadioButton
    Left = 0
    Top = 17
    Width = 1181
    Height = 17
    Align = alTop
    Caption = 'Ordenar por c'#243'digo de cidade'
    TabOrder = 4
    OnClick = RadioButton_SORT_COD_CIDADEClick
    ExplicitTop = 11
  end
  object Button_BUSCAR: TButton
    Left = 0
    Top = 78
    Width = 1181
    Height = 25
    Align = alTop
    Caption = 'BUSCAR'
    TabOrder = 5
    OnClick = Button_BUSCARClick
    ExplicitLeft = 536
    ExplicitTop = 48
    ExplicitWidth = 75
  end
end
