unit uPlanilha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, DBClient;

type
  TFPlanilha = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    btSair: TBitBtn;
    Panel2: TPanel;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPlanilha: TFPlanilha;

implementation

{$R *.dfm}

procedure TFPlanilha.btSairClick(Sender: TObject);
begin
  Close;
end;

end.
