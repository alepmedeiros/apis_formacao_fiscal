unit AuthMicroserviceMain;

interface

uses
  System.SysUtils,
  Horse,
  Horse.jhonson,
  AuthCOntroller;

type
  TMain = class
  private
  public
    class function NEw: TMain;

    procedure Registering;
  end;

implementation


class function TMain.NEw: TMain;
begin
  Result := Self.Create;
end;

procedure TMain.Registering;
begin
  THorse
    .Use(Jhonson);

  TAuthContoller.New.RegisterController;

  THorse.Listen(9002, procedure
  begin
    writeln(Format('Servidor rodando %s:%d', [THorse.Host, THorse.Port]));
  end);
end;

end.
