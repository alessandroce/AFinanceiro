unit uRelSaldoMensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, frxClass, frxExportXLS,
  frxExportPDF, frxDBSet, Spin, DateUtils, DB, IBCustomDataSet, IBQuery;

type
  TFRelSaldoMensal = class(TForm)
    Panel1: TPanel;
    btSair: TBitBtn;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxReport1: TfrxReport;
    qSaldoUsu1: TIBQuery;
    qSaldoUsu1ORDEM: TIntegerField;
    qSaldoUsu1NOME: TIBStringField;
    qSaldoUsu1MES_01: TIBBCDField;
    qSaldoUsu1MES_02: TIBBCDField;
    qSaldoUsu1MES_03: TIBBCDField;
    qSaldoUsu1MES_04: TIBBCDField;
    qSaldoUsu1MES_05: TIBBCDField;
    qSaldoUsu1MES_06: TIBBCDField;
    qSaldoUsu1MES_07: TIBBCDField;
    qSaldoUsu1MES_08: TIBBCDField;
    qSaldoUsu1MES_09: TIBBCDField;
    qSaldoUsu1MES_10: TIBBCDField;
    qSaldoUsu1MES_11: TIBBCDField;
    qSaldoUsu1MES_12: TIBBCDField;
    qSaldoUsu2: TIBQuery;
    qSaldoUsu2ORDEM: TIntegerField;
    qSaldoUsu2NOME: TIBStringField;
    qSaldoUsu2MES_01: TIBBCDField;
    qSaldoUsu2MES_02: TIBBCDField;
    qSaldoUsu2MES_03: TIBBCDField;
    qSaldoUsu2MES_04: TIBBCDField;
    qSaldoUsu2MES_05: TIBBCDField;
    qSaldoUsu2MES_06: TIBBCDField;
    qSaldoUsu2MES_07: TIBBCDField;
    qSaldoUsu2MES_08: TIBBCDField;
    qSaldoUsu2MES_09: TIBBCDField;
    qSaldoUsu2MES_10: TIBBCDField;
    qSaldoUsu2MES_11: TIBBCDField;
    qSaldoUsu2MES_12: TIBBCDField;
    qSaldoUsu3: TIBQuery;
    qSaldoUsu3ORDEM: TIntegerField;
    qSaldoUsu3NOME: TIBStringField;
    qSaldoUsu3MES_01: TIBBCDField;
    qSaldoUsu3MES_02: TIBBCDField;
    qSaldoUsu3MES_03: TIBBCDField;
    qSaldoUsu3MES_04: TIBBCDField;
    qSaldoUsu3MES_05: TIBBCDField;
    qSaldoUsu3MES_06: TIBBCDField;
    qSaldoUsu3MES_07: TIBBCDField;
    qSaldoUsu3MES_08: TIBBCDField;
    qSaldoUsu3MES_09: TIBBCDField;
    qSaldoUsu3MES_10: TIBBCDField;
    qSaldoUsu3MES_11: TIBBCDField;
    qSaldoUsu3MES_12: TIBBCDField;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    Panel2: TPanel;
    Label1: TLabel;
    edAno: TSpinEdit;
    BitBtn1: TBitBtn;
    procedure btSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelSaldoMensal: TFRelSaldoMensal;

implementation

uses uDMConexao, uFerramentas;

{$R *.dfm}

procedure TFRelSaldoMensal.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFRelSaldoMensal.FormShow(Sender: TObject);
begin
  edAno.Value := YearOf(Now);
end;

procedure TFRelSaldoMensal.BitBtn1Click(Sender: TObject);
  procedure getSaldo(qry : TIBQuery;usu:Integer);
  begin
    qry.Close;
    qry.ParamByName('ano').asinteger     := edAno.Value;
    qry.ParamByName('usuario').asinteger := usu;
    qry.Open;
  end;
begin
  if not DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.StartTransaction;

    if ((DadosLogin.Id=1) or (DadosLogin.Id=3)) then
      getSaldo(qSaldoUsu1,1);

    if ((DadosLogin.Id=2) or (DadosLogin.Id=3)) then
      getSaldo(qSaldoUsu2,2);

    if (DadosLogin.Id=3) then
      getSaldo(qSaldoUsu3,3);

    if (DadosLogin.Id>3) then
      getSaldo(qSaldoUsu1,DadosLogin.Id);

    //frxReport1.LoadFromFile(ServidorIni.Relatorios+'SaldoMensal.fr3');
    //frxReport1.Variables['USUARIO'] := IntToStr(DadosLogin.Id);
    //frxReport1.ShowReport(true);
   //   if DMConexao.IBTransacao.InTransaction then
   //     DMConexao.IBTransacao.Commit;

  if ChamaRelatorioDesign(frxReport1,'AFINANCEIRO','SaldoMensal') then
  begin
    getVariavelDesign('USUARIO',IntToStr(DadosLogin.Id));
    getVariavelDesign('NOMEUSUARIO',QuotedStr(DadosLogin.Nome));
    if (DadosLogin.Id in [1,2,3]) then
      getVariavelDesign('MODO','1');
    if (DadosLogin.Id > 3) then
      getVariavelDesign('MODO','2');
    ImprimirAlterarRelatorio(0,'SaldoMensal','Saldo Mensal');
  end;
end;

end.
