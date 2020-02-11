unit uRelPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRelatorio, frxClass, frxExportXLS, frxExportPDF, frxDBSet,
  StdCtrls, Buttons, ExtCtrls, DB, IBCustomDataSet, IBQuery;

type
  TFRelatorioPlanoContas = class(TFRelatorio)
    qPlanoContas: TIBQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    qPlanoContasCODIGO: TIntegerField;
    qPlanoContasDESCRICAO: TIBStringField;
    qPlanoContasNIVEL: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioPlanoContas: TFRelatorioPlanoContas;

implementation

uses uFerramentas;

{$R *.dfm}

procedure TFRelatorioPlanoContas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  frxReport1.LoadFromFile(ServidorIni.Relatorios+'RelPlanoContas.fr3');
  frxReport1.ShowReport(true);
end;

end.
