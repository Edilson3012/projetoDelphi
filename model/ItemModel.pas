unit ItemModel;

interface

type
  TItem = class
  private
    Fdescricao: string;
    Fcodigo: string;
    FvalorUnitario: double;
    Fid: Integer;
    Fnome: string;



    procedure Setcodigo(const Value: string);
    procedure Setdescricao(const Value: string);
    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: string);
    procedure SetvalorUnitario(const Value: double);

  public
    constructor Create(idItem : Integer);
    property id : Integer read Fid write Setid;
    property codigo : string read Fcodigo write Setcodigo;
    property nome : string read Fnome write Setnome;
    property descricao : string read Fdescricao write Setdescricao;
    property valorUnitario : double read FvalorUnitario write SetvalorUnitario;

    end;

implementation

{ TItem }

constructor TItem.Create(id: Integer);
begin
  Fid := idItem;
end;

procedure TItem.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
end;

procedure TItem.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
end;

procedure TItem.Setid(const Value: Integer);
begin
  Fid := Value;
end;

procedure TItem.Setnome(const Value: string);
begin
  Fnome := Value;
end;

procedure TItem.SetvalorUnitario(const Value: double);
begin
  FvalorUnitario := Value;
end;

end.
