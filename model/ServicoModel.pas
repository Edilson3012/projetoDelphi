unit ServicoModel;

interface

type

  TServico = class
  private
    FcodigoServico: String;
    procedure SetcodigoServico(const Value: String);

  public
    property codigoServico : String read FcodigoServico write SetcodigoServico;


  end;

implementation

{ TServico }

procedure TServico.SetcodigoServico(const Value: String);
begin
  FcodigoServico := Value;
end;

end.
