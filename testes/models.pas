unit models;

interface

uses
  GBJSON.Helper,
  System.Generics.Collections,
  JsonAttributes;

type
  TEndereco = class
  private
    FLogradouro: String;
  public
    property Logradouro: String read FLogradouro write FLogradouro;
  end;

  TTelefone = class
  private
    FNumero: String;
    FTipo: String;
  public
    property Numero: String read FNumero write FNumero;
    property Tipo: String read FTipo write FTipo;
  end;

  TCliente = class
  private
    FNome: String;
    FsobreNome: String;
    Fidade: Integer;
    Ftelefone: TTelefone;
    Fenderecos: TObjectList<TEndereco>;
  public
    constructor Create;
    destructor Destroy; override;

    [Required]
    property Nome: String read FNome write FNome;
    [Required]
    property sobreNome: String read FsobreNome write FsobreNome;
    property idade: Integer read Fidade write Fidade;
    property telefone: TTelefone read Ftelefone write Ftelefone;
    property enderecos: TObjectList<TEndereco> read Fenderecos write Fenderecos;
  end;

implementation

{ TCliente }

constructor TCliente.Create;
begin
  Ftelefone := TTelefone.Create;
  Fenderecos := TObjectList<TEndereco>.Create;
end;

destructor TCliente.Destroy;
begin
  Ftelefone.Free;
  Fenderecos.Free;
  inherited;
end;

end.
