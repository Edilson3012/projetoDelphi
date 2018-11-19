unit Conexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZAbstractConnection, ZConnection, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmConexao = class(TForm)
    zConexao: TZConnection;
    zQuery: TZQuery;

  private
    { Private declarations }
  public
    { Public declarations }

    procedure ConfigurarConexao;

    function criarQuery: TZConnection;

    constructor Create;
    destructor Destroy; override;

  end;

var
  frmConexao: TfrmConexao;

implementation

{$R *.dfm}

{ TfrmConexao }

procedure TfrmConexao.ConfigurarConexao;
begin

end;

constructor TfrmConexao.Create;
begin
  //criando objeto de conexao
  zConexao := TZConnection.Create;
end;

function TfrmConexao.criarQuery: TZConnection;
begin
  zQuery := TZQuery.Create(nil);
  zQuery.Connection := zConexao;

  Result := zQuery;
end;

destructor TfrmConexao.Destroy;
begin
  //destruindo objeto de conexao
  FreeAndNil(zConexao);
  inherited;
end;

end.
