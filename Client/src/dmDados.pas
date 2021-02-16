unit dmDados;

interface

uses
  System.SysUtils, System.Classes, REST.Backend.EMSProvider,
  REST.Backend.ServiceTypes, System.JSON, REST.Backend.EMSServices, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Backend.EndPoint,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter;

type
  TDados = class(TDataModule)
    EMSProvider1: TEMSProvider;
    bkpExecutarEndPoints: TBackendEndpoint;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    FDMemTable1CUST_NO: TWideStringField;
    FDMemTable1CUSTOMER: TWideStringField;
    FDMemTable1CONTACT_FIRST: TWideStringField;
    FDMemTable1CONTACT_LAST: TWideStringField;
    FDMemTable1PHONE_NO: TWideStringField;
    FDMemTable1ADDRESS_LINE1: TWideStringField;
    FDMemTable1ADDRESS_LINE2: TWideStringField;
    FDMemTable1CITY: TWideStringField;
    FDMemTable1STATE_PROVINCE: TWideStringField;
    FDMemTable1COUNTRY: TWideStringField;
    FDMemTable1POSTAL_CODE: TWideStringField;
    FDMemTable1ON_HOLD: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dados: TDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
