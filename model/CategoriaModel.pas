unit CategoriaModel;

interface

type

  TCategoria = class
  private
    Fcodigo: String;
    Fid: Integer;
    Fnome: String;
    procedure Setcodigo(const Value: String);
    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: String);

  public
  property id : Integer read Fid write Setid;
  property codigo : String read Fcodigo write Setcodigo;
  property nome : String read Fnome write Setnome;

  end;

implementation

{ TCategoria }

procedure TCategoria.Setcodigo(const Value: String);
begin
  Fcodigo := Value;
end;

procedure TCategoria.Setid(const Value: Integer);
begin
  Fid := Value;
end;

procedure TCategoria.Setnome(const Value: String);
begin
  Fnome := Value;
end;

end.
