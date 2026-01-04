unit uGerenciadorConexoes;

interface
  uses
    uConexaoMysql;

  type
    TGerenciadorConexoes = class

    private
      class var FBasePrincipal: TConexaoMysql;

    public
      class function BasePrincipal: TConexaoMysql;
      class procedure Finalizar;
    end;

implementation

class function TGerenciadorConexoes.BasePrincipal: TConexaoMysql;
begin

  if not Assigned(FBasePrincipal) then
  begin
    FBasePrincipal:=TConexaoMysql.Create;
    FBasePrincipal.Conectar('organizador');
  end;

  Result:=FBasePrincipal;
end;

class procedure TGerenciadorConexoes.Finalizar;
begin
  BasePrincipal.Free;
end;

end.
