unit uSaldoAnual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, IBCustomDataSet, IBQuery,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, ComCtrls,
  ExtCtrls, DateUtils, StdCtrls, Buttons, frxClass, frxDBSet, uClassServidorIni,
  frxExportXLS, frxExportPDF, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

type
  TFSaldoAnual = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qTmp: TIBQuery;
    dsTmp: TDataSource;
    qTmpDEBITO: TIBBCDField;
    qTmpCREDITO: TIBBCDField;
    qTmpSALDO: TIBBCDField;
    cxGrid1DBTableView1D_MES: TcxGridDBColumn;
    cxGrid1DBTableView1DEBITO: TcxGridDBColumn;
    cxGrid1DBTableView1CREDITO: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    qTmpD_MES: TIBStringField;
    qTmpN_MES: TSmallintField;
    cxGrid1DBTableView1N_MES: TcxGridDBColumn;
    btSair: TBitBtn;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    BitBtn1: TBitBtn;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    FAnoReferencia : Integer;
  public
    { Public declarations }
  end;

var
  FSaldoAnual: TFSaldoAnual;

implementation

uses uDMConexao, uFerramentas;

{$R *.dfm}

procedure TFSaldoAnual.FormShow(Sender: TObject);
begin
  FAnoReferencia := YearOf(Now);
  qTmp.Close;
  qTmp.ParamByName('ano').asinteger := FAnoReferencia;
  qTmp.ParamByName('usuario').asinteger := DadosLogin.Id;
  qTmp.Open;
end;

procedure TFSaldoAnual.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if(AViewInfo.GridRecord.Values[cxGrid1DBTableView1N_MES.Index] = MonthOf(Now)) then
    ACanvas.Font.Color := clBlue;
end;

procedure TFSaldoAnual.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFSaldoAnual.BitBtn1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(ServidorIni.Relatorios+'SaldoAnual.fr3');
  frxReport1.Variables['ANOREFERENCIA'] := QuotedStr(' - '+IntToStr(FAnoReferencia));
  frxReport1.ShowReport(true);
end;

end.




