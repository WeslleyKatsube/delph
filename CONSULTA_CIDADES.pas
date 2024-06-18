unit CONSULTA_CIDADES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Data.Win.ADODB;

type
  TCONS_CIDADES = class(TForm)
    DBGrid_CIDADES: TDBGrid;
    Edit_BUSCA: TEdit;
    RadioButton_SORT_CODIGO: TRadioButton;
    RadioButton_SORT_NOME: TRadioButton;
    RadioButton_SORT_ESTADOS: TRadioButton;
    Button_BUSCA: TButton;
    procedure RadioButton_SORT_CODIGOClick(Sender: TObject);
    procedure RadioButton_SORT_NOMEClick(Sender: TObject);
    procedure RadioButton_SORT_ESTADOSClick(Sender: TObject);
    procedure Button_BUSCAClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateQuery;
  public
    { Public declarations }
  end;

var
  CONS_CIDADES: TCONS_CIDADES;

implementation

{$R *.dfm}

uses DATAMODULE;


//ORDEM
procedure TCONS_CIDADES.UpdateQuery;
var
  SortField: string;
  SearchValue: string;
  SQL: string;
begin
  // DEFINIR A ORDEM
  if RadioButton_SORT_CODIGO.Checked then
    SortField := 'COD_CIDADE'
  else if RadioButton_SORT_NOME.Checked then
    SortField := 'CID_NOME'
  else if RadioButton_SORT_ESTADOS.Checked then
    SortField := 'CID_ESTADO'
  else
    SortField := 'COD_CIDADE';

  SearchValue := Edit_BUSCA.Text;

  // CONSULTA DINÂMICA
  SQL := 'SELECT TOP 20 * FROM CIDADES ';

  // ADICIONA WHERE SE HOUVER VALOR DE BUSCA
  if SearchValue <> '' then
  begin
    if SortField = 'COD_CIDADE' then
      SQL := SQL + Format('WHERE %s = %s ', [SortField, QuotedStr(SearchValue)])
    else
      SQL := SQL + Format('WHERE %s LIKE %s ', [SortField, QuotedStr('%' + SearchValue + '%')]);
  end;

  // ADIÇÃO DO ORDER BY
  SQL := SQL + Format('ORDER BY %s', [SortField]);

  // ATUALIZA A CONSULTA
  DM_SISTEMA.ADOQuery_CONSULTA_CIDADE.Close;
  DM_SISTEMA.ADOQuery_CONSULTA_CIDADE.SQL.Text := SQL;
  DM_SISTEMA.ADOQuery_CONSULTA_CIDADE.Open;
end;


// EFETUAR BUSCA
procedure TCONS_CIDADES.Button_BUSCAClick(Sender: TObject);
begin
  UpdateQuery;
end;


// ORDENA POR CODIGO
procedure TCONS_CIDADES.RadioButton_SORT_CODIGOClick(Sender: TObject);
begin
  UpdateQuery;
end;


// ORDENA POR NOME
procedure TCONS_CIDADES.RadioButton_SORT_NOMEClick(Sender: TObject);
begin
  UpdateQuery;
end;


// ORDENA POR ESTADO
procedure TCONS_CIDADES.RadioButton_SORT_ESTADOSClick(Sender: TObject);
begin
  UpdateQuery;
end;


end.

