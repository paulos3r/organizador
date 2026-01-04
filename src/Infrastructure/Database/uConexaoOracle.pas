unit uConexaoOracle;

interface

uses
  iConexao, FireDAC.Comp.Client, FireDAC.Phys.Oracle;

type
  TConexaoOracle = class(TInterfacedObject, IConexao)
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

constructor TConexaoOracle.Create;
begin
  FConn := TFDConnection.Create(nil);
end;

destructor TConexaoOracle.Destroy;
begin
  FConn.Free;
  inherited;
end;

procedure TConexaoOracle.Conectar;
begin
  with FConn.Params do
  begin
    Clear;
    DriverID := 'Ora';
    Add('Server=192.168.1.10');
    Add('Port=1521');
    Add('ServiceName=ORCL');
    UserName := 'usuario';
    Password := 'senha';
  end;
  FConn.Connected := True;
end;

procedure TConexaoOracle.Desconectar;
begin
  FConn.Connected := False;
end;

function TConexaoOracle.Connection: TFDConnection;
begin
  Result := FConn;
end;

end.

