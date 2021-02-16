program Client;

uses
  Vcl.Forms,
  uMain in 'src\uMain.pas' {Form1},
  dmDados in 'src\dmDados.pas' {Dados: TDataModule},
  uJSONHelper in '..\Shared\uJSONHelper.pas' {JSONDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDados, Dados);
  Application.Run;
end.
