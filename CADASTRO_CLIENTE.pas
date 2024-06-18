unit CADASTRO_CLIENTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TCLI_CADASTRO = class(TForm)
    COD_CLIENTE: TLabel;
    DBEdit_COD_CLIENTE: TDBEdit;
    CLI_CPF: TLabel;
    DBEdit_CLI_CPF: TDBEdit;
    CLI_NOME: TLabel;
    DBEdit_CLI_NOME: TDBEdit;
    CLI_TELEFONE: TLabel;
    DBEdit_CLI_TELEFONE: TDBEdit;
    CLI_ENDERECO: TLabel;
    DBEdit_CLI_ENDERECO: TDBEdit;
    CLI_BAIRRO: TLabel;
    DBEdit_CLI_BAIRRO: TDBEdit;
    CLI_COMPLEMENTO: TLabel;
    DBEdit_CLI_COMPLEMENTO: TDBEdit;
    CLI_EMAIL: TLabel;
    DBEdit_CLI_EMAIL: TDBEdit;
    COD_CIDADE: TLabel;
    DBEdit_COD_CIDADE: TDBEdit;
    CLI_CEP: TLabel;
    DBEdit_CLI_CEP: TDBEdit;
    CID_NOME: TLabel;
    DBEdit_CID_NOME: TDBEdit;
    CID_ESTADO: TLabel;
    DBEdit_CID_ESTADO: TDBEdit;
    BitBtn_NOVO: TBitBtn;
    BitBtn_SALVAR: TBitBtn;
    BitBtn_ALTERAR: TBitBtn;
    BitBtn_EXCLUIR: TBitBtn;
    BitBtn_CADASTROS: TBitBtn;
    BitBtn_VALIDAR: TBitBtn;
    BitBtn_CANCELAR: TBitBtn;
    DBGrid_LISTA: TDBGrid;
    procedure BitBtn_NOVOClick(Sender: TObject);
    procedure BitBtn_SALVARClick(Sender: TObject);
    procedure BitBtn_ALTERARClick(Sender: TObject);
    procedure BitBtn_EXCLUIRClick(Sender: TObject);
    procedure BitBtn_CADASTROSClick(Sender: TObject);
    procedure BitBtn_VALIDARClick(Sender: TObject);
    procedure BitBtn_CANCELARClick(Sender: TObject);
  private
    function ValidarCep(Cep: Integer): Integer;
    procedure AtualizarInformacoesCidade(CodigoCidade: Integer);
  public
    { Public declarations }
  end;

var
  CLI_CADASTRO: TCLI_CADASTRO;

implementation

{$R *.dfm}

uses
  DATAMODULE, CADASTRO_CIDADE, CONSULTA_CIDADES, CONSULTA_CLIENTES, MENU,
  RELATORIO;


// BOTÃO PARA ALTERAR O CADASTRO
procedure TCLI_CADASTRO.BitBtn_ALTERARClick(Sender: TObject);
begin
  if not DM_SISTEMA.ADOTABLE_CLIENTES.IsEmpty then
  begin
    DM_SISTEMA.ADOTABLE_CLIENTES.Edit;
    DBEdit_COD_CLIENTE.Text := DM_SISTEMA.ADOTABLE_CLIENTES.FieldByName('COD_CLIENTE').AsString;
    DBEdit_CLI_CPF.Text := DM_SISTEMA.ADOTABLE_CLIENTES.FieldByName('CLI_CPF').AsString;

  end;
end;


// BOTÃO PARA ABRIR A TELA DE CADASTROS
procedure TCLI_CADASTRO.BitBtn_CADASTROSClick(Sender: TObject);
begin
  CONS_CLIENTES.SHOW;
end;


// BOTÃO PARA CANCELAR E APAGAR O CAMPO DO CADASTRO
procedure TCLI_CADASTRO.BitBtn_CANCELARClick(Sender: TObject);
begin
  DM_SISTEMA.ADOTABLE_CLIENTES.CANCEL;
end;


// BOTÃO PARA EXCLUIR O CADASTRO DO CLIENTE
procedure TCLI_CADASTRO.BitBtn_EXCLUIRClick(Sender: TObject);
begin
  if not DM_SISTEMA.ADOTABLE_CLIENTES.IsEmpty then
  begin
    if MessageDlg('Tem certeza que deseja excluir este cliente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        DM_SISTEMA.ADOTABLE_CLIENTES.delete;
        ShowMessage('Cliente excluído com sucesso.');
      except
        on E: Exception do
          ShowMessage('Erro ao excluir cliente: ' + E.Message);
      end;
    end;
  end
  else
    ShowMessage('Não há cliente para excluir.');
end;


// BOTÃO PARA CRIAR NOVO CADASTRO
procedure TCLI_CADASTRO.BitBtn_NOVOClick(Sender: TObject);
begin
  DM_SISTEMA.ADOTABLE_CLIENTES.APPEND;
end;


// BOTÃO PARA SALVAR O CADASTRO
procedure TCLI_CADASTRO.BitBtn_SALVARClick(Sender: TObject);
begin
  DM_SISTEMA.ADOTABLE_CLIENTES.POST;
end;


// BOTÃO PARA VALIDAR SE O CEP É VÁLIDO
procedure TCLI_CADASTRO.BitBtn_VALIDARClick(Sender: TObject);
var
  Cep: Integer;
  CodigoCidade: Integer;
begin
  Cep := StrToIntDef(DBEdit_CLI_CEP.Text, 0);
  CodigoCidade := ValidarCep(Cep);

  if CodigoCidade = -1 then
  begin
    ShowMessage('Não foi possível localizar a cidade com o CEP fornecido.');
    Exit;
  end;

  DM_SISTEMA.ADOTABLE_CLIENTES.FieldByName('COD_CIDADE').AsInteger := CodigoCidade;

  AtualizarInformacoesCidade(CodigoCidade);

  ShowMessage('CEP validado e código da cidade atualizado.');
end;


// FUNÇÃO DO BOTÃO DE VALIDAR O CEP
function TCLI_CADASTRO.ValidarCep(Cep: Integer): Integer;
begin
  Result := -1;
  DM_SISTEMA.ADOTABLE_CIDADES.First;
  while not DM_SISTEMA.ADOTABLE_CIDADES.Eof do
  begin
    if (Cep >= DM_SISTEMA.ADOTABLE_CIDADES.FieldByName('CID_CEP_INICIAL').AsInteger) and
       (Cep <= DM_SISTEMA.ADOTABLE_CIDADES.FieldByName('CID_CEP_FINAL').AsInteger) then
    begin
      Result := DM_SISTEMA.ADOTABLE_CIDADES.FieldByName('COD_CIDADE').AsInteger;
      Break;
    end;
    DM_SISTEMA.ADOTABLE_CIDADES.Next;
  end;
end;


// FUNÇÃO PARA ATULAIZAR OS DBEDIT COM AS INFORMAÇÕES DO CEP DIGITADO
procedure TCLI_CADASTRO.AtualizarInformacoesCidade(CodigoCidade: Integer);
begin
  if DM_SISTEMA.ADOTABLE_CIDADES.Locate('COD_CIDADE', CodigoCidade, []) then
  begin
    DBEdit_CID_ESTADO.Text := DM_SISTEMA.ADOTABLE_CIDADES.FieldByName('CID_ESTADO').AsString;
    DBEdit_CID_NOME.Text := DM_SISTEMA.ADOTABLE_CIDADES.FieldByName('CID_NOME').AsString;
  end
  else
  begin
    ShowMessage('Informações da cidade não encontradas.');
    DBEdit_CID_ESTADO.Text := '';
    DBEdit_CID_NOME.Text := '';
  end;
end;


end.

