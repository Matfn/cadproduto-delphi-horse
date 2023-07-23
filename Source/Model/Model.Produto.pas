unit Model.Produto;

interface

uses
  uPersistentObject, uAttribute, Data.Win.ADODB;

type
  [TableName('TABPRODUTOS')]
  TProduto = class(TPersistentObject)
  private
    Funidade: string;
    FvalorVenda: Extended;
    FchProduto: Integer;
    Fdescricao: string;
    FcodigoBarras: string;
    FqtdEstoque: Extended;
  public
    [FieldName('NCHPRODUTO', True, True)]
    property chProduto: Integer read FchProduto write FchProduto;

    [FieldName('TDESCRICAO')]
    property descricao: string read Fdescricao write Fdescricao;

    [FieldName('TCODIGOBARRAS')]
    property codigoBarras: string read FcodigoBarras write FcodigoBarras;

    [FieldName('TUNIDADE')]
    property unidade: string read Funidade write Funidade;

    [FieldName('NVALORVENDA')]
    property valorVenda: Extended read FvalorVenda write FvalorVenda;

    [FieldName('NQTDESTOQUE')]
    property qtdEstoque: Extended read FqtdEstoque write FqtdEstoque;

    procedure Select(const aValue: Integer); override;
  end;

implementation

{ TProduto }

procedure TProduto.Select(const aValue: Integer);
begin
  Self.chProduto := aValue;

  inherited Select;
end;

end.
