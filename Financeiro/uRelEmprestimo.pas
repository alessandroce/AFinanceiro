unit uRelEmprestimo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, frxClass, frxExportXLS,
  frxExportPDF, frxDBSet, Spin, DateUtils, DB, IBCustomDataSet, IBQuery,
  wwdblook, ComCtrls, frxIBXComponents;

type
  TFRelEmprestimos = class(TForm)
    Panel1: TPanel;
    btSair: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    qCredor: TIBQuery;
    qCredorPES_ID: TIntegerField;
    qCredorPES_NOME_RAZAO: TIBStringField;
    qCredorPES_NOME_FANTASIA: TIBStringField;
    dsCredor: TDataSource;
    edSetor: TwwDBLookupCombo;
    frxReport1: TfrxReport;
    frxUserDataSet1: TfrxUserDataSet;
    frxIBXComponents1: TfrxIBXComponents;
    procedure btSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelEmprestimos: TFRelEmprestimos;

implementation

uses uDMConexao, uFerramentas;

{$R *.dfm}

procedure TFRelEmprestimos.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFRelEmprestimos.BitBtn1Click(Sender: TObject);
begin
  if ChamaRelatorioDesign(frxReport1,'AFINANCEIRO','relemprestimo') then
    ImprimirAlterarRelatorio(0,'relemprestimo','Relatório de Emprestimos');
end;

procedure TFRelEmprestimos.FormShow(Sender: TObject);
begin
  qCredor.Open;
end;

end.
