unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtID: TEdit;
    edtCustomer: TEdit;
    btnExcluir: TBitBtn;
    btnAtualizar: TBitBtn;
    btnEditar: TSpeedButton;
    btnInserir: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtCONTACT_FIRST: TEdit;
    edtCONTACT_LAST: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtPHONE_NO: TEdit;
    edtADDRESS_LINE1: TEdit;
    edtADDRESS_LINE2: TEdit;
    edtCITY: TEdit;
    edtSTATE_PROVINCE: TEdit;
    edtCOUNTRY: TEdit;
    edtPOSTAL_CODE: TEdit;
    edtON_HOLD: TEdit;
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
    procedure atualizar();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses dmDados, REST.Types, System.JSON;

procedure TForm1.atualizar;
begin
  Dados.bkpExecutarEndPoints.Method := rmGET;
  Dados.bkpExecutarEndPoints.ResourceSuffix := EmptyStr;
  Dados.bkpExecutarEndPoints.Execute;
end;

procedure TForm1.btnAtualizarClick(Sender: TObject);
begin
  // executa verbo Get
  atualizar();
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin

  Dados.bkpExecutarEndPoints.Method := rmDelete;
  Dados.bkpExecutarEndPoints.ResourceSuffix := edtID.Text;;
  Dados.bkpExecutarEndPoints.Execute;

  atualizar();

end;

procedure TForm1.btnInserirClick(Sender: TObject);
var
  jParametro: TJSONObject;
begin

  jParametro := TJSONObject.Create;

  try
    jParametro.AddPair('CUST_NO', Trim(edtID.Text));
    jParametro.AddPair('COSTUMER', Trim(edtCustomer.Text));
    jParametro.AddPair('CONTACT_FIRST', Trim(edtCONTACT_FIRST.Text));
    jParametro.AddPair('CONTACT_LAST', Trim(edtCONTACT_LAST.Text));
    jParametro.AddPair('PHONE_NO', Trim(edtPHONE_NO.Text));
    jParametro.AddPair('ADDRESS_LINE1', Trim(edtADDRESS_LINE1.Text));
    jParametro.AddPair('ADDRESS_LINE2', Trim(edtADDRESS_LINE2.Text));
    jParametro.AddPair('CITY', Trim(edtCITY.Text));
    jParametro.AddPair('STATE_PROVINCE', Trim(edtSTATE_PROVINCE.Text));
    jParametro.AddPair('COUNTRY', Trim(edtCOUNTRY.Text));
    jParametro.AddPair('POSTAL_CODE', Trim(edtPOSTAL_CODE.Text));
    jParametro.AddPair('ON_HOLD', Trim(edtON_HOLD.Text));

    Dados.bkpExecutarEndPoints.Method := rmPUT;
    Dados.bkpExecutarEndPoints.ResourceSuffix := edtID.Text;
    Dados.bkpExecutarEndPoints.AddBody(jParametro);
    Dados.bkpExecutarEndPoints.Execute;
  finally
    jParametro.Free;
  end;

  atualizar();
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  atualizar();
end;

end.
