unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uGerenciadorConexoes, FireDAC.Comp.Client,rBanco, uBairroRepository;

type
  TfrmOrganizador = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FormCreate(Sender: TObject);
  end;

var
  frmOrganizador: TfrmOrganizador;

implementation

{$R *.dfm}

procedure TfrmOrganizador.FormCreate(Sender: TObject);
var
  Banco: TBanco;
  Repo: TBairroRepository;
begin
  Banco.User(tbMysql);
  Banco.Conectar;

  Repo := TBairroRepository.Create(Banco);
  Repo.Listar;
end;

end.

