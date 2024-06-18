unit DATAMODULE;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Data.FMTBcd,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider;

type
  TDM_SISTEMA = class(TDataModule)
    ADOConnec_Banco: TADOConnection;
    ADOTable_CIDADES: TADOTable;
    ADOTable_CLIENTES: TADOTable;
    ADOTable_CIDADESCOD_CIDADE: TAutoIncField;
    ADOTable_CIDADESCID_NOME: TWideStringField;
    ADOTable_CIDADESCID_ESTADO: TWideStringField;
    ADOTable_CIDADESCID_CEP_INICIAL: TIntegerField;
    ADOTable_CIDADESCID_CEP_FINAL: TIntegerField;
    ADOTable_CLIENTESCOD_CLIENTE: TAutoIncField;
    ADOTable_CLIENTESCLI_CPF: TWideStringField;
    ADOTable_CLIENTESCLI_NOME: TWideStringField;
    ADOTable_CLIENTESCLI_TELEFONE: TWideStringField;
    ADOTable_CLIENTESCLI_ENDERECO: TWideStringField;
    ADOTable_CLIENTESCLI_BAIRRO: TWideStringField;
    ADOTable_CLIENTESCLI_COMPLEMENTO: TWideStringField;
    ADOTable_CLIENTESCLI_EMAIL: TWideStringField;
    ADOTable_CLIENTESCOD_CIDADE: TIntegerField;
    ADOTable_CLIENTESCLI_CEP: TIntegerField;
    DataSource_CIDADE: TDataSource;
    DataSource_CLIENTES: TDataSource;
    ADOQuery_RELATORIO: TADOQuery;
    DataSource_RELATORIO: TDataSource;
    ADOQuery_CONSULTA_CLIENTE: TADOQuery;
    DataSource_CONSULTA_CLIENTE: TDataSource;
    ADOQuery_CONSULTA_CIDADE: TADOQuery;
    DataSource_CONSULTA_CIDADE: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_SISTEMA: TDM_SISTEMA;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

