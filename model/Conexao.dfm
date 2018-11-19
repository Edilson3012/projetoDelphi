object frmConexao: TfrmConexao
  Left = 0
  Top = 0
  Caption = 'frmConexao'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object zConexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = 'localhost'
    Port = 3306
    Database = 'delphi'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\MySQL\MySQL Tools for 5.0\libmySQL.dll'
    Left = 19
    Top = 8
  end
  object zQuery: TZQuery
    Connection = zConexao
    Params = <>
    Left = 104
    Top = 16
  end
end
