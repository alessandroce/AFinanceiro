unit uTitulosAPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, IBQuery, IBCustomDataSet, StdCtrls,
  wwdbdatetimepicker, Buttons, Mask, DBCtrls, wwdblook, Spin, cxCheckBox,
  DBClient, Provider, frxClass, frxDBSet, frxExportXLS, frxExportPDF, StrUtils,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFTitulosAPagar = class(TForm)
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Bevel1: TBevel;
    Bevel2: TBevel;
    qAPagar: TIBQuery;
    dsAPagar: TDataSource;
    btOKTitpagar: TBitBtn;
    Bevel4: TBevel;
    cbMes: TComboBox;
    speAno: TSpinEdit;
    qAPagarFIN_DESCRICAO: TIBStringField;
    qAPagarN_PARCELA: TIBStringField;
    qAPagarPAR_VENCTO: TDateField;
    qAPagarPAR_VALOR: TIBBCDField;
    qAPagarPAR_PAGO: TIntegerField;
    cxGrid2DBTableView1FIN_DESCRICAO: TcxGridDBColumn;
    cxGrid2DBTableView1N_PARCELA: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VENCTO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_PAGO: TcxGridDBColumn;
    cxGrid2DBTableView1SELECAO: TcxGridDBColumn;
    qAPagarSELECAO: TIBStringField;
    cdsAPagar: TClientDataSet;
    dspAPagar: TDataSetProvider;
    cdsAPagarFIN_DESCRICAO: TStringField;
    cdsAPagarN_PARCELA: TStringField;
    cdsAPagarPAR_VENCTO: TDateField;
    cdsAPagarPAR_VALOR: TBCDField;
    cdsAPagarPAR_PAGO: TIntegerField;
    cdsAPagarSELECAO: TStringField;
    Label4: TLabel;
    lblDebito: TLabel;
    btCalcular: TBitBtn;
    rgAtivo: TRadioGroup;
    dsAPagarRel: TDataSource;
    frxReport1: TfrxReport;
    frxAPagar: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    Label2: TLabel;
    Label6: TLabel;
    edCredito: TEdit;
    lblResultado: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    cdsRelatorio: TClientDataSet;
    dsRelatorio: TDataSource;
    cdsRelatorioFIN_DESCRICAO: TStringField;
    cdsRelatorioN_PARCELA: TStringField;
    cdsRelatorioPAR_VENCTO: TDateField;
    cdsRelatorioPAR_VALOR: TBCDField;
    cdsRelatorioPAR_PAGO: TIntegerField;
    cdsRelatorioSELECAO: TStringField;
    btDesfazerPagamento: TBitBtn;
    btEfetuarPagamento: TBitBtn;
    qParcelas: TIBDataSet;
    qParcelasPAR_ID: TIntegerField;
    qParcelasPAR_FIN_ID: TIntegerField;
    qParcelasPAR_NUMERO: TIntegerField;
    qParcelasPAR_QUANTIDADE: TIntegerField;
    qParcelasPAR_VENCTO: TDateField;
    qParcelasPAR_VALOR: TIBBCDField;
    qParcelasPAR_VALOR_PAGO: TIBBCDField;
    qParcelasPAR_PAGO: TIntegerField;
    qParcelasPAR_OBSERVACAO: TIBStringField;
    qParcelasPAR_DATA: TDateField;
    qParcelasPAR_DESCONTOSABAT: TIBBCDField;
    qParcelasPAR_OUTDEDUCOES: TIBBCDField;
    qParcelasPAR_JUROSMULTA: TIBBCDField;
    qParcelasPAR_OUTACRESCIMOS: TIBBCDField;
    dsParcelas: TDataSource;
    qAPagarPAR_ID: TIntegerField;
    cdsAPagarPAR_ID: TIntegerField;
    btImprimir: TBitBtn;
    Bevel3: TBevel;
    rbImpTudo: TRadioButton;
    rbImpPrevPag: TRadioButton;
    cbConsiderarAtrasados: TCheckBox;
    qAPagarDIAS_ATRASO: TIntegerField;
    cdsAPagarDIAS_ATRASO: TIntegerField;
    cxGrid2DBTableView1DIAS_ATRASO: TcxGridDBColumn;
    btReceber: TBitBtn;
    qSaldo: TIBQuery;
    qSaldoVALOR: TIBBCDField;
    frxAPagarPrevisao: TfrxDBDataset;
    cbSomatoria: TCheckBox;
    RadioButton1: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure btOKTitpagarClick(Sender: TObject);
    procedure btCalcularClick(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btImprimirClick(Sender: TObject);
    procedure edCreditoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btDesfazerPagamentoClick(Sender: TObject);
    procedure btEfetuarPagamentoClick(Sender: TObject);
    procedure btReceberClick(Sender: TObject);
  private
    FSomaTitulo: Extended;
    FSubtraiTitulo: Extended;
    procedure setFSomaTitulo(const Value: Extended);
    procedure stFSubtraiTitulo(const Value: Extended);
    procedure Pagamento(pPagar: Integer);
  private
    { Private declarations }
    FValorTitulo : Extended;
    property SomaTitulo : Extended read FSomaTitulo write setFSomaTitulo;
    property SubtraiTitulo : Extended read FSubtraiTitulo write stFSubtraiTitulo;
    function Continua(pContinua:Boolean;pTexto:String=''):Boolean;
  public
    { Public declarations }
  end;

var
  FTitulosAPagar: TFTitulosAPagar;

implementation

uses uDMConexao, DateUtils, uClassServidorIni, uFerramentas, uClassAvisos;

{$R *.dfm}

procedure TFTitulosAPagar.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  speAno.Value := YearOf(Now);
  cbMes.ItemIndex := MonthOf(Now)-1;
  btOKTitpagar.Click;
  cxGrid2DBTableView1.DataController.Groups.FullExpand;

end;

function TFTitulosAPagar.Continua(pContinua: Boolean; pTexto: String): Boolean;
begin
  Result := pContinua;
  if not(Result) then
    if pTexto<>'' then
      ShowMessage(pTexto);
end;

procedure TFTitulosAPagar.btOKTitpagarClick(Sender: TObject);
var vData : TDate;
const v_ativo : Array[0..2] of String = (' ','N','S');

  function getConsiderarAtrasados(pConsiderar:boolean):Integer;
  begin
    if pConsiderar then
      Result := 0
    else
    if not(pConsiderar) then
      Result := 1;
  end;
  
  function getDataAtraso:TDate;
  var iInc : Integer;
  begin
    iInc := cbMes.ItemIndex+1 - MonthOf(Now);
    Result := IncMonth(Now,iInc);
  end;

begin
  inherited;
  FValorTitulo := 0;
  lblDebito.Caption := '0';
  if cbConsiderarAtrasados.Checked then
  begin
  end;
  qAPagar.Close;
  qAPagar.ParamByName('p_mes').value         := cbMes.ItemIndex+1;
  qAPagar.ParamByName('p_ano').value         := speAno.Value;
  vData := getDataAtraso;
  qAPagar.ParamByName('p_dataatraso').value  := vData;
  qAPagar.ParamByName('p_atraso').value      := getConsiderarAtrasados(cbConsiderarAtrasados.Checked);
  qAPagar.ParamByName('p_ativo').asstring    := v_ativo[rgAtivo.itemindex];
  qAPagar.ParamByName('p_usuario').asinteger := DadosLogin.Id;
  qAPagar.open;
  cdsAPagar.close;
  cdsAPagar.Open;
  cxGrid2DBTableView1.DataController.Groups.FullExpand;
end;

procedure TFTitulosAPagar.setFSomaTitulo(const Value: Extended);
begin
  FSomaTitulo := Value;
  FValorTitulo := FValorTitulo+FSomaTitulo;
  FSomaTitulo := 0;
end;

procedure TFTitulosAPagar.stFSubtraiTitulo(const Value: Extended);
begin
  FSubtraiTitulo := Value;
  if (FValorTitulo>0) then
  begin
    if (FValorTitulo<FSubtraiTitulo) then
      FValorTitulo := 0
    else
      FValorTitulo := FValorTitulo-FSubtraiTitulo;
  end;
  FSubtraiTitulo := 0;
end;

procedure TFTitulosAPagar.btCalcularClick(Sender: TObject);
var p : Pointer;
    FValorCredito : Extended;
begin
  FValorTitulo := 0;
  p := cdsAPagar.GetBookmark;
  cdsAPagar.DisableControls;
  cdsAPagar.First;
  while not(cdsAPagar.Eof) do
  begin
    if (cdsAPagarSELECAO.asstring='S') then
      SomaTitulo := cdsAPagarPAR_VALOR.asfloat;
    cdsAPagar.Next;
  end;
  cdsAPagar.GotoBookmark(p);
  cdsAPagar.EnableControls;
  lblDebito.Caption := FormatFloat('0.00',FValorTitulo);
  if edCredito.Text='' then
    edCredito.Text := '0';
  if StrToFloat(edCredito.Text)>0 then
  begin
    FValorCredito := StrToFloat(edCredito.Text);
    lblResultado.Caption := FormatFloat('0.00',FValorCredito-FValorTitulo);
  end;
end;

procedure TFTitulosAPagar.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if(AViewInfo.GridRecord.Values[cxGrid2DBTableView1PAR_PAGO.Index] = 0) then
    ACanvas.Font.Color := clRed;

  if(AViewInfo.GridRecord.Values[cxGrid2DBTableView1PAR_PAGO.Index] = 1) then
    ACanvas.Font.Color := clGreen;
end;

procedure TFTitulosAPagar.btImprimirClick(Sender: TObject);
var Ini : TServidorIni;
    sRelatorios, sArquivo : String;
    i,j : Integer;
begin
  cdsAPagar.First;
  Ini         := TServidorIni.create;
  sRelatorios := Ini.Ler_ArquivoIni('AFINANCEIRO','Relatorios');
  if rbImpTudo.Checked then
    sArquivo := 'APagar.fr3';
  if rbImpPrevPag.Checked then
    sArquivo := 'APagarPrevisao.fr3';
  frxReport1.LoadFromFile(sRelatorios+'\'+sArquivo);
  frxReport1.Variables['MESREFERENCIA'] := QuotedStr(cbMes.Text+'/'+IntToStr(speAno.Value));
  frxReport1.Variables['CREDITO']       := QuotedStr(edCredito.Text);
  frxReport1.Variables['DEBITO']        := QuotedStr(lblDebito.Caption);
  frxReport1.Variables['RESULTADO']     := QuotedStr(lblResultado.Caption);
  frxReport1.Variables['SOMATORIA']     := IfThen(cbSomatoria.Checked,'S','N');

  frxReport1.ShowReport;
  Ini.Free;
end;

procedure TFTitulosAPagar.edCreditoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    btCalcular.Click;
  if not(key in ['0'..'9',#8,#44]) then
    key := #0;
end;

procedure TFTitulosAPagar.BitBtn1Click(Sender: TObject);
var p : Pointer;
begin
  cdsAPagar.DisableControls;
  p := cdsAPagar.GetBookmark;
  cdsAPagar.First;
  while not(cdsAPagar.Eof) do
  begin
    cdsAPagar.Edit;
    if (cdsAPagarPAR_PAGO.asinteger=0) then
    cdsAPagarSELECAO.asstring:='S';
    cdsAPagar.Post;
    cdsAPagar.Next;
  end;
  cdsAPagar.GotoBookmark(p);
  cdsAPagar.EnableControls;
  btCalcular.Click;
end;

procedure TFTitulosAPagar.BitBtn3Click(Sender: TObject);
var p : Pointer;
begin
  cdsAPagar.DisableControls;
  p := cdsAPagar.GetBookmark;
  cdsAPagar.First;
  while not(cdsAPagar.Eof) do
  begin
    cdsAPagar.Edit;
    if ((cdsAPagarSELECAO.asstring='S') and (cdsAPagarPAR_PAGO.asinteger=0)) then
      cdsAPagarSELECAO.asstring:='N'
    else
    if ((cdsAPagarSELECAO.asstring='N') and (cdsAPagarPAR_PAGO.asinteger=0)) then
      cdsAPagarSELECAO.asstring:='S';
    cdsAPagar.Post;
    cdsAPagar.Next;
  end;
  cdsAPagar.GotoBookmark(p);
  cdsAPagar.EnableControls;
  btCalcular.Click;
end;

procedure TFTitulosAPagar.Pagamento(pPagar:Integer);
var p : Pointer;
begin
  try
    if not(DMConexao.IBTransacao.InTransaction) then
      DMConexao.IBTransacao.StartTransaction;
    cdsAPagar.DisableControls;
    p := cdsAPagar.GetBookmark;
    cdsAPagar.First;
    while not(cdsAPagar.Eof) do
    begin
      if cdsAPagarSELECAO.asstring='S' then
      begin

        qParcelas.Close;
        qParcelas.ParamByName('par_id').asinteger := cdsAPagarPAR_ID.asinteger;
        qParcelas.Open;
        qParcelas.Edit;
        qParcelasPAR_PAGO.asinteger := pPagar;
        qParcelas.Post;

      end;
      cdsAPagar.Next;
    end;
    cdsAPagar.GotoBookmark(p);
    cdsAPagar.EnableControls;
    DMConexao.IBTransacao.Commit;
    btOKTitpagar.Click;
    if pPagar=0 then
      ShowMessage('Pagamento desfeito com sucesso')
    else
    if pPagar=1 then
      ShowMessage('Pagamento efetuado com sucesso');
  except
    on e : Exception do
    begin
      DMConexao.IBTransacao.Rollback;
      ShowMessage('Erro '+e.Message);
    end;
  end;
end;

procedure TFTitulosAPagar.btDesfazerPagamentoClick(Sender: TObject);
begin
  if Duvida('Deseja Desfazer pagamento?') then
    Pagamento(0);
end;

procedure TFTitulosAPagar.btEfetuarPagamentoClick(Sender: TObject);
begin
  if Duvida('Deseja Efetuar pagamento?') then
    Pagamento(1);
end;

procedure TFTitulosAPagar.btReceberClick(Sender: TObject);
begin
  qSaldo.Close;
  qSaldo.ParamByName('ano').asinteger := speAno.Value;
  qSaldo.ParamByName('usu').asinteger := DadosLogin.Id;
  qSaldo.ParamByName('mes').asinteger := cbMes.ItemIndex+1;
  qSaldo.Open;
  edCredito.Text := FormatFloat('0.00',qSaldoVALOR.AsFloat);
  btCalcular.Click;
end;

end.


