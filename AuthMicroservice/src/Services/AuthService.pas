unit AuthService;

interface

uses
  System.Sysutils;

type
  TAuthService = class
  private
  public
    function Login(UserName, Password: String): String;
  end;

implementation

{ TAuthService }

function TAuthService.Login(UserName, Password: String): String;
begin
  if (UserName = 'admin') and (Password = 'admin') then
    Result := Format('Token_%s_%s', [UserName, FormatDateTime('yyyymmddhhnnss', now)])
  else
    Result := '';
end;

end.
