unit MENU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TMAIN_MENU = class(TForm)
    BARRA_MENU: TMainMenu;
    CADASTROS1: TMenuItem;
    CONSULTAS1: TMenuItem;
    RELATORIOS1: TMenuItem;
    CADASTRODECLIENTES1: TMenuItem;
    CADASTRODECIDADES1: TMenuItem;
    CONSULTASDECIDADES1: TMenuItem;
    CONSULTASDECLIENTES1: TMenuItem;
    Gerarrelatrios1: TMenuItem;
    procedure CADASTRODECIDADES1Click(Sender: TObject);
    procedure CADASTRODECLIENTES1Click(Sender: TObject);
    procedure CONSULTASDECIDADES1Click(Sender: TObject);
    procedure CONSULTASDECLIENTES1Click(Sender: TObject);
    procedure Gerarrelatrios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MAIN_MENU: TMAIN_MENU;

implementation

{$R *.dfm}

uses CADASTRO_CIDADE, CADASTRO_CLIENTE, DATAMODULE, RELATORIO, CONSULTA_CIDADES,
  CONSULTA_CLIENTES;


// ABRIR A TELA DE CADASTRO DAS CIDADES
procedure TMAIN_MENU.CADASTRODECIDADES1Click(Sender: TObject);
begin
CID_CADASTRO.SHOW;
end;


// ABRIR A TELA DE CADASTRO DOS CLIENTES
procedure TMAIN_MENU.CADASTRODECLIENTES1Click(Sender: TObject);
begin
CLI_CADASTRO.SHOW;
end;


// ABRIR A TELA DE CONSULTA DAS CIDADES
procedure TMAIN_MENU.CONSULTASDECIDADES1Click(Sender: TObject);
begin
CONS_CIDADES.SHOW;
end;


// ABRIR A TELA DE CONSULTA DOS CLIENTES
procedure TMAIN_MENU.CONSULTASDECLIENTES1Click(Sender: TObject);
begin
CONS_CLIENTES.SHOW;
end;


// ABRIR A TELA DE RELATÓRIOS
procedure TMAIN_MENU.Gerarrelatrios1Click(Sender: TObject);
begin
REPORT.SHOW;
end;


end.
