object Dados: TDados
  OldCreateOrder = False
  Height = 459
  Width = 741
  object EMSProvider1: TEMSProvider
    ApiVersion = '2'
    URLHost = 'localhost:8080'
    URLPort = 0
    Left = 96
    Top = 24
  end
  object bkpExecutarEndPoints: TBackendEndpoint
    Provider = EMSProvider1
    Params = <>
    Resource = 'RestCustumers'
    Response = RESTResponse1
    Left = 96
    Top = 88
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 96
    Top = 152
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 96
    Top = 216
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'CUST_NO'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'CUSTOMER'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'CONTACT_FIRST'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'CONTACT_LAST'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'PHONE_NO'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ADDRESS_LINE1'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ADDRESS_LINE2'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'CITY'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'STATE_PROVINCE'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'COUNTRY'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'POSTAL_CODE'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ON_HOLD'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 96
    Top = 280
    object FDMemTable1CUST_NO: TWideStringField
      FieldName = 'CUST_NO'
      Size = 255
    end
    object FDMemTable1CUSTOMER: TWideStringField
      FieldName = 'CUSTOMER'
      Size = 255
    end
    object FDMemTable1CONTACT_FIRST: TWideStringField
      FieldName = 'CONTACT_FIRST'
      Size = 255
    end
    object FDMemTable1CONTACT_LAST: TWideStringField
      FieldName = 'CONTACT_LAST'
      Size = 255
    end
    object FDMemTable1PHONE_NO: TWideStringField
      FieldName = 'PHONE_NO'
      Size = 255
    end
    object FDMemTable1ADDRESS_LINE1: TWideStringField
      FieldName = 'ADDRESS_LINE1'
      Size = 255
    end
    object FDMemTable1ADDRESS_LINE2: TWideStringField
      FieldName = 'ADDRESS_LINE2'
      Size = 255
    end
    object FDMemTable1CITY: TWideStringField
      FieldName = 'CITY'
      Size = 255
    end
    object FDMemTable1STATE_PROVINCE: TWideStringField
      FieldName = 'STATE_PROVINCE'
      Size = 255
    end
    object FDMemTable1COUNTRY: TWideStringField
      FieldName = 'COUNTRY'
      Size = 255
    end
    object FDMemTable1POSTAL_CODE: TWideStringField
      FieldName = 'POSTAL_CODE'
      Size = 255
    end
    object FDMemTable1ON_HOLD: TWideStringField
      FieldName = 'ON_HOLD'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 96
    Top = 352
  end
end
