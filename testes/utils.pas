unit utils;

interface

uses
  System.SysUtils,
  System.Classes,
  System.JSON.Serializers,
  System.JSON.Writers,
  System.JSON,
  System.RTTI,
  System.TypInfo,
  System.Generics.Collections,
  Rest.Json;

type
  TObjectHelper = class helper for TObject
  public
    function ToJson: string; // Serializa o objeto em JSON
    class function FromJson<T: class, constructor>(const AJson: string): T; static; // Deserializa JSON em objeto
    class function FromJsonList<T: class, constructor>(const AJson: string): TObjectList<T>; static; // Deserializa JSON em lista
  end;

implementation

class function TObjectHelper.FromJson<T>(const AJson: string): T;
begin
  Result := nil;
  var LJSONValue := TJSONObject.ParseJSONValue(AJson);
  try
    if Assigned(LJSONValue) and (LJSONValue is TJSONObject) then
      Result := TJSON.JsonToObject<T>(TJSONObject(LJSONValue));
  finally
    LJSONValue.Free;
  end;
end;

class function TObjectHelper.FromJsonList<T>(const AJson: string): TObjectList<T>;
begin
  var LItem: T;
  Result := TObjectList<T>.Create;
  var LJSONArray := TJSONObject.ParseJSONValue(AJson) as TJSONArray;
  try
    for var LValue in LJSONArray do
    begin
      LItem := TJSON.JsonToObject<T>(LValue as TJSONObject);
      Result.Add(LItem);
    end;
  finally
    LJSONArray.Free;
  end;
end;

function TObjectHelper.ToJson: string;
var
  JsonObject: TJSONObject;
  CleanedObject: TJSONObject;
begin
  JsonObject := TJson.ObjectToJsonObject(Self); // Serializa o objeto para JSON
  try
    // Cria um novo objeto limpo
    CleanedObject := TJSONObject.Create;
    try
      // Limpa os campos indesejados
      CleanJsonObject(JsonObject, CleanedObject);

      // Retorna o JSON como string
      Result := CleanedObject.ToJSON;
    finally
      CleanedObject.Free;
    end;
  finally
    JsonObject.Free;
  end;
end;

end.
