unit uTitulosAnual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, IBQuery, IBCustomDataSet, StdCtrls,
  wwdbdatetimepicker, Buttons, Mask, DBCtrls, wwdblook, Spin, cxCheckBox,
  DBClient, Provider, frxExportXLS, frxClass, frxExportPDF, frxDBSet, StrUtils,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus;

type
  TFTitulosAnual = class(TForm)
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    qAPagar: TIBQuery;
    dsAPagar: TDataSource;
    cdsAPagar: TClientDataSet;
    dspAPagar: TDataSetProvider;
    qAPagarSELECAO: TIBStringField;
    qAPagarNOME: TIBStringField;
    qAPagarANO: TSmallintField;
    qAPagarMES_01_PA: TIBStringField;
    qAPagarMES_01: TIBBCDField;
    qAPagarMES_02_PA: TIBStringField;
    qAPagarMES_02: TIBBCDField;
    qAPagarMES_03_PA: TIBStringField;
    qAPagarMES_03: TIBBCDField;
    qAPagarMES_04_PA: TIBStringField;
    qAPagarMES_04: TIBBCDField;
    qAPagarMES_05_PA: TIBStringField;
    qAPagarMES_05: TIBBCDField;
    qAPagarMES_06_PA: TIBStringField;
    qAPagarMES_06: TIBBCDField;
    qAPagarMES_07_PA: TIBStringField;
    qAPagarMES_07: TIBBCDField;
    qAPagarMES_08_PA: TIBStringField;
    qAPagarMES_08: TIBBCDField;
    qAPagarMES_09_PA: TIBStringField;
    qAPagarMES_09: TIBBCDField;
    qAPagarMES_10_PA: TIBStringField;
    qAPagarMES_10: TIBBCDField;
    qAPagarMES_11_PA: TIBStringField;
    qAPagarMES_11: TIBBCDField;
    qAPagarMES_12_PA: TIBStringField;
    qAPagarMES_12: TIBBCDField;
    cdsAPagarSELECAO: TStringField;
    cdsAPagarNOME: TStringField;
    cdsAPagarANO: TSmallintField;
    cdsAPagarMES_01_PA: TStringField;
    cdsAPagarMES_01: TBCDField;
    cdsAPagarMES_02_PA: TStringField;
    cdsAPagarMES_02: TBCDField;
    cdsAPagarMES_03_PA: TStringField;
    cdsAPagarMES_03: TBCDField;
    cdsAPagarMES_04_PA: TStringField;
    cdsAPagarMES_04: TBCDField;
    cdsAPagarMES_05_PA: TStringField;
    cdsAPagarMES_05: TBCDField;
    cdsAPagarMES_06_PA: TStringField;
    cdsAPagarMES_06: TBCDField;
    cdsAPagarMES_07_PA: TStringField;
    cdsAPagarMES_07: TBCDField;
    cdsAPagarMES_08_PA: TStringField;
    cdsAPagarMES_08: TBCDField;
    cdsAPagarMES_09_PA: TStringField;
    cdsAPagarMES_09: TBCDField;
    cdsAPagarMES_10_PA: TStringField;
    cdsAPagarMES_10: TBCDField;
    cdsAPagarMES_11_PA: TStringField;
    cdsAPagarMES_11: TBCDField;
    cdsAPagarMES_12_PA: TStringField;
    cdsAPagarMES_12: TBCDField;
    cxGrid2DBTableView1NOME: TcxGridDBColumn;
    cxGrid2DBTableView1MES_01_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_01: TcxGridDBColumn;
    cxGrid2DBTableView1MES_02_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_02: TcxGridDBColumn;
    cxGrid2DBTableView1MES_03_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_03: TcxGridDBColumn;
    cxGrid2DBTableView1MES_04_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_04: TcxGridDBColumn;
    cxGrid2DBTableView1MES_05_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_05: TcxGridDBColumn;
    cxGrid2DBTableView1MES_06_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_06: TcxGridDBColumn;
    cxGrid2DBTableView1MES_07_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_07: TcxGridDBColumn;
    cxGrid2DBTableView1MES_08_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_08: TcxGridDBColumn;
    cxGrid2DBTableView1MES_09_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_09: TcxGridDBColumn;
    cxGrid2DBTableView1MES_10_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_10: TcxGridDBColumn;
    cxGrid2DBTableView1MES_11_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_11: TcxGridDBColumn;
    cxGrid2DBTableView1MES_12_PA: TcxGridDBColumn;
    cxGrid2DBTableView1MES_12: TcxGridDBColumn;
    Panel1: TPanel;
    Panel2: TPanel;
    btCancelar: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    speAno: TSpinEdit;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    rgAtivo: TRadioGroup;
    SaveDialog1: TSaveDialog;
    btExportar: TBitBtn;
    qAPagarEx: TIBQuery;
    qAPagarExNOME: TIBStringField;
    qAPagarExMES_01: TIBBCDField;
    qAPagarExMES_02: TIBBCDField;
    qAPagarExMES_03: TIBBCDField;
    qAPagarExMES_04: TIBBCDField;
    qAPagarExMES_05: TIBBCDField;
    qAPagarExMES_06: TIBBCDField;
    qAPagarExMES_07: TIBBCDField;
    qAPagarExMES_08: TIBBCDField;
    qAPagarExMES_09: TIBBCDField;
    qAPagarExMES_10: TIBBCDField;
    qAPagarExMES_11: TIBBCDField;
    qAPagarExMES_12: TIBBCDField;
    rgDebitoCredito: TRadioGroup;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxReport1: TfrxReport;
    btLocalizar: TBitBtn;
    qAPagarFIN_ID: TIntegerField;
    qAPagarPLANOCONTAS_ID: TIntegerField;
    qAPagarMEDIA: TIBBCDField;
    cdsAPagarFIN_ID: TIntegerField;
    cdsAPagarPLANOCONTAS_ID: TIntegerField;
    cdsAPagarMEDIA: TBCDField;
    cxGrid2DBTableView1MEDIA: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    LanamentoAnual1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btCancelarClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure rgDebitoCreditoClick(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure LanamentoAnual1Click(Sender: TObject);
  private
    { Private declarations }
    function Continua(pContinua:Boolean;pTexto:String=''):Boolean;
    procedure ColunaParcelas(pVisivel:Boolean);
    procedure BuscarRegistros;
  public
    { Public declarations }
  end;

var
  FTitulosAnual: TFTitulosAnual;
const v_ativo : Array[0..2] of String = (' ','N','S');
      v_debcred : Array[0..1] of String = ('D','C');

implementation

uses uDMConexao, DateUtils, uClassAvisos, uClassServidorIni, uFerramentas,
  uCadTitulos2;

{$R *.dfm}

procedure TFTitulosAnual.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  speAno.Value := YearOf(Now);
  BuscarRegistros;
  ColunaParcelas(false);
end;

function TFTitulosAnual.Continua(pContinua: Boolean; pTexto: String): Boolean;
begin
  Result := pContinua;
  if not(Result) then
    if pTexto<>'' then
      ShowMessage(pTexto);
end;

procedure TFTitulosAnual.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
const Idx : Array[1..12] of Integer = (2,4,6,8,10,12,14,16,18,20,22,24);
begin
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;
  if (AViewInfo.Item.Index = Idx[ MonthOf(now) ] ) then
    ACanvas.Font.Color := clBlue;
end;

procedure TFTitulosAnual.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFTitulosAnual.ColunaParcelas(pVisivel: Boolean);
var i,ii, iTotal : integer;
begin
  iTotal := 24;
  ii := 1;
  for i := 0 to iTotal do
  begin
    if i>0 then
    begin
      if ii mod 2 = 0 then
      begin
        cxGrid2DBTableView1.Columns[i].Visible := true;
        Inc(ii);
      end
      else
      begin
        if ii<iTotal then
          cxGrid2DBTableView1.Columns[i].Visible := pVisivel;
        Inc(ii);
      end;
    end;
  end;
end;

procedure TFTitulosAnual.CheckBox1Click(Sender: TObject);
begin
  ColunaParcelas(CheckBox1.Checked);
end;

procedure TFTitulosAnual.BuscarRegistros;
begin
    qAPagar.Close;
    qAPagar.ParamByName('ativo').asstring := v_ativo[rgAtivo.itemindex];
    qAPagar.ParamByName('ano').value      := speAno.Value;
    qAPagar.ParamByName('debcred').value  := v_debcred[rgDebitoCredito.ItemIndex];
    qAPagar.ParamByName('usuario').value  := DadosLogin.Id;
    qAPagar.Open;
    cdsAPagar.Close;
    cdsAPagar.Open;
end;

procedure TFTitulosAnual.btExportarClick(Sender: TObject);
var Arquivo: TextFile;
    nX, nY: SmallInt;
    Cabecalho: TStringLIst;
    LinhaDados: String;
    FFiltro : String;
begin
  qAPagarEx.Close;
  qAPagarEx.ParamByName('ativo').asstring := v_ativo[rgAtivo.itemindex];
  qAPagarEx.ParamByName('ano').value  := speAno.Value;
  qAPagarEx.ParamByName('debcred').value  := v_debcred[rgDebitoCredito.ItemIndex];
  qAPagarEx.ParamByName('usuario').value  := DadosLogin.Id;
  qAPagarEx.Open;
  FFiltro := 'Filtro: ';
  FFiltro := FFiltro + rgDebitoCredito.Buttons[rgDebitoCredito.ItemIndex].Caption+' ';
  FFiltro := FFiltro + ' | Ano: '+IntToStr(speAno.Value);
  FFiltro := FFiltro + ' | '+CheckBox1.Caption+': '+IfThen(CheckBox1.Checked,'SIM','NÃO');
  FFiltro := FFiltro + ' | '+rgAtivo.Caption+': '+rgAtivo.Buttons[rgAtivo.itemIndex].Caption;
  frxReport1.LoadFromFile(ServidorIni.Relatorios+'TitulosAnual.fr3');
  frxReport1.Variables['Filtro'] := QuotedStr(FFiltro);
  frxReport1.ShowReport(true);
(*
  Exit;

  if SaveDialog1.Execute then
  begin
    Cabecalho := TStringList.Create;
    AssignFile(Arquivo, SaveDialog1.FileName);
    ReWrite(Arquivo);

    qAPagarEx.Close;
    qAPagarEx.ParamByName('ativo').asstring := v_ativo[rgAtivo.itemindex];
    qAPagarEx.ParamByName('ativo1').asstring := v_ativo[rgAtivo.itemindex];
    qAPagarEx.ParamByName('ativo2').asstring := v_ativo[rgAtivo.itemindex];
    qAPagarEx.ParamByName('ativo3').asstring := v_ativo[rgAtivo.itemindex];
    qAPagarEx.ParamByName('ano').value  := speAno.Value;
    qAPagarEx.ParamByName('ano').value  := speAno.Value;
    qAPagarEx.ParamByName('debcred').value  := v_debcred[rgDebitoCredito.ItemIndex];
    qAPagarEx.ParamByName('debcred2').value  := v_debcred[rgDebitoCredito.ItemIndex];
    qAPagarEx.Open;

    Cabecalho := qAPagarEx.FieldList;
    qAPagarEx.First;
    nY := Cabecalho.Count-1;
    LinhaDados := '';
    For nX := 0 to nY do
      LinhaDados := LinhaDados + Cabecalho.Strings[nX] + ';';
    WriteLn(Arquivo, LinhaDados);
    nY := qAPagarEx.FieldCount-1;
    while not qAPagarEx.Eof do
    begin
      LinhaDados := '';
      For nX := 0 to nY do
        LinhaDados := LinhaDados + qAPagarEx.FieldByName(Cabecalho.Strings[nX]).AsString+';';
      WriteLn(Arquivo, LinhaDados);
      qAPagarEx.Next;
    end;
    //Cabecalho.Free;
    qAPagarEx.Close;
    CloseFile(Arquivo);
    Aviso('Arquivo exportado: '+SaveDialog1.FileName);
  end;
*)

end;

procedure TFTitulosAnual.rgDebitoCreditoClick(Sender: TObject);
begin
  BuscarRegistros;
end;

procedure TFTitulosAnual.btLocalizarClick(Sender: TObject);
begin
  BuscarRegistros;
end;

procedure TFTitulosAnual.LanamentoAnual1Click(Sender: TObject);
begin
  FCadTitulos2 := TFCadTitulos2.Create(nil);
  FCadTitulos2.FPagarReceber := rgDebitoCredito.ItemIndex;
  FCadTitulos2.FTitulo_Id    := cdsAPagarFIN_ID.AsInteger;
  FCadTitulos2.ShowModal;
  FCadTitulos2.free;
end;

end.


