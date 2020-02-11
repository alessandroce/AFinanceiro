unit uTitulosPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, IBQuery, IBCustomDataSet, StdCtrls,
  wwdbdatetimepicker, Buttons, Mask, DBCtrls, wwdblook, Spin, cxCheckBox,
  DBClient, Provider;

type
  TFTitulosPeriodo = class(TForm)
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    qCadastro: TIBDataSet;
    qConsulta: TIBQuery;
    dsCadastro: TDataSource;
    dsConsulta: TDataSource;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    qAPagar: TIBQuery;
    dsAPagar: TDataSource;
    dsPago: TDataSource;
    qPago: TIBQuery;
    btOKTitpagar: TBitBtn;
    Bevel4: TBevel;
    qCadastroFIN_ID: TIntegerField;
    qCadastroFIN_DATA: TDateTimeField;
    qCadastroFIN_DESCRICAO: TIBStringField;
    qCadastroFIN_PES_ID: TIntegerField;
    qCadastroFIN_CAT_ID: TIntegerField;
    qParcelas: TIBDataSet;
    dsParcelas: TDataSource;
    qCadastroFIN_DEBCRED: TIBStringField;
    qParcelasPAR_ID: TIntegerField;
    qParcelasPAR_FIN_ID: TIntegerField;
    qParcelasPAR_NUMERO: TIntegerField;
    qParcelasPAR_QUANTIDADE: TIntegerField;
    qParcelasPAR_VENCTO: TDateField;
    qParcelasPAR_VALOR: TIBBCDField;
    qParcelasPAR_VALOR_PAGO: TIBBCDField;
    qParcelasPAR_PAGO: TIntegerField;
    qCadastroFIN_TIPO_DC: TIntegerField;
    cbMes: TComboBox;
    speAno: TSpinEdit;
    qAPagarFIN_DESCRICAO: TIBStringField;
    qAPagarN_PARCELA: TIBStringField;
    qAPagarPAR_VENCTO: TDateField;
    qAPagarPAR_VALOR: TIBBCDField;
    qAPagarPAR_VALOR_PAGO: TIBBCDField;
    qAPagarPAR_PAGO: TIntegerField;
    qPagoFIN_DESCRICAO: TIBStringField;
    qPagoN_PARCELA: TIBStringField;
    qPagoPAR_VENCTO: TDateField;
    qPagoPAR_VALOR: TIBBCDField;
    qPagoPAR_VALOR_PAGO: TIBBCDField;
    qPagoPAR_PAGO: TIntegerField;
    cxGridDBTableView1FIN_DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1N_PARCELA: TcxGridDBColumn;
    cxGridDBTableView1PAR_VENCTO: TcxGridDBColumn;
    cxGridDBTableView1PAR_VALOR: TcxGridDBColumn;
    cxGridDBTableView1PAR_VALOR_PAGO: TcxGridDBColumn;
    cxGridDBTableView1PAR_PAGO: TcxGridDBColumn;
    TabSheet2: TTabSheet;
    Label9: TLabel;
    Bevel5: TBevel;
    Bevel7: TBevel;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    Label13: TLabel;
    Bevel8: TBevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    qAVencer: TIBQuery;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    DateField1: TDateField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IntegerField1: TIntegerField;
    dsAVencer: TDataSource;
    qConsultaFIN_ID: TIntegerField;
    qConsultaFIN_DATA: TDateTimeField;
    qConsultaFIN_DEBCRED: TIBStringField;
    qConsultaFIN_DESCRICAO: TIBStringField;
    qConsultaPES_NOME_FANTASIA: TIBStringField;
    qConsultaCAT_DESCRICAO: TIBStringField;
    qConsultaCATG_DESCRICAO: TIBStringField;
    qConsultaPAR_PAGO: TIntegerField;
    qConsultaN_PARCELA: TIBStringField;
    qConsultaPAR_VALOR: TIBBCDField;
    qConsultaPAR_VALOR_PAGO: TIBBCDField;
    qConsultaPAR_VENCTO: TDateField;
    cxGrid2DBTableView1FIN_DESCRICAO: TcxGridDBColumn;
    cxGrid2DBTableView1N_PARCELA: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VENCTO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_PAGO: TcxGridDBColumn;
    cxGrid2DBTableView1SELECAO: TcxGridDBColumn;
    qAPagarSELECAO: TIBStringField;
    cdsAPagar: TClientDataSet;
    dspAPagar: TDataSetProvider;
    cdsAPagarFIN_DESCRICAO: TStringField;
    cdsAPagarN_PARCELA: TStringField;
    cdsAPagarPAR_VENCTO: TDateField;
    cdsAPagarPAR_VALOR: TBCDField;
    cdsAPagarPAR_VALOR_PAGO: TBCDField;
    cdsAPagarPAR_PAGO: TIntegerField;
    cdsAPagarSELECAO: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure qCadastroAfterOpen(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure btOKTitpagarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure BitBtn2Click(Sender: TObject);
  private
    FSomaTitulo: Extended;
    FSubtraiTitulo: Extended;
    procedure setFSomaTitulo(const Value: Extended);
    procedure stFSubtraiTitulo(const Value: Extended);
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
  FTitulosPeriodo: TFTitulosPeriodo;

implementation

uses uDMConexao, DateUtils;

{$R *.dfm}

procedure TFTitulosPeriodo.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  speAno.Value := YearOf(Now);

end;

procedure TFTitulosPeriodo.qCadastroAfterOpen(DataSet: TDataSet);
begin
  qParcelas.Open;
end;

function TFTitulosPeriodo.Continua(pContinua: Boolean; pTexto: String): Boolean;
begin
  Result := pContinua;
  if not(Result) then
    if pTexto<>'' then
      ShowMessage(pTexto);
end;

procedure TFTitulosPeriodo.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex=2) then
    btOKTitpagar.Click
  else
  begin
    qAPagar.Close;
    qPago.Close;
  end;
end;

procedure TFTitulosPeriodo.btOKTitpagarClick(Sender: TObject);
begin
    FValorTitulo := 0;
    Label5.Caption := '0';
    qAPagar.Close;
    qAPagar.ParamByName('mes').value  := cbMes.ItemIndex+1;
    qAPagar.ParamByName('ano').value  := speAno.Value;
    qAPagar.ParamByName('pago').value := 0;
    qAPagar.open;

    cdsAPagar.close;
    cdsAPagar.Open;

    qPago.Close;
    qPago.ParamByName('mes').value  := cbMes.ItemIndex+1;
    qPago.ParamByName('ano').value  := speAno.Value;
    qPago.ParamByName('pago').value := 1;
    qPago.open;

end;

procedure TFTitulosPeriodo.BitBtn1Click(Sender: TObject);
begin
    qAVencer.Close;
    qAVencer.ParamByName('mes').value  := ComboBox1.ItemIndex+1;
    qAVencer.ParamByName('ano').value  := SpinEdit1.Value;
    qAVencer.open;
end;

procedure TFTitulosPeriodo.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if(AViewInfo.GridRecord.Values[cxGridDBColumn6.Index] = 0) then
    ACanvas.Font.Color := clRed;
  if(AViewInfo.GridRecord.Values[cxGridDBColumn6.Index] = 1) then
    ACanvas.Font.Color := clGreen;


end;

procedure TFTitulosPeriodo.setFSomaTitulo(const Value: Extended);
begin
  FSomaTitulo := Value;
  FValorTitulo := FValorTitulo+FSomaTitulo;
  FSomaTitulo := 0;
end;

procedure TFTitulosPeriodo.stFSubtraiTitulo(const Value: Extended);
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

procedure TFTitulosPeriodo.BitBtn2Click(Sender: TObject);
var p : Pointer;
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
  Label5.Caption := FormatFloat('0.00',FValorTitulo);
end;

end.



  (*
  if (cdsAPagarSELECAO.asstring='S') then
    SomaTitulo := cdsAPagarPAR_VALOR.asfloat
  else
  if (cdsAPagarSELECAO.asstring='N') then
    SubtraiTitulo := cdsAPagarPAR_VALOR.asfloat;
  Label5.Caption := FormatFloat('0.00',FValorTitulo);
  *)

