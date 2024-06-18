unit RELATORIO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppBands, ppCache, ppClass, ppDesignLayer, ppParameter, ppProd, ppReport,
  Data.DB, Data.Win.ADODB, System.UITypes, Vcl.StdCtrls, ppCtrls, ppPrnabl,
  ppVar, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Data.SqlExpr, Vcl.DBCtrls;

type
  TREPORT = class(TForm)
    ppReport_RELATORIO: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    TButton_PRINT: TButton;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    TITULO: TppLabel;
    ppLabel_COD_CLIENTE: TppLabel;
    ppLabel_CLI_NOME: TppLabel;
    ppLabel_CLI_ENDERECO: TppLabel;
    ppLabel_COD_CIDADE: TppLabel;
    ppLabel_CID_NOME: TppLabel;
    ppLabel_CID_ESTADO: TppLabel;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    RadioButton_SORT_ESTADO: TRadioButton;
    RadioButton_SORT_COD_CIDADE: TRadioButton;
    RadioButton_SORT_COD_CLIENTE: TRadioButton;
    ppDBPipeline_REPORT: TppDBPipeline;
    ppDBText_COD_CLIENTE: TppDBText;
    ppDBText_CLI_NOME: TppDBText;
    ppDBText_CLI_ENDERECO: TppDBText;
    ppDBText_COD_CIDADE: TppDBText;
    ppDBText_CID_NOME: TppDBText;
    ppDBText_CID_ESTADO: TppDBText;
    DBGrid1: TDBGrid;
    Edit_CIDADE: TEdit;
    RadioButton_CIDADE: TRadioButton;
    procedure TButton_PRINTClick(Sender: TObject);
    procedure RadioButton_SORT_COD_CLIENTEClick(Sender: TObject);
    procedure RadioButton_SORT_COD_CIDADEClick(Sender: TObject);
    procedure RadioButton_SORT_ESTADOClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton_CIDADEClick(Sender: TObject);
    procedure Edit_CIDADEChange(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateQuery;
  public
    { Public declarations }
  end;

var
  REPORT: TREPORT;

implementation

{$R *.dfm}

uses CADASTRO_CIDADE, CADASTRO_CLIENTE, DATAMODULE, MENU, CONSULTA_CIDADES,
  CONSULTA_CLIENTES;



procedure TREPORT.Edit_CIDADEChange(Sender: TObject);
begin
  UpdateQuery;
end;


// CONSULTA INICIAL
procedure TREPORT.FormCreate(Sender: TObject);
begin
  UpdateQuery;
end;


procedure TREPORT.UpdateQuery;
var
  SQL: string;
  OrderByField: string;
begin
  SQL := 'SELECT C.COD_CLIENTE, C.CLI_NOME, C.CLI_ENDERECO, CI.COD_CIDADE, CI.CID_NOME, CI.CID_ESTADO ' +
         'FROM CLIENTES C ' +
         'INNER JOIN CIDADES CI ON C.COD_CIDADE = CI.COD_CIDADE ';

  // ADICIONA O WHERER CASO O RADIOBUTTON ESTIVER MARCADO
  if RadioButton_CIDADE.Checked and (Trim(Edit_CIDADE.Text) <> '') then
  begin
    SQL := SQL + 'WHERE CI.CID_NOME LIKE :CidadeNome ';
  end;


  // ORDEM
  if RadioButton_SORT_ESTADO.Checked then
    OrderByField := 'CI.CID_ESTADO'
  else if RadioButton_SORT_COD_CIDADE.Checked then
    OrderByField := 'CI.COD_CIDADE'
  else if RadioButton_SORT_COD_CLIENTE.Checked then
    OrderByField := 'C.COD_CLIENTE'
  else
    OrderByField := 'CI.CID_ESTADO';

  // ADIÇÃO DO ORDER BY
  SQL := SQL + 'ORDER BY ' + OrderByField;

  // CONSULTA PELO ADOQUERY
  DM_SISTEMA.ADOQuery_RELATORIO.Close;
  DM_SISTEMA.ADOQuery_RELATORIO.SQL.Text := SQL;

  // FILTRAR PELO NOME DA CIDADE
  if RadioButton_CIDADE.Checked and (Trim(Edit_CIDADE.Text) <> '') then
  begin
    DM_SISTEMA.ADOQuery_RELATORIO.Parameters.ParamByName('CidadeNome').Value := '%' + Edit_CIDADE.Text + '%';
  end;


  // Abre a consulta
  DM_SISTEMA.ADOQuery_RELATORIO.Open;
end;


// ORDENA POR ESTADO
procedure TREPORT.RadioButton_SORT_ESTADOClick(Sender: TObject);
begin
  UpdateQuery;
end;

// AGRUPA OS CLIENTES DE ACORDO COM A CIDADE DIGITADA
procedure TREPORT.RadioButton_CIDADEClick(Sender: TObject);
begin
  UpdateQuery;
end;


// ORDENA POR CÓDIGO DA CIDADE
procedure TREPORT.RadioButton_SORT_COD_CIDADEClick(Sender: TObject);
begin
  UpdateQuery;
end;


// ORDENA POR CÓDIGO DO CLIENTE
procedure TREPORT.RadioButton_SORT_COD_CLIENTEClick(Sender: TObject);
begin
  UpdateQuery;
end;


// BOTÃO PARA GERAR O RELATÓRIO
procedure TREPORT.TButton_PRINTClick(Sender: TObject);
begin
  ppReport_RELATORIO.Print;
end;


end.

