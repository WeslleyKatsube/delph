object CLI_CADASTRO: TCLI_CADASTRO
  Left = 0
  Top = 0
  Caption = 'CADASTRO DO CLIENTE'
  ClientHeight = 791
  ClientWidth = 1218
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object COD_CLIENTE: TLabel
    Left = 24
    Top = 16
    Width = 41
    Height = 13
    Caption = 'CLIENTE'
    FocusControl = DBEdit_COD_CLIENTE
  end
  object CLI_CPF: TLabel
    Left = 24
    Top = 58
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit_CLI_CPF
  end
  object CLI_NOME: TLabel
    Left = 120
    Top = 16
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit_CLI_NOME
  end
  object CLI_TELEFONE: TLabel
    Left = 216
    Top = 55
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit_CLI_TELEFONE
  end
  object CLI_ENDERECO: TLabel
    Left = 24
    Top = 228
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit_CLI_ENDERECO
  end
  object CLI_BAIRRO: TLabel
    Left = 24
    Top = 271
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit_CLI_BAIRRO
  end
  object CLI_COMPLEMENTO: TLabel
    Left = 24
    Top = 314
    Width = 75
    Height = 13
    Caption = 'COMPLEMENTO'
    FocusControl = DBEdit_CLI_COMPLEMENTO
  end
  object CLI_EMAIL: TLabel
    Left = 24
    Top = 100
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit_CLI_EMAIL
  end
  object COD_CIDADE: TLabel
    Left = 24
    Top = 187
    Width = 99
    Height = 13
    Caption = 'CODIGO DA CIDADE'
    FocusControl = DBEdit_COD_CIDADE
  end
  object CLI_CEP: TLabel
    Left = 23
    Top = 141
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit_CLI_CEP
  end
  object CID_NOME: TLabel
    Left = 229
    Top = 186
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit_CID_NOME
  end
  object CID_ESTADO: TLabel
    Left = 132
    Top = 187
    Width = 40
    Height = 13
    Caption = 'ESTADO'
    FocusControl = DBEdit_CID_ESTADO
  end
  object DBEdit_COD_CLIENTE: TDBEdit
    Left = 24
    Top = 32
    Width = 69
    Height = 21
    DataField = 'COD_CLIENTE'
    DataSource = DM_SISTEMA.DataSource_CLIENTES
    TabOrder = 0
  end
  object DBEdit_CLI_CPF: TDBEdit
    Left = 24
    Top = 74
    Width = 169
    Height = 21
    DataField = 'CLI_CPF'
    DataSource = DM_SISTEMA.DataSource_CLIENTES
    TabOrder = 1
  end
  object DBEdit_CLI_NOME: TDBEdit
    Left = 120
    Top = 32
    Width = 289
    Height = 21
    DataField = 'CLI_NOME'
    DataSource = DM_SISTEMA.DataSource_CLIENTES
    TabOrder = 2
  end
  object DBEdit_CLI_TELEFONE: TDBEdit
    Left = 216
    Top = 74
    Width = 193
    Height = 21
    DataField = 'CLI_TELEFONE'
    DataSource = DM_SISTEMA.DataSource_CLIENTES
    TabOrder = 3
  end
  object DBEdit_CLI_ENDERECO: TDBEdit
    Left = 24
    Top = 244
    Width = 385
    Height = 21
    DataField = 'CLI_ENDERECO'
    DataSource = DM_SISTEMA.DataSource_CLIENTES
    TabOrder = 4
  end
  object DBEdit_CLI_BAIRRO: TDBEdit
    Left = 24
    Top = 284
    Width = 385
    Height = 21
    DataField = 'CLI_BAIRRO'
    DataSource = DM_SISTEMA.DataSource_CLIENTES
    TabOrder = 5
  end
  object DBEdit_CLI_COMPLEMENTO: TDBEdit
    Left = 24
    Top = 330
    Width = 385
    Height = 21
    DataField = 'CLI_COMPLEMENTO'
    DataSource = DM_SISTEMA.DataSource_CLIENTES
    TabOrder = 6
  end
  object DBEdit_CLI_EMAIL: TDBEdit
    Left = 24
    Top = 116
    Width = 385
    Height = 21
    DataField = 'CLI_EMAIL'
    DataSource = DM_SISTEMA.DataSource_CLIENTES
    TabOrder = 7
  end
  object DBEdit_COD_CIDADE: TDBEdit
    Left = 24
    Top = 202
    Width = 102
    Height = 21
    DataField = 'COD_CIDADE'
    DataSource = DM_SISTEMA.DataSource_CLIENTES
    TabOrder = 8
  end
  object DBEdit_CLI_CEP: TDBEdit
    Left = 23
    Top = 157
    Width = 97
    Height = 21
    DataField = 'CLI_CEP'
    DataSource = DM_SISTEMA.DataSource_CLIENTES
    MaxLength = 8
    TabOrder = 9
  end
  object DBEdit_CID_NOME: TDBEdit
    Left = 229
    Top = 202
    Width = 180
    Height = 21
    DataField = 'CID_NOME'
    DataSource = DM_SISTEMA.DataSource_CIDADE
    TabOrder = 10
  end
  object DBEdit_CID_ESTADO: TDBEdit
    Left = 132
    Top = 202
    Width = 89
    Height = 21
    DataField = 'CID_ESTADO'
    DataSource = DM_SISTEMA.DataSource_CIDADE
    TabOrder = 11
  end
  object BitBtn_NOVO: TBitBtn
    Left = 18
    Top = 376
    Width = 75
    Height = 25
    Caption = 'NOVO'
    TabOrder = 12
    OnClick = BitBtn_NOVOClick
  end
  object BitBtn_SALVAR: TBitBtn
    Left = 99
    Top = 376
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 13
  end
  object BitBtn_ALTERAR: TBitBtn
    Left = 180
    Top = 376
    Width = 75
    Height = 25
    Caption = 'ALTERAR'
    TabOrder = 14
  end
  object BitBtn_EXCLUIR: TBitBtn
    Left = 342
    Top = 376
    Width = 75
    Height = 25
    Caption = 'EXCLUIR'
    TabOrder = 15
    OnClick = BitBtn_EXCLUIRClick
  end
  object BitBtn_CADASTROS: TBitBtn
    Left = 423
    Top = 376
    Width = 75
    Height = 25
    Caption = 'CADASTROS'
    TabOrder = 16
    OnClick = BitBtn_CADASTROSClick
  end
  object BitBtn_VALIDAR: TBitBtn
    Left = 126
    Top = 155
    Width = 75
    Height = 25
    Caption = 'BUSCAR'
    TabOrder = 17
    OnClick = BitBtn_VALIDARClick
  end
  object BitBtn_CANCELAR: TBitBtn
    Left = 261
    Top = 376
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    TabOrder = 18
    OnClick = BitBtn_CANCELARClick
  end
  object DBGrid_LISTA: TDBGrid
    Left = 23
    Top = 448
    Width = 1178
    Height = 313
    DataSource = DM_SISTEMA.DataSource_CLIENTES
    TabOrder = 19
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
