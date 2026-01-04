unit iConexao;

interface

uses FireDAC.Comp.Client;

type
  IConexoes = interface
    ['{9F2C8C77-1F02-4D66-9D42-123456789AAA}']
    procedure Conectar;
    procedure Desconectar;
    function Connection: TFDConnection;
  end;

implementation

end.
