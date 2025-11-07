unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  System.JSON,
  JsonObjectValidationHelper,
  models;

procedure TForm1.Button1Click(Sender: TObject);
begin
  var LJSON := '{"Nome":"Alessandro", "endereco": [{"Logradouro": "Rua Teste"}]}';
  var JSONObject := TJSONObject.ParseJSONValue(LJSON) as TJSONObject;
  var LCliente := TCliente.Create;
  JSONObject.ValidateRequiredFields(LCliente);
  ShowMessage('JSON Validado com sucesso');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  var LData: TDateTime;
  Ldata := -693594;

  if DateTimeToStr(LData) = '00/00/0000' then
    ShowMessage('passou');

  Memo1.Lines.Add(DateTimeToStr(LData));
end;

end.
