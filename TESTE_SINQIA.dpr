program TESTE_SINQIA;

uses
  Vcl.Forms,
  MENU in 'MENU.pas' {MAIN_MENU},
  CADASTRO_CLIENTE in 'CADASTRO_CLIENTE.pas' {CLI_CADASTRO},
  CADASTRO_CIDADE in 'CADASTRO_CIDADE.pas' {CID_CADASTRO},
  RELATORIO in 'RELATORIO.pas' {REPORT},
  DATAMODULE in 'DATAMODULE.pas' {DM_SISTEMA: TDataModule},
  CONSULTA_CLIENTES in 'CONSULTA_CLIENTES.pas' {CONS_CLIENTES},
  CONSULTA_CIDADES in 'CONSULTA_CIDADES.pas' {CONS_CIDADES};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_SISTEMA, DM_SISTEMA);
  Application.CreateForm(TMAIN_MENU, MAIN_MENU);
  Application.CreateForm(TCID_CADASTRO, CID_CADASTRO);
  Application.CreateForm(TCLI_CADASTRO, CLI_CADASTRO);
  Application.CreateForm(TCONS_CLIENTES, CONS_CLIENTES);
  Application.CreateForm(TCONS_CIDADES, CONS_CIDADES);
  Application.CreateForm(TREPORT, REPORT);
  Application.Run;
end.
