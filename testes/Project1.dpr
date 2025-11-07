program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  models in 'models.pas',
  JsonArrayValidationHelper in '..\..\live-formacao-fiscal\servidornfc-before\src\application\dto\JsonArrayValidationHelper.pas',
  JsonAttributes in '..\..\live-formacao-fiscal\servidornfc-before\src\application\dto\JsonAttributes.pas',
  JsonObjectValidationHelper in '..\..\live-formacao-fiscal\servidornfc-before\src\application\dto\JsonObjectValidationHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
