unit uConexaoMySQL;

interface

uses
  iConexao, FireDAC.Comp.Client, FireDAC.Phys.MySQL;

type
  TConexaoMySQL = class( TInterfacedObject, IConexao )
  private
    FConn: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;

    procedure Conectar;
    procedure Desconectar;
    function Connection: TFDConnection;
  end;

implementation

constructor TConexaoMySQL.Create;
begin
  FConn := TFDConnection.Create(nil);
end;

destructor TConexaoMySQL.Destroy;
begin
  FConn.Free;
  inherited;
end;

procedure TConexaoMySQL.Conectar;
begin
  with FConn.Params do
  begin
    Clear;
    DriverID := 'MySQL';
    Add('Server=localhost');
    Add('Port=3306');
    Database := 'sistema';
    UserName := 'root';
    Password := '123';
  end;
  FConn.Connected := True;
end;

procedure TConexaoMySQL.Desconectar;
begin
  FConn.Connected := False;
end;

function TConexaoMySQL.Connection: TFDConnection;
begin
  Result := FConn;
end;

end.

