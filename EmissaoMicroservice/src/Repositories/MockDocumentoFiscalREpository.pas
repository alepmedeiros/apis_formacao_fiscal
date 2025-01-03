unit MockDocumentoFiscalREpository;

interface

uses
  System.Generics.Collections,
  DocumentoFiscalREpository.interfaces,
  DocumentoFiscal;

type
  TMockDocumentoFiscalRespository = class(TInterfacedObject,
    IDocumentoFiscalRepository)
  private
    FStore: TObjectDictionary<String, TDocumentoFiscal>;
  public
    constructor Create;
    destructor DEstroy; override;
    function Salvar(Documento: TDocumentoFiscal): Boolean;
    function Buscar(NUmero: String): TDocumentoFiscal;
  end;

implementation

{ TMockDocumentoFiscalRespository }

function TMockDocumentoFiscalRespository.Buscar(NUmero: String)
  : TDocumentoFiscal;
begin
  if not FStore.TryGetValue(Numero, REsult) then
    Result := Nil;
end;

constructor TMockDocumentoFiscalRespository.Create;
begin
  FStore := TObjectDictionary<String, TDocumentoFiscal>.Create([doOwnsValues]);
end;

destructor TMockDocumentoFiscalRespository.DEstroy;
begin
  FStore.Free;
  inherited;
end;

function TMockDocumentoFiscalRespository.Salvar
  (Documento: TDocumentoFiscal): Boolean;
begin
  FStore.AddOrSetValue(Documento.Numero, Documento);
  Result := True;
end;

end.
