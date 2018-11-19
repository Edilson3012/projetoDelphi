unit ProdutoController;

interface

uses
  Conexao, System.SysUtils;

type
  TProdutoController = class
  private
    zConexao : TfrmConexao;
    class var fInstance : TProdutoController;

  public
    constructor Create;
    destructor Destroy; override;

    class function GetInstance : TProdutoController;

    property Conexao : TfrmConexao read zConexao write zConexao;

  end;

implementation

{ TProdutoController }

constructor TProdutoController.Create;
begin
  zConexao := TfrmConexao.Create;
end;

destructor TProdutoController.Destroy;
begin
  FreeAndNil(zConexao);
  inherited;
end;

class function TProdutoController.GetInstance: TProdutoController;
begin
  if not Assigned(self.fInstance) then
  begin
    self.fInstance := TProdutoController.Create();
  end;
  Result := self.fInstance;
end;

end.
