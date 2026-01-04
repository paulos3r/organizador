unit rBanco;

interface

uses iConexao, uConexaoMysql, uConexaoOracle;

type TTipoBanco = (tbMysql, tbOracle);

  TBanco = record

  private
    FDB:IConexoes;
  public
    procedure User(Tipo: TTipoBanco);
    procedure Conectar;
    procedure Desconectar;
    function conn: IConexoes;

end;

implementation

procedure TBanco.User(Tipo: TTipoBanco);
begin
  case Tipo of
    tbMysql: FDB := TConexaoMysql.Create;
    tbOracle: FDB := TConexaoOracle.Create;
  end;
end;

procedure TBanco.Conectar;
begin
  if Assigned(FDB) then
    FDB.Conectar;

end;

procedure TBanco.Desconectar;
begin
  Result := FDB;
end;

end.
