object RestCustumersResource1: TRestCustumersResource1
  OldCreateOrder = False
  Height = 300
  Width = 600
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=EMPLOYEE')
    Connected = True
    LoginPrompt = False
    Left = 30
    Top = 16
  end
  object qryCUSTOMER: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from CUSTOMER')
    Left = 130
    Top = 16
  end
  object dsrCUSTOMER: TEMSDataSetResource
    AllowedActions = [List, Get, Post, Put, Delete]
    DataSet = qryCUSTOMER
    Left = 130
    Top = 64
  end
  object vQryDeleteCustumer: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'DELETE FROM CUSTOMER WHERE CUST_NO = :CUST_NO')
    Left = 497
    Top = 29
    ParamData = <
      item
        Name = 'CUST_NO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object vQryDeleteSales: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    SQL.Strings = (
      'delete from sales where cust_no = :CUST_NO')
    Left = 497
    Top = 77
    ParamData = <
      item
        Name = 'CUST_NO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryInserir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'insert into  CUSTOMER (cust_no, customer, CONTACT_FIRST, CONTACT' +
        '_LAST, PHONE_NO, ADDRESS_LINE1, ADDRESS_LINE2, CITY, STATE_PROVI' +
        'NCE, COUNTRY, POSTAL_CODE, ON_HOLD)'
      
        'values (:id, :nome, :contato1, :contato2, :fone, :ander1, :ender' +
        '2, :city, :state, :pais, :cod, :hold )')
    Left = 234
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Name = 'CONTATO1'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Name = 'CONTATO2'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'FONE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'ANDER1'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'ENDER2'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'CITY'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Name = 'STATE'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Name = 'PAIS'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Name = 'COD'
        DataType = ftString
        ParamType = ptInput
        Size = 12
      end
      item
        Name = 'HOLD'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
  end
end
