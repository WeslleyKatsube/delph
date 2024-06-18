object DM_SISTEMA: TDM_SISTEMA
  OldCreateOrder = False
  Height = 440
  Width = 568
  object ADOConnec_Banco: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=TEST_SINQIA;Data Source=katsube'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 82
    Top = 16
  end
  object ADOTable_CIDADES: TADOTable
    Active = True
    Connection = ADOConnec_Banco
    CursorType = ctStatic
    TableName = 'CIDADES'
    Left = 82
    Top = 72
    object ADOTable_CIDADESCOD_CIDADE: TAutoIncField
      DisplayWidth = 11
      FieldName = 'COD_CIDADE'
      ReadOnly = True
    end
    object ADOTable_CIDADESCID_NOME: TWideStringField
      DisplayWidth = 26
      FieldName = 'CID_NOME'
      Size = 50
    end
    object ADOTable_CIDADESCID_ESTADO: TWideStringField
      DisplayWidth = 11
      FieldName = 'CID_ESTADO'
      Size = 50
    end
    object ADOTable_CIDADESCID_CEP_INICIAL: TIntegerField
      DisplayWidth = 16
      FieldName = 'CID_CEP_INICIAL'
    end
    object ADOTable_CIDADESCID_CEP_FINAL: TIntegerField
      DisplayWidth = 16
      FieldName = 'CID_CEP_FINAL'
    end
  end
  object ADOTable_CLIENTES: TADOTable
    Active = True
    Connection = ADOConnec_Banco
    CursorType = ctStatic
    TableName = 'CLIENTES'
    Left = 82
    Top = 128
    object ADOTable_CLIENTESCOD_CLIENTE: TAutoIncField
      DisplayWidth = 11
      FieldName = 'COD_CLIENTE'
      ReadOnly = True
    end
    object ADOTable_CLIENTESCLI_CPF: TWideStringField
      DisplayWidth = 15
      FieldName = 'CLI_CPF'
      Size = 15
    end
    object ADOTable_CLIENTESCLI_NOME: TWideStringField
      DisplayWidth = 21
      FieldName = 'CLI_NOME'
      Size = 50
    end
    object ADOTable_CLIENTESCLI_TELEFONE: TWideStringField
      DisplayWidth = 16
      FieldName = 'CLI_TELEFONE'
      Size = 15
    end
    object ADOTable_CLIENTESCLI_ENDERECO: TWideStringField
      DisplayWidth = 34
      FieldName = 'CLI_ENDERECO'
      Size = 50
    end
    object ADOTable_CLIENTESCLI_BAIRRO: TWideStringField
      DisplayWidth = 18
      FieldName = 'CLI_BAIRRO'
      Size = 50
    end
    object ADOTable_CLIENTESCLI_COMPLEMENTO: TWideStringField
      DisplayWidth = 17
      FieldName = 'CLI_COMPLEMENTO'
      Size = 50
    end
    object ADOTable_CLIENTESCLI_EMAIL: TWideStringField
      DisplayWidth = 22
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object ADOTable_CLIENTESCOD_CIDADE: TIntegerField
      DisplayWidth = 11
      FieldName = 'COD_CIDADE'
    end
    object ADOTable_CLIENTESCLI_CEP: TIntegerField
      DisplayWidth = 16
      FieldName = 'CLI_CEP'
    end
  end
  object DataSource_CIDADE: TDataSource
    DataSet = ADOTable_CIDADES
    Left = 82
    Top = 192
  end
  object DataSource_CLIENTES: TDataSource
    DataSet = ADOTable_CLIENTES
    Left = 82
    Top = 256
  end
  object ADOQuery_RELATORIO: TADOQuery
    Active = True
    Connection = ADOConnec_Banco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT C.COD_CLIENTE, C.CLI_NOME, C.CLI_ENDERECO, CI.COD_CIDADE,' +
        ' CI.CID_NOME, CI.CID_ESTADO'
      'FROM CLIENTES C'
      'INNER JOIN CIDADES CI ON C.COD_CIDADE = CI.COD_CIDADE;')
    Left = 272
    Top = 72
  end
  object DataSource_RELATORIO: TDataSource
    DataSet = ADOQuery_RELATORIO
    Left = 280
    Top = 16
  end
  object ADOQuery_CONSULTA_CLIENTE: TADOQuery
    Active = True
    Connection = ADOConnec_Banco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 20 '
      '    CLIENTES.COD_CLIENTE,'
      '    CLIENTES.CLI_NOME,'
      '    CLIENTES.CLI_ENDERECO,'
      '    CLIENTES.COD_CIDADE,'
      '    CIDADES.CID_NOME,'
      '    CIDADES.CID_ESTADO,'
      '    CLIENTES.CLI_CEP'
      'FROM '
      '    CLIENTES'
      
        '    INNER JOIN CIDADES ON CLIENTES.COD_CIDADE = CIDADES.COD_CIDA' +
        'DE;')
    Left = 272
    Top = 184
  end
  object DataSource_CONSULTA_CLIENTE: TDataSource
    DataSet = ADOQuery_CONSULTA_CLIENTE
    Left = 272
    Top = 128
  end
  object ADOQuery_CONSULTA_CIDADE: TADOQuery
    Active = True
    Connection = ADOConnec_Banco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 20'
      ' * '
      'FROM '
      'CIDADES')
    Left = 272
    Top = 240
  end
  object DataSource_CONSULTA_CIDADE: TDataSource
    DataSet = ADOQuery_CONSULTA_CIDADE
    Left = 272
    Top = 296
  end
end
