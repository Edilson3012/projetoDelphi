unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    C1: TMenuItem;
    S1: TMenuItem;
    procedure C1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses Categoria;

procedure TfrmMenu.C1Click(Sender: TObject);
begin
  frmCategoria := TfrmCategoria.Create(self);
  frmCategoria.ShowModal;
  frmCategoria.Free;
end;

end.
