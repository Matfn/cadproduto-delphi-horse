unit Controller.Produto;

interface

uses
  Horse, System.JSON, System.SysUtils, Model.Produto, DataSet.Serialize, Data.Win.ADODB,
  Data.DB, REST.Json, JSON.Produto;

procedure Registry;
procedure CadastrarProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure ExcluirProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure AtualizarProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure BuscarProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure ListarProdutos(Req: THorseRequest; Res: THorseResponse; Next: TProc);

implementation

procedure Registry;
begin
  THorse.Get('/produto', ListarProdutos);
  THorse.Get('/produto/:chproduto', BuscarProduto);
  THorse.Post('/produto', CadastrarProduto);
  THorse.Put('/produto', AtualizarProduto);
  THorse.Delete('/produto/:chproduto', ExcluirProduto);
end;

procedure CadastrarProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  JSONProduto: TJSONProduto;
  produto: TProduto;
begin
  try
    JSONProduto := TJson.JsonToObject<TJSONProduto>(Req.Body);
    try
      if Assigned(JSONProduto) then
      begin
        produto := TProduto.Create;
        try
          produto.descricao    := JSONProduto.descricao;
          produto.codigoBarras := JSONProduto.codigoBarras;
          produto.unidade      := JSONProduto.unidade;
          produto.valorVenda   := JSONProduto.valorVenda;
          produto.qtdEstoque   := JSONProduto.qtdEstoque;

          if produto.Insert then
          begin
            JSONProduto.chProduto := produto.chProduto;

            Res.Send<TJSONObject>(TJson.ObjectToJsonObject(JSONProduto)).Status(THTTPStatus.Created);
          end;
        finally
          if Assigned(produto) then FreeAndNil(produto);
        end;
      end;
    finally
      if Assigned(JSONProduto) then FreeAndNil(JSONProduto);
    end;
  except
    on E: Exception do
    begin
      Res.Send('Ocorreu um erro ao cadastrar o produto: ' + e.Message).Status(THTTPStatus.InternalServerError);
    end;
  end;
end;

procedure AtualizarProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  JSONProduto: TJSONProduto;
  produto: TProduto;
begin
  try
    JSONProduto := TJson.JsonToObject<TJSONProduto>(Req.Body);
    try
      if Assigned(JSONProduto) then
      begin
        produto := TProduto.Create;
        try
          produto.chProduto    := JSONProduto.chProduto;
          produto.descricao    := JSONProduto.descricao;
          produto.codigoBarras := JSONProduto.codigoBarras;
          produto.unidade      := JSONProduto.unidade;
          produto.valorVenda   := JSONProduto.valorVenda;
          produto.qtdEstoque   := JSONProduto.qtdEstoque;

          if produto.Update then
          begin
            Res.Send<TJSONObject>(TJson.ObjectToJsonObject(JSONProduto)).Status(THTTPStatus.Created);
          end;
        finally
          if Assigned(produto) then FreeAndNil(produto);
        end;
      end;
    finally
      if Assigned(JSONProduto) then FreeAndNil(JSONProduto);
    end;
  except
    on E: Exception do
    begin
      Res.Send('Ocorreu um erro ao atualizar o produto: ' + e.Message).Status(THTTPStatus.InternalServerError);
    end;
  end;
end;

procedure ExcluirProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  produto: TProduto;
  chProduto: Integer;
begin
  try
    produto := TProduto.Create;
    try
      chProduto := Req.Params.Field('chproduto').AsInteger;
      produto.chProduto := chProduto;

      if produto.Delete then
      begin
        Res.Send(Format('Produto cód. %d excluído com sucesso.', [chProduto]));
      end;
    finally
      if Assigned(produto) then FreeAndNil(produto)
    end;
  except
    on E: Exception do
    begin
      Res.Send('Ocorreu um erro ao excluir o produto: ' + e.Message).Status(THTTPStatus.InternalServerError)
    end;
  end;
end;

procedure BuscarProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  produto: TProduto;
  chProduto: Integer;
  JSONProduto: TJSONProduto;
begin
  try
    produto := TProduto.Create;
    try
      chProduto := Req.Params.Field('chproduto').AsInteger;
      produto.Select(chProduto);

      if produto.chProduto > 0 then
      begin
        JSONProduto := TJSONProduto.Create;
        try
          JSONProduto.chProduto := produto.chProduto;
          JSONProduto.descricao := produto.descricao;
          JSONProduto.codigoBarras := produto.codigoBarras;
          JSONProduto.unidade := produto.unidade;
          JSONProduto.valorVenda := produto.valorVenda;
          JSONProduto.qtdEstoque := produto.qtdEstoque;

          Res.Send<TJSONObject>(TJson.ObjectToJsonObject(JSONProduto));
        finally
          if Assigned(JSONProduto) then FreeAndNil(JSONProduto);
        end;
      end
      else
      begin
        Res.Send(Format('O produto com cód. %d não foi localizado.', [chProduto]));
      end;
    finally
      if Assigned(produto) then FreeAndNil(produto)
    end;
  except
    on E: Exception do
    begin
      Res.Send('Ocorreu um erro ao buscar o produto: ' + e.Message).Status(THTTPStatus.InternalServerError)
    end;
  end;
end;

procedure ListarProdutos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  produto: TProduto;
  qry: TADOQuery;
  JSONProduto: TJSONProduto;
  arrayJSONProduto: TJSONArrayProduto;
  arrayProdutos: TArrayProduto;
begin
  produto := nil;
  qry := nil;
  JSONProduto := nil;
  arrayJSONProduto := nil;
  SetLength(arrayProdutos, 0);

  try
    produto := TProduto.Create;
    try
      qry := produto.SelectQuery;
      try
        arrayJSONProduto := TJSONArrayProduto.Create;
        try
          if not qry.IsEmpty then
          begin
            qry.First;

            while not qry.Eof do
            begin
              JSONProduto := TJSONProduto.Create;

              JSONProduto.chProduto    := qry.FieldByName('NCHPRODUTO').AsInteger;
              JSONProduto.descricao    := qry.FieldByName('TDESCRICAO').AsString;
              JSONProduto.codigoBarras := qry.FieldByName('TCODIGOBARRAS').AsString;
              JSONProduto.unidade      := qry.FieldByName('TUNIDADE').AsString;
              JSONProduto.valorVenda   := qry.FieldByName('NVALORVENDA').AsExtended;
              JSONProduto.qtdEstoque   := qry.FieldByName('NQTDESTOQUE').AsExtended;

              SetLength(arrayProdutos, (Length(arrayProdutos) + 1));

              arrayProdutos[Length(arrayProdutos) - 1] := JSONProduto;

              qry.Next;
            end;
          end;

          arrayJSONProduto.produtos := arrayProdutos;

          Res.Send<TJSONObject>(TJson.ObjectToJsonObject(arrayJSONProduto));
        finally
          if Assigned(arrayJSONProduto) then FreeAndNil(arrayJSONProduto);
        end;
      finally
        if Assigned(qry) then
        begin
          qry.Close;
          FreeAndNil(qry);
        end;
      end;
    finally
      if Assigned(produto) then FreeAndNil(produto);
    end;
  except
    on E: Exception do
    begin
      Res.Send('Ocorreu um erro ao listar os produtos: ' + e.Message).Status(THTTPStatus.InternalServerError);
    end;
  end;
end;

end.
