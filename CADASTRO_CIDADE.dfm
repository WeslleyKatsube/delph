object CID_CADASTRO: TCID_CADASTRO
  Left = 0
  Top = 0
  Caption = 'CADASTRO DA CIDADE'
  ClientHeight = 652
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CID_CEP_FINAL: TLabel
    Left = 328
    Top = 32
    Width = 51
    Height = 13
    Caption = 'CEP FINAL'
    FocusControl = DBEdit_CID_CEP_FINAL
  end
  object CID_CEP_INICIAL: TLabel
    Left = 176
    Top = 32
    Width = 60
    Height = 13
    Caption = 'CEP INICIAL'
    FocusControl = DBEdit_CID_CEP_INICIAL
  end
  object CID_ESTADO: TLabel
    Left = 24
    Top = 112
    Width = 40
    Height = 13
    Caption = 'ESTADO'
    FocusControl = DBEdit_CID_ESTADO
  end
  object CID_NOME: TLabel
    Left = 24
    Top = 72
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit_CID_NOME
  end
  object CIDADE: TLabel
    Left = 24
    Top = 32
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit_COD_CIDADE
  end
  object DBEdit_CID_CEP_FINAL: TDBEdit
    Left = 328
    Top = 48
    Width = 134
    Height = 21
    DataField = 'CID_CEP_FINAL'
    DataSource = DM_SISTEMA.DataSource_CIDADE
    MaxLength = 8
    TabOrder = 0
  end
  object DBEdit_CID_CEP_INICIAL: TDBEdit
    Left = 176
    Top = 51
    Width = 134
    Height = 21
    DataField = 'CID_CEP_INICIAL'
    DataSource = DM_SISTEMA.DataSource_CIDADE
    MaxLength = 8
    TabOrder = 1
  end
  object DBEdit_CID_ESTADO: TDBEdit
    Left = 24
    Top = 128
    Width = 438
    Height = 21
    DataField = 'CID_ESTADO'
    DataSource = DM_SISTEMA.DataSource_CIDADE
    TabOrder = 2
  end
  object DBEdit_CID_NOME: TDBEdit
    Left = 24
    Top = 88
    Width = 438
    Height = 21
    DataField = 'CID_NOME'
    DataSource = DM_SISTEMA.DataSource_CIDADE
    TabOrder = 3
  end
  object DBEdit_COD_CIDADE: TDBEdit
    Left = 24
    Top = 48
    Width = 134
    Height = 21
    DataField = 'COD_CIDADE'
    DataSource = DM_SISTEMA.DataSource_CIDADE
    TabOrder = 4
  end
  object BitBtn_NOVO: TBitBtn
    Left = 14
    Top = 170
    Width = 75
    Height = 25
    Caption = 'NOVO'
    TabOrder = 5
    OnClick = BitBtn_NOVOClick
  end
  object BitBtn_SALVAR: TBitBtn
    Left = 95
    Top = 170
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 6
    OnClick = BitBtn_SALVARClick
  end
  object BitBtn_ALTERAR: TBitBtn
    Left = 176
    Top = 170
    Width = 75
    Height = 25
    Caption = 'ALTERAR'
    TabOrder = 7
    OnClick = BitBtn_ALTERARClick
  end
  object BitBtn_EXCLUIR: TBitBtn
    Left = 257
    Top = 170
    Width = 75
    Height = 25
    Caption = 'EXCLUIR'
    TabOrder = 8
    OnClick = BitBtn_EXCLUIRClick
  end
  object BitBtn_CADASTROS: TBitBtn
    Left = 419
    Top = 170
    Width = 75
    Height = 25
    Caption = 'CADASTROS'
    TabOrder = 9
    OnClick = BitBtn_CADASTROSClick
  end
  object BitBtn_CANCELAR: TBitBtn
    Left = 338
    Top = 170
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    TabOrder = 10
  end
  object DBGrid_LISTA: TDBGrid
    Left = 14
    Top = 216
    Width = 539
    Height = 409
    DataSource = DM_SISTEMA.DataSource_CIDADE
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
