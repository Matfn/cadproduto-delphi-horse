unit uDMRESTProduto;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, JSON.Produto, REST.Json,
  System.StrUtils;

type
  TDMRestProduto = class(TDataModule)
    RESTProduto: TRESTClient;
    ReqProdutoGet: TRESTRequest;
    ReqProdutoDelete: TRESTRequest;
    ReqProdutoPostPut: TRESTRequest;
  private
    { Private declarations }
  public
    function CadastrarAlterarProduto(aVerbo: TRESTRequestMethod; aJSONProduto: TJSONProduto; out aErro: string): Boolean;
    function ListarProdutos(out aJSON: string; out aErro: string): Boolean;
    function BuscarProduto(aChProduto: Integer; out aJSON: string; out aErro: string): Boolean;
    function ExcluirProduto(aChProduto: Integer; out aErro: string): Boolean;
  end;

var
  DMRestProduto: TDMRestProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMRestProduto }

function TDMRestProduto.BuscarProduto(aChProduto: Integer; out aJSON, aErro: string): Boolean;
begin
  Result := False;
  aErro := '';
  aJSON := '';

  ReqProdutoGet.Resource := 'produto/' + IntToStr(aChProduto);
  ReqProdutoGet.Execute;

  if ReqProdutoGet.Response.StatusCode <> 200 then
  begin
    aErro := Format('Ocorreu um erro ao buscar o produto de cód. %d.' + #13#13 +
                    'Status code: %d.' + #13 +
                    'Retorno: %s', [aChProduto, ReqProdutoGet.Response.StatusCode, ReqProdutoGet.Response.JSONValue.ToString])
  end
  else
  begin
    Result := True;

    aJSON := ReqProdutoGet.Response.JSONValue.ToString;
  end;
end;

function TDMRestProduto.CadastrarAlterarProduto(aVerbo: TRESTRequestMethod; aJSONProduto: TJSONProduto; out aErro: string): Boolean;
var
  sMetodo: string;
begin
  Result := False;
  aErro := '';
  sMetodo := '';

  ReqProdutoPostPut.Params.Clear;
  ReqProdutoPostPut.Body.ClearBody;
  ReqProdutoPostPut.Method := aVerbo;
  ReqProdutoPostPut.Body.Add(TJson.ObjectToJsonString(aJSONProduto), ContentTypeFromString(CONTENTTYPE_APPLICATION_JSON));

  ReqProdutoPostPut.Execute;

  if (ReqProdutoPostPut.Response.StatusCode <> 200) and
     (ReqProdutoPostPut.Response.StatusCode <> 201) then
  begin
    sMetodo := ifThen(aVerbo = rmPOST, 'cadastrar', 'alterar');

    aErro := Format('Ocorreu um erro ao %s o produto.' + #13#13 +
                    'Status code: %d.' + #13 +
                    'Retorno: %s', [sMetodo, ReqProdutoPostPut.Response.StatusCode, ReqProdutoPostPut.Response.JSONValue.ToString])
  end
  else
  begin
    Result := True;
  end;
end;

function TDMRestProduto.ExcluirProduto(aChProduto: Integer; out aErro: string): Boolean;
begin
  Result := False;
  aErro := '';

  ReqProdutoDelete.Resource := 'produto/' + IntToStr(aChProduto);
  ReqProdutoDelete.Execute;

  if ReqProdutoGet.Response.StatusCode <> 200 then
  begin
    aErro := Format('Ocorreu um erro ao excluir o produto de cód. %d.' + #13#13 +
                    'Status code: %d.' + #13 +
                    'Retorno: %s', [aChProduto, ReqProdutoDelete.Response.StatusCode, ReqProdutoDelete.Response.JSONValue.ToString]);
  end
  else
  begin
    Result := True;
  end;
end;

function TDMRestProduto.ListarProdutos(out aJSON: string; out aErro: string): Boolean;
begin
  Result := False;
  aJSON := '';
  aErro := '';

  ReqProdutoGet.Resource := 'produto';
  ReqProdutoGet.Execute;

  if ReqProdutoGet.Response.StatusCode <> 200 then
  begin
    aErro := Format('Ocorreu um erro ao listar os produtos.' + #13#13 +
                    'Status code: %d.' + #13 +
                    'Retorno: %s', [ReqProdutoGet.Response.StatusCode, ReqProdutoGet.Response.JSONValue.ToString]);
  end
  else
  begin
    Result := True;

    aJSON := ReqProdutoGet.Response.JSONValue.ToString;
  end;
end;

end.
