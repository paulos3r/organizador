program organizador;

uses
  Vcl.Forms,
  frmPrincipal in 'src\Presentation\Forms\frmPrincipal.pas' {frmOrganizador},
  uConexaoBase in 'src\Infrastructure\Database\uConexaoBase.pas',
  uConexaoMysql in 'src\Infrastructure\Database\uConexaoMysql.pas',
  uGerenciadorConexoes in 'src\Infrastructure\Database\uGerenciadorConexoes.pas',
  uConexaoOracle in 'src\Infrastructure\Database\uConexaoOracle.pas',
  iConexao in 'src\Domain\contracts\iConexao.pas',
  uBairroRepository in 'src\Infrastructure\Repository\uBairroRepository.pas',
  rBanco in 'src\Infrastructure\Database\rBanco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmOrganizador, frmOrganizador);
  Application.Run;
end.
