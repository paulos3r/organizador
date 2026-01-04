unit uConexaoBase;

interface

uses FireDAC.Comp.Client;

type
  TConexaoBase = class

    protected
      FConnection: TFDConnection;

    public
      constructor Create;
      destructor Destroy; override;

      property Connection: TFDConnection read FConnection;

  end;

implementation

constructor TConexaoBase.Create;
begin

  FConnection:=TFDConnection.Create(nil);

end;

destructor TConexaoBase.Destroy;
begin
  FConnection.Free;
  inherited;
end;

end.
