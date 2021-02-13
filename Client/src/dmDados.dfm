object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 426
  Width = 741
  object EMSProvider1: TEMSProvider
    ApiVersion = '2'
    URLHost = 'localhost:8080'
    URLPort = 0
    Left = 40
    Top = 16
  end
  object BackendEndpoint1: TBackendEndpoint
    Provider = EMSProvider1
    Params = <>
    Resource = 'RestCustumers'
    Response = RESTResponse1
    Left = 40
    Top = 80
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 40
    Top = 144
  end
end
