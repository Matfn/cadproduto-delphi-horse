unit uFrmCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Buttons, Data.DB, Data.Win.ADODB, Vcl.Mask, Vcl.DBCtrls, REST.Json, Rest.Types,
  JSON.Produto;

type
  TfrmCadastroProduto = class(TForm)
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    lblQtdEstoque: TLabel;
    lblValorVenda: TLabel;
    lblDescricao: TLabel;
    lblCodigoBarras: TLabel;
    pnlOperacoes: TPanel;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    lblUnidade: TLabel;
    edtCodigoBarras: TEdit;
    edtDescricao: TEdit;
    edtQtdEstoque: TEdit;
    cboUnidade: TComboBox;
    edtValorVenda: TEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtValorVendaExit(Sender: TObject);
    procedure edtQtdEstoqueExit(Sender: TObject);
    procedure cboUnidadeExit(Sender: TObject);
  private
    FChProduto: Integer;

    function ValidarDados: Boolean;
    procedure BuscarProduto;
  public
    constructor Create(aOwner: TComponent; aChProduto: Integer); reintroduce; overload;
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

uses
  uMensagens, uDMRESTProduto;

{$R *.dfm}

{ TfrmCadastroProduto }

procedure TfrmCadastroProduto.btnCancelarClick(Sender: TObject);
begin
  if Mensagem.Confirma('Deseja realmente cancelar a operação?') then
  begin
    Self.Close;
  end;
end;

procedure TfrmCadastroProduto.btnGravarClick(Sender: TObject);
var
  valorVenda, qtdEstoque: Extended;
  JSONProduto: TJSONProduto;
  erroRetorno: string;
begin
  valorVenda := 0;
  qtdEstoque := 0;
  JSONProduto := nil;
  erroRetorno := '';

  try
    if Self.ValidarDados then
    begin
      JSONProduto := TJSONProduto.Create;
      try
        JSONProduto.chProduto := Self.FChProduto;
        JSONProduto.codigoBarras :=  edtCodigoBarras.Text;
        JSONProduto.descricao := edtDescricao.Text;
        JSONProduto.unidade := cboUnidade.Items[cboUnidade.ItemIndex];

        if TryStrToFloat(edtValorVenda.Text, valorVenda) then
        begin
          JSONProduto.valorVenda := valorVenda;
        end
        else
        begin
          JSONProduto.valorVenda := 0;
        end;

        if TryStrToFloat(edtQtdEstoque.Text, qtdEstoque) then
        begin
          JSONProduto.qtdEstoque := qtdEstoque;
        end
        else
        begin
          JSONProduto.qtdEstoque := 0;
        end;

        if Self.FChProduto = 0 then
        begin
          if DMRestProduto.CadastrarAlterarProduto(rmPOST, JSONProduto, erroRetorno) then
          begin
            Mensagem.Aviso('Produto cadastrado com sucesso!');
          end;
        end
        else
        begin
          if DMRestProduto.CadastrarAlterarProduto(rmPUT, JSONProduto, erroRetorno) then
          begin
            Mensagem.Aviso('Produto alterado com sucesso!');
          end;
        end;

        if erroRetorno.Equals('') then
        begin
          Self.Close;
        end
        else
        begin
          Mensagem.Erro(erroRetorno);
        end;
      finally
        if Assigned(JSONProduto) then FreeAndNil(JSONProduto);
      end;
    end;
  except
    on E: Exception do
    begin
      Mensagem.Erro('Ocorreu um erro ao tentar executar a operação: %s', [e.Message])
    end;
  end;
end;

procedure TfrmCadastroProduto.BuscarProduto;
var
  JSONProduto: TJSONProduto;
  sErro, sJSON: string;
begin
  JSONProduto := nil;
  sErro := '';

  try
    if DMRestProduto.BuscarProduto(Self.FChProduto, sJSON, sErro) then
    begin
      JSONProduto := TJson.JsonToObject<TJSONProduto>(sJSON);
      try
        if Assigned(JSONProduto) then
        begin
          edtCodigoBarras.Text := JSONProduto.codigoBarras;
          edtDescricao.Text := JSONProduto.descricao;
          cboUnidade.Text := JSONProduto.unidade;
          edtValorVenda.Text := FormatFloat('#,##0.00', JSONProduto.valorVenda);
          edtQtdEstoque.Text := FormatFloat('#,##0.00', JSONProduto.qtdEstoque);
        end;
      finally
        if Assigned(JSONProduto) then FreeAndNil(JSONProduto);
      end;
    end
    else
    begin
      Mensagem.Erro(sErro);
    end;
  except
    on E: Exception do
    begin
      Mensagem.Erro('Ocorreu um erro ao buscar o produto: %s', [e.Message])
    end;
  end;
end;

procedure TfrmCadastroProduto.cboUnidadeExit(Sender: TObject);
begin
  if cboUnidade.ItemIndex = -1 then
  begin
    cboUnidade.ItemIndex := 0;
  end;
end;

constructor TfrmCadastroProduto.Create(aOwner: TComponent; aChProduto: Integer);
begin
  Self.FChProduto := aChProduto;

  inherited Create(aOwner);
end;

procedure TfrmCadastroProduto.edtQtdEstoqueExit(Sender: TObject);
var
  qtd: Extended;
begin
  if TryStrToFloat(edtQtdEstoque.Text, qtd) then
  begin
    edtQtdEstoque.Text := FormatFloat('#,##0.00', qtd);
  end
  else
  begin
    edtQtdEstoque.Text := '';
  end;
end;

procedure TfrmCadastroProduto.edtValorVendaExit(Sender: TObject);
var
  valor: Extended;
begin
  if TryStrToFloat(edtValorVenda.Text, valor) then
  begin
    edtValorVenda.Text := FormatFloat('#,##0.00', valor);
  end
  else
  begin
    edtValorVenda.Text := '';
  end;
end;

procedure TfrmCadastroProduto.FormShow(Sender: TObject);
begin
  if Self.FChProduto = 0 then
  begin
    cboUnidade.ItemIndex := 0;
  end
  else
  begin
    Self.BuscarProduto;
  end;
end;

function TfrmCadastroProduto.ValidarDados: Boolean;
var
  sCamposInv, sCodBarras: string;
  i: Integer;
  valorVenda, qtdEstoque: Extended;
begin
  Result := True;
  sCamposInv := '';
  sCodBarras := '';
  valorVenda := 0;
  qtdEstoque := 0;

  sCodBarras := edtCodigoBarras.Text;

  if sCodBarras.Equals('') then
  begin
    sCamposInv := sCamposInv + Copy(lblCodigoBarras.Caption, 1, (Length(lblCodigoBarras.Caption) - 1)) + #13;
  end
  else
  begin
    for i := 1 to Length(sCodBarras) do
    begin
      if not CharInSet(sCodBarras[i], ['0'..'9']) then
      begin
        sCamposInv := sCamposInv + Copy(lblCodigoBarras.Caption, 1, (Length(lblCodigoBarras.Caption) - 1)) + #13;
        Break;
      end;
    end;
  end;

  if string(edtDescricao.Text).Equals('') then
  begin
    sCamposInv := sCamposInv + Copy(lblDescricao.Caption, 1, (Length(lblDescricao.Caption) - 1)) + #13;
  end;

  if ((string(edtValorVenda.Text).Equals('')) or (not TryStrToFloat(edtValorVenda.Text, valorVenda))) then
  begin
    sCamposInv := sCamposInv + Copy(lblValorVenda.Caption, 1, (Length(lblValorVenda.Caption) - 1)) + #13;
  end;

  if ((string(edtQtdEstoque.Text).Equals('')) or (not TryStrToFloat(edtQtdEstoque.Text, qtdEstoque))) then
  begin
    sCamposInv := sCamposInv + Copy(lblQtdEstoque.Caption, 1, (Length(lblQtdEstoque.Caption) - 1)) + #13;
  end;

  if cboUnidade.Items[cboUnidade.ItemIndex].Equals('') then
  begin
    sCamposInv := sCamposInv + Copy(lblUnidade.Caption, 1, (Length(lblUnidade.Caption) - 1));
  end;

  if not sCamposInv.Equals('') then
  begin
    Mensagem.Erro('Não foi possível completar a operação, os seguintes campos estão inválidos:' + #13#13 + sCamposInv);
    Result := False;
  end;
end;

end.
