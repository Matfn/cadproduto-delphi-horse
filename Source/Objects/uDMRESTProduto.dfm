object DMRestProduto: TDMRestProduto
  Height = 293
  Width = 456
  object RESTProduto: TRESTClient
    BaseURL = 'http://localhost:9000'
    Params = <>
    SynchronizedEvents = False
    Left = 72
    Top = 24
  end
  object ReqProdutoGet: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTProduto
    Params = <>
    Resource = 'produto'
    SynchronizedEvents = False
    Left = 248
    Top = 24
  end
  object ReqProdutoDelete: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTProduto
    Method = rmDELETE
    Params = <>
    Resource = 'produto'
    SynchronizedEvents = False
    Left = 248
    Top = 88
  end
  object ReqProdutoPostPut: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTProduto
    Method = rmPOST
    Params = <>
    Resource = 'produto'
    SynchronizedEvents = False
    Left = 248
    Top = 160
  end
end
