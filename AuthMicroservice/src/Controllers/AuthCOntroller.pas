unit AuthCOntroller;

interface

uses
  Horse,
  System.JSON,
  System.SysUtils,
  EventDispatcher,
  AuthEventHandler,
  AuthService;

type
  TAuthContoller = class
  private
    FDispatcher: TEventDispatcher;
  protected
    procedure ValidateToken(Req: THorseRequest; Res: THorseResponse);
    procedure Login(Req: THorseRequest; Res: THorseResponse);
  public
    class function New: TAuthContoller;
    procedure RegisterController;
  end;

implementation

{ TAuthContoller }

procedure TAuthContoller.Login(Req: THorseRequest; Res: THorseResponse);
begin
  var LUsername := Req.Body<TJSONObject>.GetValue<String>('username');
  var LPassword := Req.Body<TJSONObject>.GetValue<String>('password');
  var LAuthService := TAuthService.Create;

  try
    var LToken := LAuthService.Login(LUsername, LPassword);
    if not LToken.isEmpty then
      Res.Status(200).Send(LToken)
    else
      Res.Status(401).Send('Falha na autenticação');
  finally
    LAuthService.Free;
  end;
end;

class function TAuthContoller.New: TAuthContoller;
begin
  Result := SElf.Create;
end;

procedure TAuthContoller.RegisterController;
begin
  FDispatcher := TEventDispatcher.Create;

  // Registrar handler para eventos de autenticção
  var LAuthHandler := TAuthEventHandler.Create;
  FDispatcher.Subscribe('AuthEvent', LAuthHandler.Handle);

  THorse
    .Post('/login', Login)
    .Get('/checktoken', ValidateToken);
end;

procedure TAuthContoller.ValidateToken(Req: THorseRequest; Res: THorseResponse);
begin
  // Exemplo Validar token fiscticio
  if Req.Headers['Authorization'] = 'Bearer valid_token' then
    Res.Status(200).Send('Token valido')
  else
    Res.Status(401).Send('Token inválido');
end;

end.
