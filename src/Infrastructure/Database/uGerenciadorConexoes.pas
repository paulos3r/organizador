unit uGerenciadorConexoes;

interface
  uses
    uConexaoMysql,uConexaoOracle;

  type
    TGerenciadorConexoes = class

    private
      class var FMySQL: TConexaoMysql;
      class var FOracle:TConexaoOracle;

    public
      class function MySQL: TConexaoMysql;
      class function Oracle: TConexaoOracle;

      class procedure Finalizar;
    end;

implementation

class function TGerenciadorConexoes.MySQL: TConexaoMysql;
begin

  if not Assigned(FMySQL) then
  begin
    FMySQL:=TConexaoMysql.Create;
    FMySQL.Conectar();
  end;

  Result:=FMySQL;
end;

class function TGerenciadorConexoes.Oracle: TConexaoOracle;
begin
  if Assigned(FOracle) then
  begin
    FOracle:=TConexaoOracle.Create;
    FOracle.Conectar();
  end;
end;

class procedure TGerenciadorConexoes.Finalizar;
begin
  MySQL.Free;
  Oracle.Free;
end;

end.
