unit CADASTRO_CIDADE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TCID_CADASTRO = class(TForm)
    CIDADE: TLabel;
    DBEdit_COD_CIDADE: TDBEdit;
    CID_NOME: TLabel;
    DBEdit_CID_NOME: TDBEdit;
    CID_ESTADO: TLabel;
    DBEdit_CID_ESTADO: TDBEdit;
    CID_CEP_INICIAL: TLabel;
    DBEdit_CID_CEP_INICIAL: TDBEdit;
    CID_CEP_FINAL: TLabel;
    DBEdit_CID_CEP_FINAL: TDBEdit;
    BitBtn_NOVO: TBitBtn;
    BitBtn_SALVAR: TBitBtn;
    BitBtn_ALTERAR: TBitBtn;
    BitBtn_EXCLUIR: TBitBtn;
    BitBtn_CADASTROS: TBitBtn;
    BitBtn_CANCELAR: TBitBtn;
    DBGrid_LISTA: TDBGrid;
    procedure BitBtn_NOVOClick(Sender: TObject);
    procedure BitBtn_SALVARClick(Sender: TObject);
    procedure BitBtn_ALTERARClick(Sender: TObject);
    procedure BitBtn_EXCLUIRClick(Sender: TObject);
    procedure BitBtn_CADASTROSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CID_CADASTRO: TCID_CADASTRO;
  InternalChange: Boolean = False;

implementation

{$R *.dfm}

uses CADASTRO_CLIENTE, DATAMODULE, MENU, RELATORIO, CONSULTA_CIDADES,
  CONSULTA_CLIENTES;


// BOTÃO PARA ALTERAR
procedure TCID_CADASTRO.BitBtn_ALTERARClick(Sender: TObject);
begin
  DM_SISTEMA.ADOTABLE_CIDADES.EDIT;
end;


// BOTÃO PARA ABRIR A LISTA DE CADASTRO
procedure TCID_CADASTRO.BitBtn_CADASTROSClick(Sender: TObject);
begin
  CONS_CIDADES.SHOW;
end;


// BOTÃO PARA EXCLUIR
procedure TCID_CADASTRO.BitBtn_EXCLUIRClick(Sender: TObject);
begin
  DM_SISTEMA.ADOTABLE_CIDADES.DELETE;
   begin
    if MessageDlg('Tem certeza que deseja excluir esta cidade?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        DM_SISTEMA.ADOTABLE_CLIENTES.delete;
        ShowMessage('Cidade excluída com sucesso.');
      except
        on E: Exception do
          ShowMessage('Erro ao excluir a cidade: ' + E.Message);
      end;
    end;
  end
end;


// BOTÃO PARA NOVA CIDADE
procedure TCID_CADASTRO.BitBtn_NOVOClick(Sender: TObject);
begin
  DM_SISTEMA.ADOTABLE_CIDADES.APPEND;
end;


// BOTÃO PARA SALVAR
procedure TCID_CADASTRO.BitBtn_SALVARClick(Sender: TObject);
begin
  DM_SISTEMA.ADOTABLE_CIDADES.POST;
end;


end.
