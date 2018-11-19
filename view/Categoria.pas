unit Categoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCategoria = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtCodigo: TEdit;
    Label3: TLabel;
    edtNome: TEdit;
    cbbServico: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategoria: TfrmCategoria;

implementation

{$R *.dfm}

end.
