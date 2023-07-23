program CadProduto;

uses
  Vcl.Forms,
  uFrmPrincipal in '..\..\Source\Forms\uFrmPrincipal.pas' {frmPrincipal},
  uMensagens in '..\..\Source\Objects\uMensagens.pas',
  uFrmCadastroProduto in '..\..\Source\Forms\uFrmCadastroProduto.pas' {frmCadastroProduto},
  uDMRESTProduto in '..\..\Source\Objects\uDMRESTProduto.pas' {DMRestProduto: TDataModule},
  JSON.Produto in '..\..\Source\JSON\JSON.Produto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMRestProduto, DMRestProduto);
  Application.Run;
end.
