unit CONSULTA_CLIENTES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TCONS_CLIENTES = class(TForm)
    DBGrid_CLIENTES: TDBGrid;
    Edit_BUSCA: TEdit;
    RadioButton_SORT_COD_CLIENTE: TRadioButton;
    RadioButton_SORT_NOME: TRadioButton;
    RadioButton_SORT_COD_CIDADE: TRadioButton;
    Button_BUSCAR: TButton;
    procedure RadioButton_SORT_COD_CLIENTEClick(Sender: TObject);
    procedure RadioButton_SORT_COD_CIDADEClick(Sender: TObject);
    procedure RadioButton_SORT_NOMEClick(Sender: TObject);
    procedure Button_BUSCARClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateQuery;
  public
    { Public declarations }
  end;

var
  CONS_CLIENTES: TCONS_CLIENTES;

implementation

{$R *.dfm}

uses DATAMODULE;


//ORDEM
procedure TCONS_CLIENTES.UpdateQuery;
var
  SortField: string;
  SearchValue: string;
  SQL: string;
begin
  if RadioButton_SORT_COD_CLIENTE.Checked then
    SortField := 'CLIENTES.COD_CLIENTE'
  else if RadioButton_SORT_NOME.Checked then
    SortField := 'CLIENTES.CLI_NOME'
  else if RadioButton_SORT_COD_CIDADE.Checked then
    SortField := 'CLIENTES.COD_CIDADE'
  else
    SortField := 'CLIENTES.COD_CLIENTE';

  SearchValue := Edit_BUSCA.Text;

  // CONSULTA DINÂMICA
  SQL := 'SELECT TOP 20 ' +
         'CLIENTES.COD_CLIENTE, ' +
         'CLIENTES.CLI_NOME, ' +
         'CLIENTES.CLI_ENDERECO, ' +
         'CLIENTES.COD_CIDADE, ' +
         'CIDADES.CID_NOME, ' +
         'CIDADES.CID_ESTADO, ' +
         'CLIENTES.CLI_CEP ' +
         'FROM CLIENTES ' +
         'INNER JOIN CIDADES ON CLIENTES.COD_CIDADE = CIDADES.COD_CIDADE ';

  // ADICIONA WHERE SE HOUVER VALOR DE BUSCA
  if SearchValue <> '' then
  begin
    SQL := SQL + Format('WHERE %s LIKE %s ', [SortField, QuotedStr('%' + SearchValue + '%')]);
  end;

  // ADIÇÃO DO ORDER BY
  SQL := SQL + Format('ORDER BY %s', [SortField]);

  // ATUALIZA A CONSULTA
  DM_SISTEMA.ADOQuery_CONSULTA_CLIENTE.Close;
  DM_SISTEMA.ADOQuery_CONSULTA_CLIENTE.SQL.Text := SQL;
  DM_SISTEMA.ADOQuery_CONSULTA_CLIENTE.Open;
end;


// EFETUAR BUSCA
procedure TCONS_CLIENTES.Button_BUSCARClick(Sender: TObject);
begin
  UpdateQuery;
end;


// ORDENA POR CIDADE
procedure TCONS_CLIENTES.RadioButton_SORT_COD_CIDADEClick(Sender: TObject);
begin
  UpdateQuery;
end;


// ORDENA POR CLIENTE
procedure TCONS_CLIENTES.RadioButton_SORT_COD_CLIENTEClick(Sender: TObject);
begin
  UpdateQuery;
end;


// ORDENA POR NOME
procedure TCONS_CLIENTES.RadioButton_SORT_NOMEClick(Sender: TObject);
begin
  UpdateQuery;
end;


end.

