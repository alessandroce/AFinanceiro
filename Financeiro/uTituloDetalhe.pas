unit uTituloDetalhe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, ExtCtrls, frxExportXLS, frxClass,
  frxExportPDF, frxDBSet, DB, IBCustomDataSet, IBQuery, ComCtrls, DateUtils,
  StrUtils;

type
  TFTituloDetalhe = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Label3: TLabel;
    rgAtivo: TRadioGroup;
    rgDebitoCredito: TRadioGroup;
    cbMes: TComboBox;
    speAno: TSpinEdit;
    btImprimir: TBitBtn;
    qTitulos: TIBQuery;
    qTitulosFIN_DESCRICAO: TIBStringField;
    qTitulosN_PARCELA: TIBStringField;
    qTitulosPAR_VENCTO: TDateField;
    qTitulosPAR_VALOR: TIBBCDField;
    qTitulosPAR_PAGO: TIBBCDField;
    qTitulosPAR_OBSERVACAO: TIBStringField;
    frxReport1: TfrxReport;
    frxTitulos: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    Bevel1: TBevel;
    chSemAgrupamento: TCheckBox;
    rgConsiderar: TRadioGroup;
    qTitulosPAR_DATA: TDateField;
    procedure btImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTituloDetalhe: TFTituloDetalhe;

implementation

uses uClassAvisos, uDMConexao, uFerramentas, uClassServidorIni;

{$R *.dfm}

procedure TFTituloDetalhe.btImprimirClick(Sender: TObject);
var sRelatorios : String;
    iPago : Integer;
    sAgrupamento : String;
const v_ativo      : Array[0..1] of String = ('N','S');
      v_debcred    : Array[0..1] of String = ('D','C');
      v_considerar : Array[0..2] of Integer = (1,0,3);
begin

  iPago        := v_considerar[rgConsiderar.ItemIndex];
  sAgrupamento := IfThen(chSemAgrupamento.Checked,'N','S');

  qTitulos.Close;
  qTitulos.ParamByName('p_ativo').asstring    := v_ativo[rgAtivo.itemindex];
  qTitulos.ParamByName('p_debcred').asstring  := v_debcred[rgDebitoCredito.itemindex];
  qTitulos.ParamByName('p_ano').asinteger     := speAno.Value;
  qTitulos.ParamByName('p_mes').asinteger     := cbMes.ItemIndex+1;
  qTitulos.ParamByName('p_usuario').asinteger := DadosLogin.Id;
  qTitulos.ParamByName('p_pago').asinteger    := iPago;
  qTitulos.Open;
  if qTitulos.RecordCount>0 then
  begin
    frxReport1.LoadFromFile(ServidorIni.Relatorios+'\'+'TitulosDetalhe.fr3');
    frxReport1.Variables['MESREFERENCIA']  := QuotedStr(cbMes.Text+'/'+IntToStr(speAno.value));
    frxReport1.Variables['COMAGRUPAMENTO'] := QuotedStr(sAgrupamento);
    frxReport1.ShowReport;
  end
  else
    Aviso('Registros não encontrado');

end;

procedure TFTituloDetalhe.FormShow(Sender: TObject);
begin
  speAno.Value := YearOf(Now);
  cbMes.ItemIndex := MonthOf(Now)-1;

end;

end.
