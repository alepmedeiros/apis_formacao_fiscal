program AuthMicroservice;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  AuthMicroserviceMain in 'AuthMicroserviceMain.pas',
  AuthService in 'src\Services\AuthService.pas',
  AuthEventHandler in '..\Events\EventHandlers\AuthEventHandler.pas',
  AuthCOntroller in 'src\Controllers\AuthCOntroller.pas',
  EventDispatcher in '..\Events\EventDispatcher.pas';

begin
  {$IFDEF DEBUG}
    ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  TMain.New.Registering;
end.
