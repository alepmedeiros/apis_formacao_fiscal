@echo off
:: Mostra o diretório atual para depuração
echo Diretório atual: %cd%

:: Configura as variáveis de ambiente do Delphi
call "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\rsvars.bat"

:: Verifica se os argumentos foram passados
if "%1"=="" (
    echo Erro: Caminho do diretorio do projeto nao especificado.
    echo Uso: build.bat <CaminhoDoDiretorio> <NomeDoProjeto.dproj>
    exit /b 1
)

if "%2"=="" (
    echo Erro: Nome do projeto nao especificado.
    echo Uso: build.bat <CaminhoDoDiretorio> <NomeDoProjeto.dproj>
    exit /b 1
)

:: Variáveis
set DIRETORIO_PROJETO=%cd%\%1
set PROJETO=%2

:: Navega para o diretório do projeto
cd %DIRETORIO_PROJETO%

:: Mostra o diretório após navegar
echo Diretório do projeto: %cd%

:: Compilação usando MSBuild
echo Compilando o projeto: %PROJETO%...
msbuild %PROJETO% /p:Config=Release /p:Platform=Win32
if %errorlevel% neq 0 (
    echo Erro ao compilar o projeto: %PROJETO%.
    exit /b %errorlevel%
)

echo Compilação concluída com sucesso!
exit /b 0
