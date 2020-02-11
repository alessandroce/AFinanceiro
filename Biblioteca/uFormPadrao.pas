unit uFormPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls;

type
  TFFormPadrao = class(TForm)
    pnTopo: TPanel;
    stbBarraStatus: TStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFormPadrao: TFFormPadrao;

implementation

{$R *.dfm}

end.
