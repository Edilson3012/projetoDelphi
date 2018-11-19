unit ItemController;

interface

uses
  Conexao, System.SysUtils;

type
  TItemController = class
  private
    zConexao = TfrmConexao;
    class var FInstance : TItemController;
    
  public
    constructor Create;
    destructor Destroy; override;

    class function GetInstance : TItemController;

    property Conexao : TfrmConexao read zConexao write zConexao;

  end;

implementation

{ TItemController }

constructor TItemController.Create;
begin
  zConexao = TfrmConexao.Create;
end;

destructor TItemController.Destroy;
begin
  FreeAndNil(zConexao);
  inherited;
end;

class function TItemController.GetInstance: TItemController;
begin
  if not Assigned(self.fInstance) then
  begin
    self.fInstance := TItemController.Create();
  end;
  Result := self.fInstance;
end;

end.
