unit ProdutoModel;

interface

type

  TProduto = class
  private
    Fpeso: double;
    Faltura: double;
    procedure Setaltura(const Value: double);
    procedure Setpeso(const Value: double);

  public
    property peso : double read Fpeso write Setpeso;
    property altura : double read Faltura write Setaltura;

  end;

implementation

{ TProduto }

procedure TProduto.Setaltura(const Value: double);
begin
  Faltura := Value;
end;

procedure TProduto.Setpeso(const Value: double);
begin
  Fpeso := Value;
end;

end.
