unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmPrincipal = class(TForm)
    pnlCentral: TPanel;
    pnlOperacoes: TPanel;
    btnExcluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnCadastrar: TSpeedButton;
    btnSair: TSpeedButton;
    DataSourceProdutos: TDataSource;
    grdProdutos: TDBGrid;
    queryProdutos: TFDMemTable;
    queryProdutosNCHPRODUTO: TIntegerField;
    queryProdutosTDESCRICAO: TStringField;
    queryProdutosTCODIGOBARRAS: TStringField;
    queryProdutosTUNIDADE: TStringField;
    queryProdutosNVALORVENDA: TFloatField;
    queryProdutosNQTDESTOQUE: TFloatField;
    procedure btnSairClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    procedure AbrirCadastroProduto(aChProduto: Integer);
    procedure BuscarProdutos;
    function ValidarProduto: Boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  REST.Json, uFrmCadastroProduto, uMensagens, uDMRESTProduto, JSON.Produto;

{$R *.dfm}

procedure TfrmPrincipal.AbrirCadastroProduto(aChProduto: Integer);
var
  frmCadProduto: TfrmCadastroProduto;
begin
  frmCadProduto := TfrmCadastroProduto.Create(Self, aChProduto);
  try
    frmCadProduto.ShowModal;
  finally
    FreeAndNil(frmCadProduto);
  end;

  Self.BuscarProdutos;
end;

procedure TfrmPrincipal.btnAlterarClick(Sender: TObject);
begin
  if Self.ValidarProduto then
  begin
    Self.AbrirCadastroProduto(queryProdutos.Fields[0].AsInteger);
  end;
end;

procedure TfrmPrincipal.btnCadastrarClick(Sender: TObject);
begin
  Self.AbrirCadastroProduto(0);
end;

procedure TfrmPrincipal.btnExcluirClick(Sender: TObject);
var
  chProduto: Integer;
  sErro: string;
begin
  chProduto := 0;
  sErro := '';

  try
    if Self.ValidarProduto then
    begin
      chProduto := queryProdutos.Fields[0].AsInteger;

      if Mensagem.Confirma('Deseja realmente excluir o produto de cód. %d?', [chProduto]) then
      begin
        if DMRestProduto.ExcluirProduto(chProduto, sErro) then
        begin
          Mensagem.Aviso('Produto de cód. %d excluído com sucesso!', [chProduto]);
          Self.BuscarProdutos;
        end
        else
        begin
          Mensagem.Erro(sErro);
        end;
      end;
    end;
  except
    on E: Exception do
    begin
      Mensagem.Erro('Ocorreu um erro ao excluir o produto: %s', [e.Message]);
    end;
  end;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  if Mensagem.Confirma('Deseja sair da aplicação?') then
  begin
    Self.Close;
  end;
end;

procedure TfrmPrincipal.BuscarProdutos;
var
  JSONProduto: TJSONProduto;
  JSONArrayProduto: TJSONArrayProduto;
  sJSON, sErro: string;
begin
  JSONProduto := nil;
  JSONArrayProduto := nil;
  sJSON := '';
  sErro := '';

  try
    if DMRestProduto.ListarProdutos(sJSON, sErro) then
    begin
      JSONArrayProduto := TJson.JsonToObject<TJSONArrayProduto>(sJSON);
      try
        if Assigned(JSONArrayProduto) then
        begin
          queryProdutos.Open;
          queryProdutos.EmptyDataSet;
          queryProdutos.Close;

          queryProdutos.Open;

          for JSONProduto in JSONArrayProduto.produtos do
          begin
            queryProdutos.Append;
            queryProdutos.FieldByName('NCHPRODUTO').AsInteger := JSONProduto.chProduto;
            queryProdutos.FieldByName('TDESCRICAO').AsString := JSONProduto.descricao;
            queryProdutos.FieldByName('TCODIGOBARRAS').AsString := JSONProduto.codigoBarras;
            queryProdutos.FieldByName('TUNIDADE').AsString := JSONProduto.unidade;
            queryProdutos.FieldByName('NVALORVENDA').AsExtended := JSONProduto.valorVenda;
            queryProdutos.FieldByName('NQTDESTOQUE').AsExtended := JSONProduto.qtdEstoque;
            queryProdutos.Post;
          end;
        end;
      finally
        if Assigned(JSONArrayProduto) then FreeAndNil(JSONArrayProduto)
      end;
    end
    else
    begin
      Mensagem.Erro(sErro);
    end;
  except
    on E: Exception do
    begin
      Mensagem.Erro('Ocorreu um erro ao buscar os produtos: %s', [e.Message])
    end;
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  queryProdutos.Close;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Self.BuscarProdutos;
end;

function TfrmPrincipal.ValidarProduto: Boolean;
begin
  Result := True;

  if queryProdutos.Fields[0].AsInteger = 0 then
  begin
    Result := False;
    Mensagem.Erro('Não foi possível completar a operação, nenhum produto foi selecionado.');
  end
end;

end.
