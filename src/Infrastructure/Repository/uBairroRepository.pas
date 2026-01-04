unit uBairroRepository;

interface

uses FireDAC.Comp.Client, rBanco;

type
  TBairroRepository = class
  private
    FBanco: TBanco;
  public
    constructor Create(ABanco:TBanco);
    function Listar: TFDQuery;
  end;

implementation

constructor TBairroRepository.Create(ABanco: TBanco);
begin
  FBanco:=ABanco;
end;

function TBairroRepository.Listar: TFDQuery;
begin
  Result := TFDQuery.Create(nil);
  Result.Connection := FBanco.conn.Connection;

  Result.SQL.Text := 'select * from bairro';

  Result.Open;
end;
end.
