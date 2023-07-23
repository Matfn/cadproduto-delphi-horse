unit JSON.Produto;

interface

uses
  System.SysUtils;

type

  TJSONProduto = class
  private
    FchProduto: Integer;
    Fdescricao: string;
    FcodigoBarras: string;
    Funidade: string;
    FvalorVenda: Extended;
    FqtdEstoque: Extended;
  public
    property chProduto: Integer read FchProduto write FchProduto;
    property descricao: string read Fdescricao write Fdescricao;
    property codigoBarras: string read FcodigoBarras write FcodigoBarras;
    property unidade: string read Funidade write Funidade;
    property valorVenda: Extended read FvalorVenda write FvalorVenda;
    property qtdEstoque: Extended read FqtdEstoque write FqtdEstoque;
  end;

  TArrayProduto = array of TJSONProduto;

  TJSONArrayProduto = class
  private
    Fprodutos: TArrayProduto;
  public
    property produtos: TArrayProduto read Fprodutos write Fprodutos;

    destructor Destroy; override;
  end;

implementation

{ TJSONArrayProduto }

destructor TJSONArrayProduto.Destroy;
var
  i: Integer;
begin

  if Assigned(Self.Fprodutos) then
  begin
    for i := 0 to Length(Self.Fprodutos) - 1 do
    begin
      if Assigned(Self.Fprodutos[i]) then
      begin
        FreeAndNil(Self.Fprodutos[i]);
      end;
    end;
  end;

  inherited;
end;

end.
