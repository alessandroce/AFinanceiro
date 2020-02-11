unit uTitulosVencidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, IBQuery, IBCustomDataSet, StdCtrls,
  wwdbdatetimepicker, Buttons, Mask, DBCtrls, wwdblook, Spin, cxCheckBox,
  DBClient, Provider, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TFTitulosVencidos = class(TForm)
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Bevel1: TBevel;
    Bevel2: TBevel;
    qAPagar: TIBQuery;
    dsAPagar: TDataSource;
    Bevel4: TBevel;
    qAPagarFIN_DESCRICAO: TIBStringField;
    qAPagarN_PARCELA: TIBStringField;
    qAPagarPAR_VENCTO: TDateField;
    qAPagarPAR_VALOR: TIBBCDField;
    qAPagarPAR_VALOR_PAGO: TIBBCDField;
    qAPagarPAR_PAGO: TIntegerField;
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
    cxGrid2DBTableView1FIN_DESCRICAO: TcxGridDBColumn;
    cxGrid2DBTableView1N_PARCELA: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VENCTO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_PAGO: TcxGridDBColumn;
    cxGrid2DBTableView1SELECAO: TcxGridDBColumn;
    rgAtivo: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure rgAtivoClick(Sender: TObject);
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
  FTitulosVencidos: TFTitulosVencidos;
const v_ativo : Array[0..2] of String = (' ','N','S');

implementation

uses uDMConexao, DateUtils, uFerramentas;

{$R *.dfm}

procedure TFTitulosVencidos.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  qAPagar.Close;
  qAPagar.ParamByName('ativo').asstring  := v_ativo[rgAtivo.itemindex];
  qAPagar.ParamByName('ativo2').asstring := v_ativo[rgAtivo.itemindex];
  qAPagar.ParamByName('usuario').asinteger:= DadosLogin.Id;
  qAPagar.open;
  cdsAPagar.Open;

end;

function TFTitulosVencidos.Continua(pContinua: Boolean; pTexto: String): Boolean;
begin
  Result := pContinua;
  if not(Result) then
    if pTexto<>'' then
      ShowMessage(pTexto);
end;

procedure TFTitulosVencidos.setFSomaTitulo(const Value: Extended);
begin
  FSomaTitulo := Value;
  FValorTitulo := FValorTitulo+FSomaTitulo;
  FSomaTitulo := 0;
end;

procedure TFTitulosVencidos.stFSubtraiTitulo(const Value: Extended);
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

procedure TFTitulosVencidos.BitBtn2Click(Sender: TObject);
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

procedure TFTitulosVencidos.cxGrid2DBTableView1CustomDrawCell(
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

procedure TFTitulosVencidos.rgAtivoClick(Sender: TObject);
begin
  cdsAPagar.Close;
  qAPagar.Close;
  qAPagar.ParamByName('ativo').asstring  := v_ativo[rgAtivo.itemindex];
  qAPagar.ParamByName('ativo2').asstring := v_ativo[rgAtivo.itemindex];
  qAPagar.ParamByName('usuario').asinteger := DadosLogin.Id;
  qAPagar.open;
  cdsAPagar.Open;

end;

end.


