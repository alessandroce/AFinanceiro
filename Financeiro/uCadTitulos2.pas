unit uCadTitulos2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastro2, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, IBQuery, IBCustomDataSet,
  StdCtrls, ExtCtrls, Buttons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, Spin,DateUtils, Mask, DBCtrls,
  ImgList, cxNavigator, cxDBNavigator, wwdbdatetimepicker, wwdblook,
  cxCheckBox, DBClient, StrUtils, cxDBLookupComboBox, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, ActnList, frxClass;

type
  TFCadTitulos2 = class(TFCadastro2)
    qCadastroFIN_ID: TIntegerField;
    qCadastroFIN_DATA: TDateTimeField;
    qCadastroFIN_DESCRICAO: TIBStringField;
    qCadastroFIN_PES_ID: TIntegerField;
    qCadastroFIN_CAT_ID: TIntegerField;
    qCadastroFIN_DEBCRED: TIBStringField;
    qCadastroFIN_TIPO_DC: TIntegerField;
    qCadastroFIN_INATIVO: TIBStringField;
    qParcelas: TIBDataSet;
    dsParcelas: TDataSource;
    qParcelasPAR_ID: TIntegerField;
    qParcelasPAR_FIN_ID: TIntegerField;
    qParcelasPAR_NUMERO: TIntegerField;
    qParcelasPAR_QUANTIDADE: TIntegerField;
    qParcelasPAR_VENCTO: TDateField;
    qParcelasPAR_VALOR: TIBBCDField;
    qParcelasPAR_VALOR_PAGO: TIBBCDField;
    qParcelasPAR_PAGO: TIntegerField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    DBRadioGroup1: TDBRadioGroup;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit2: TDBEdit;
    Bevel1: TBevel;
    cxDBNavigator1: TcxDBNavigator;
    gbGerarParcelasAuto: TGroupBox;
    Label11: TLabel;
    edQuant: TEdit;
    Label12: TLabel;
    edValor: TEdit;
    Label1: TLabel;
    edDataParcela: TDateTimePicker;
    sbinc: TSpeedButton;
    qPessoa: TIBQuery;
    qPessoaPES_NOME_FANTASIA: TIBStringField;
    qPessoaPES_NOME_RAZAO: TIBStringField;
    qPessoaPES_ID: TIntegerField;
    qPessoaPES_TIPO: TIntegerField;
    qPessoaPES_TIPO_PESSOA: TIntegerField;
    qPessoaPES_CNPJ: TIBStringField;
    qPessoaPES_INSC_EST: TIBStringField;
    qPessoaPES_EMAIL: TIBStringField;
    qPessoaPES_TEL_COMERCIAL: TIBStringField;
    qPessoaPES_TEL_CELULAR: TIBStringField;
    qPessoaPES_CONTATO: TIBStringField;
    qPessoaPES_ENDERECO: TIBStringField;
    qPessoaPES_NUMERO: TIntegerField;
    qPessoaPES_COMPLEMENTO: TIBStringField;
    qPessoaPES_BAIRRO: TIBStringField;
    qPessoaPES_CEP: TIBStringField;
    qPessoaPES_CIDADE: TIBStringField;
    qPessoaPES_UF: TIBStringField;
    qPessoaPES_ANIVERSARIO: TDateField;
    qPessoaPES_DESCRICAO: TIBStringField;
    dsPessoa: TDataSource;
    qCategoriaG: TIBQuery;
    qCategoriaGCATG_DESCRICAO: TIBStringField;
    qCategoriaGCATG_ID: TIntegerField;
    dsCategoriaG: TDataSource;
    qCategoria: TIBQuery;
    qCategoriaCAT_DESCRICAO: TIBStringField;
    qCategoriaCAT_ID: TIntegerField;
    qCategoriaCAT_CATG_ID: TIntegerField;
    dsCategoria: TDataSource;
    cbGerarParcelasAuto: TCheckBox;
    qConsultaFIN_ID: TIntegerField;
    qConsultaFIN_DESCRICAO: TIBStringField;
    cxGrid1DBTableView1FIN_ID: TcxGridDBColumn;
    cxGrid1DBTableView1FIN_DESCRICAO: TcxGridDBColumn;
    rgDebitoCredito: TRadioGroup;
    qParcelasPAR_OBSERVACAO: TIBStringField;
    qParcelasPAR_DATA: TDateField;
    qCadastroFIN_USU_ID: TIntegerField;
    cdsTmp: TClientDataSet;
    cdsTmpCodigo: TIntegerField;
    dsTmp: TDataSource;
    qCadastroCODIGO: TIntegerField;
    rgSituacao: TRadioGroup;
    qConsultaSITUACAO: TIntegerField;
    cxGrid1DBTableView1SITUACAO: TcxGridDBColumn;
    rgSituacaoParcelas: TRadioGroup;
    qParcelasPAR_DESCONTOSABAT: TIBBCDField;
    qParcelasPAR_OUTDEDUCOES: TIBBCDField;
    qParcelasPAR_JUROSMULTA: TIBBCDField;
    qParcelasPAR_OUTACRESCIMOS: TIBBCDField;
    pgParcelas: TPageControl;
    tsParcelas: TTabSheet;
    tsDetParcelas: TTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2DET_ID: TcxGridDBColumn;
    cxGrid2DBTableView2DET_PAR_ID: TcxGridDBColumn;
    cxGrid2DBTableView2DET_DATA: TcxGridDBColumn;
    cxGrid2DBTableView2DET_DATA_DOC: TcxGridDBColumn;
    cxGrid2DBTableView2DET_DESCRICAO: TcxGridDBColumn;
    cxGrid2DBTableView2DET_VALOR: TcxGridDBColumn;
    cxGrid2DBTableView3: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    sbDetalhes: TSpeedButton;
    Label9: TLabel;
    cbAgrupar: TCheckBox;
    Label10: TLabel;
    edDataVencimento: TDateTimePicker;
    edObservacao: TEdit;
    qParcelasPAR_DH_CA: TDateTimeField;
    qParcelasDetalhe: TIBQuery;
    qParcelasDetalheDET_ID: TIntegerField;
    qParcelasDetalheDET_PAR_ID: TIntegerField;
    qParcelasDetalheDET_DATA: TDateField;
    qParcelasDetalheDET_DATA_DOC: TDateField;
    qParcelasDetalheDET_DESCRICAO: TIBStringField;
    qParcelasDetalheDET_VALOR: TIBBCDField;
    dsParcelasDetalhe: TDataSource;
    qCentroCusto: TIBQuery;
    dsCentroCusto: TDataSource;
    qCentroCustoCCT_ID: TIntegerField;
    qCentroCustoCCT_DESCRICAO: TIBStringField;
    qCentroCustoCCT_DH_CA: TDateTimeField;
    qCadastroFIN_PLANOCONTAS_ID: TIntegerField;
    qParcelasPAR_DATAPGTO: TDateTimeField;
    qParcelasPAR_FLAG: TIntegerField;
    qParcelasDESCRICAO: TIBStringField;
    qParcelasFLAG: TIntegerField;
    cxGrid2DBTableView1PAR_ID: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_FIN_ID: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_NUMERO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_QUANTIDADE: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VENCTO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_PAGO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_OBSERVACAO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_DATA: TcxGridDBColumn;
    qParcelasSITUACAO: TIntegerField;
    cxGridDBTableView1DET_ID: TcxGridDBColumn;
    cxGridDBTableView1DET_PAR_ID: TcxGridDBColumn;
    cxGridDBTableView1DET_DATA: TcxGridDBColumn;
    cxGridDBTableView1DET_DATA_DOC: TcxGridDBColumn;
    cxGridDBTableView1DET_DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1DET_VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_FLAG: TcxGridDBColumn;
    qCentroCustoGrid: TIBQuery;
    dsCentroCustoGrid: TDataSource;
    qCentroCustoGridCCT_ID: TIntegerField;
    qCentroCustoGridCCT_DESCRICAO: TIBStringField;
    qCentroCustoGridCCT_DH_CA: TDateTimeField;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Label2: TLabel;
    qExisteParcela: TIBQuery;
    dsExisteParcela: TDataSource;
    ibDetalheParcelas: TIBDataSet;
    qGetIdParcelas: TIBQuery;
    qGetIdParcelasID: TLargeintField;
    ibDetalheParcelasDET_ID: TIntegerField;
    ibDetalheParcelasDET_PAR_ID: TIntegerField;
    ibDetalheParcelasDET_DATA: TDateField;
    ibDetalheParcelasDET_DATA_DOC: TDateField;
    ibDetalheParcelasDET_DESCRICAO: TIBStringField;
    ibDetalheParcelasDET_VALOR: TIBBCDField;
    ibDetalheParcelasDET_DH_CA: TDateTimeField;
    ibDetalheParcelasDET_PAGO: TIntegerField;
    ibDetalheParcelasDET_DATAPGTO: TDateTimeField;
    ibDetalheParcelasDET_FLAG: TIntegerField;
    ibDetalheParcelasDESCRICAO: TIBStringField;
    qExisteParcelaPAR_ID: TIntegerField;
    ibDetalheParcelasDET_NUMERO: TIntegerField;
    ibDetalheParcelasDET_QUANTIDADE: TIntegerField;
    SpeedButton1: TSpeedButton;
    Label14: TLabel;
    edPesquisa: TEdit;
    btPesquisa: TBitBtn;
    qCadastroFIN_PROVISIONAR: TIBStringField;
    qParcelasDetalheDET_DH_CA: TDateTimeField;
    qParcelasDetalheDET_PAGO: TIntegerField;
    qParcelasDetalheDET_DATAPGTO: TDateTimeField;
    qParcelasDetalheDET_FLAG: TIntegerField;
    qParcelasDetalheDESCRICAO: TIBStringField;
    qParcelasDetalheDET_NUMERO: TIntegerField;
    qParcelasDetalheDET_QUANTIDADE: TIntegerField;
    qParcelasDetalheDET_DATAVENCTO: TDateField;
    qParcelasDetalheDET_EMPRESTIMO_ID: TIntegerField;
    qParcelasDetalheDET_PROVISIONAR: TIBStringField;
    ibDetalheParcelasDET_DATAVENCTO: TDateField;
    ibDetalheParcelasDET_EMPRESTIMO_ID: TIntegerField;
    ibDetalheParcelasDET_PROVISIONAR: TIBStringField;
    cbProvisionar: TCheckBox;
    qParcelasPAR_EMPRESTIMO_ID: TIntegerField;
    qParcelasPAR_PROVISIONAR: TIBStringField;
    qCadastroFIN_VALORLIMITE: TIBBCDField;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    ActionListBotao: TActionList;
    bNovo: TAction;
    bAlterar: TAction;
    bCancelar: TAction;
    bGravar: TAction;
    bExcluir: TAction;
    qExisteParcelaPAR_VALOR: TIBBCDField;
    qEditarParcela: TIBDataSet;
    qEditarParcelaPAR_ID: TIntegerField;
    qEditarParcelaPAR_FIN_ID: TIntegerField;
    qEditarParcelaPAR_NUMERO: TIntegerField;
    qEditarParcelaPAR_QUANTIDADE: TIntegerField;
    qEditarParcelaPAR_VENCTO: TDateField;
    qEditarParcelaPAR_VALOR: TIBBCDField;
    qEditarParcelaPAR_VALOR_PAGO: TIBBCDField;
    qEditarParcelaPAR_PAGO: TIntegerField;
    qEditarParcelaPAR_OBSERVACAO: TIBStringField;
    qEditarParcelaPAR_DATA: TDateField;
    qEditarParcelaPAR_DESCONTOSABAT: TIBBCDField;
    qEditarParcelaPAR_OUTDEDUCOES: TIBBCDField;
    qEditarParcelaPAR_JUROSMULTA: TIBBCDField;
    qEditarParcelaPAR_OUTACRESCIMOS: TIBBCDField;
    qEditarParcelaPAR_DH_CA: TDateTimeField;
    qEditarParcelaPAR_DATAPGTO: TDateTimeField;
    qEditarParcelaPAR_FLAG: TIntegerField;
    qEditarParcelaDESCRICAO: TIBStringField;
    qEditarParcelaFLAG: TIntegerField;
    qEditarParcelaPAR_EMPRESTIMO_ID: TIntegerField;
    qEditarParcelaPAR_PROVISIONAR: TIBStringField;
    cxGrid2DBTableView1PAR_PROVISIONAR: TcxGridDBColumn;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label16: TLabel;
    qCadastroFIN_MELHORDIA: TIntegerField;
    qCadastroFIN_VENCTODIA: TIntegerField;
    BitBtn1: TBitBtn;
    frxReport1: TfrxReport;
    ibDetalheParcelasDET_ID_PAI: TIntegerField;
    qGetIdParcelasDetalhe: TIBQuery;
    qGetIdParcelasDetalheID: TLargeintField;
    TabSheet1: TTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    qParcelasCentroCusto: TIBQuery;
    dsParcelasCentroCusto: TDataSource;
    qParcelasCentroCustoDET_PAR_ID: TIntegerField;
    qParcelasCentroCustoCCT_DESCRICAO: TIBStringField;
    qParcelasCentroCustoVALOR: TIBBCDField;
    cxGridDBTableView4DET_PAR_ID: TcxGridDBColumn;
    cxGridDBTableView4CCT_DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView4VALOR: TcxGridDBColumn;
    SpeedButton2: TSpeedButton;
    qCadastroFIN_PROVCCUSTO: TIBStringField;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    qCadastroFIN_VALORPROVISAO: TIBBCDField;
    qConsultaPROV: TIntegerField;
    qConsultaPROVISAO: TIntegerField;
    cxGrid1DBTableView1PROVISAO: TcxGridDBColumn;
    cxGrid1DBTableView1PROV: TcxGridDBColumn;
    SpeedButton3: TSpeedButton;
    MaskEdit1: TMaskEdit;
    Label18: TLabel;
    procedure FormShow(Sender: TObject);
    procedure qCadastroAfterOpen(DataSet: TDataSet);
    procedure qParcelasAfterInsert(DataSet: TDataSet);
    procedure qParcelasBeforeInsert(DataSet: TDataSet);
    procedure qCadastroBeforeDelete(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure edQuantKeyPress(Sender: TObject; var Key: Char);
    procedure btAlterarClick(Sender: TObject);
    procedure sbincClick(Sender: TObject);
    procedure cbGerarParcelasAutoClick(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure rgAtivoClick(Sender: TObject);
    procedure btApagarClick(Sender: TObject);
    procedure rgDebitoCreditoClick(Sender: TObject);
    procedure qCadastroBeforePost(DataSet: TDataSet);
    procedure dsCategoriaDataChange(Sender: TObject; Field: TField);
    procedure rgSituacaoParcelasClick(Sender: TObject);
    procedure qCadastroNewRecord(DataSet: TDataSet);
    procedure sbDetalhesClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
    procedure edPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure pgCadastroChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure ibDetalheParcelasBeforePost(DataSet: TDataSet);
    procedure qParcelasBeforePost(DataSet: TDataSet);
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    vSQL_TITULO : String;
    vPesquisa : Boolean;
    procedure getTitulos(pTitulo:String='');
    procedure GravaRegistrosFilhos(var pGravouSucesso:Boolean); override;

  public
    { Public declarations }
    FPagarReceber : Integer;//0=pagar 1=receber
    FTitulo_Id : Integer;
  end;

var
     FCadTitulos2: TFCadTitulos2;
const
  v_ativo : Array[0..2] of String = (' ','N','S');
  v_debitocredito : Array[0..1] of String = ('D','C');
  v_situacao : Array[0..2] of Integer = (1,0,3);

implementation

uses uFerramentas, uDetalheParcelas, uDMConexao, uClassAvisos,
  uInformeDadosParcelasDet, uTransferirParcelasDet, uCadTitulos2Provisao,
  uLimiteCreditoTitulos;

{$R *.dfm}

procedure TFCadTitulos2.FormShow(Sender: TObject);
begin
  inherited;
  Caption := Caption + ' - ' + IfThen(FPagarReceber=0,'Pagar','Receber');
  vSQL_TITULO := qConsulta.SQL.Text+#13+' %s ';
  if FTitulo_Id > 0 then
  begin
    rgDebitoCredito.ItemIndex := FPagarReceber;
    getTitulos;
    qConsulta.Locate('FIN_ID',IntToStr(FTitulo_Id),[loPartialKey]);
    btAlterarClick(Sender);
  end
  else
  begin
    pgCadastro.ActivePageIndex := 0;
    pgParcelas.ActivePageIndex := 0;
    rgDebitoCredito.ItemIndex := FPagarReceber;
    getTitulos;
    cdsTmp.Append;
  end;
  //cbGerarParcelasAuto.Caption := formatDateTime('dd/mm/yyyy',Now)
  edDataParcela.Date    := Date;
  edDataVencimento.Date := Date;
end;



procedure TFCadTitulos2.GravaRegistrosFilhos(var pGravouSucesso: Boolean);
begin
  inherited;

end;

procedure TFCadTitulos2.qCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qPessoa.Close;
  qPessoa.Open;

  qCategoriaG.Close;
  qCategoriaG.Open;

  qCategoria.Close;
  qCategoria.Open;

  qParcelas.Close;
  qParcelas.Open;

  qParcelasDetalhe.Close;
  qParcelasDetalhe.Open;

  qCentroCusto.Close;
  qCentroCusto.Open;

  qCentroCustoGrid.Close;
  qCentroCustoGrid.Open;

  qParcelasCentroCusto.Close;
  qParcelasCentroCusto.Open;

  MaskEdit1.Text := FormatFloat('0.00',Retorna_Saldo_LimiteCartao(MonthOf(IncMonth(Now)),
                                                                  YearOf(IncMonth(Now)),
                                                                  qCadastroFIN_ID.AsInteger,
                                                                  DadosLogin.Id
                                                                  ));
end;

procedure TFCadTitulos2.qParcelasAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qParcelasPAR_FIN_ID.asinteger := qCadastroFIN_ID.asinteger;
end;

procedure TFCadTitulos2.qParcelasBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  qCadastro.Post;
  qCadastro.Edit;
end;

procedure TFCadTitulos2.qCadastroBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  while qParcelas.RecordCount>0 do
    qParcelas.Delete;
end;

procedure TFCadTitulos2.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if(AViewInfo.GridRecord.Values[cxGrid1DBTableView1SITUACAO.Index] = 0) then
    ACanvas.Font.Color := clGreen;

  if AViewInfo.Item.Index = cxGrid1DBTableView1PROVISAO.Index then
    if(AViewInfo.GridRecord.Values[cxGrid1DBTableView1PROV.Index] = 1) then
      ACanvas.Canvas.Brush.Color := clBlue;

end;

procedure TFCadTitulos2.edQuantKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(key in ['0'..'9',#8,#44]) then
    key:=#0;
end;

procedure TFCadTitulos2.btAlterarClick(Sender: TObject);
begin
  inherited;
  //qCategoriaG.Locate('CATG_ID',qConsultaCATG_ID.asinteger,[]);
  //wwDBLookupCombo2.Text := qCategoriaGCATG_DESCRICAO.asstring;

  //qCategoria.Locate('CAT_ID',qConsultaCAT_ID.asinteger,[]);
  //wwDBLookupCombo3.Text := qCategoriaCAT_DESCRICAO.asstring;

end;

procedure TFCadTitulos2.sbincClick(Sender: TObject);
var i : Integer;
    vdata : TDate;
    sDataDoc, sDescricao : String;
    vPAR_ID : Integer;
    vPAR_VENCTO : TDate;
    vDataDoc, vDescricao : String;
    vValorAcum : Double;
    vDET_ID     : Integer;
    vDET_ID_PAI : Integer;

  function getInformeDadosParcelasDet:Boolean;
  begin
    FInformeDadosParcelasDet := TFInformeDadosParcelasDet.Create(nil);
    FInformeDadosParcelasDet.FDataDoc := FormatDateTime('dd/mm/yyyy',edDataParcela.DateTime);
    FInformeDadosParcelasDet.ShowModal;
    Result := FInformeDadosParcelasDet.FCancelado;
    if Result then
    begin
      vDataDoc   := FInformeDadosParcelasDet.FDataDoc;
      vDescricao := FInformeDadosParcelasDet.FDescricao;
    end;
  end;

begin
  inherited;
  if not(Continua(edQuant.Text<>'','Informe Quantidade')) then
    Exit;
  if not(Continua(edQuant.Text<>'','Quantidade MAIOR que zero')) then
    Exit;
  if not(Continua(edValor.Text<>'','Informe Valor')) then
    Exit;
  if not(Continua(wwDBLookupCombo4.Text<>'','Informe o Centro Custo')) then
    Exit;

  vValorAcum := 0;
  if StrToInt(edQuant.Text)>0 then
  begin
    vdata := edDataVencimento.Date;
    ibDetalheParcelas.Open;
    try
    {}  //if not(DMConexao.IBTransacao.InTransaction) then
    {}  //  DMConexao.IBTransacao.StartTransaction;
    {}
    {}  for i := 1 to StrToInt(edQuant.Text) do
    {}  begin
    {}  {}  if i=1 then
    {}  {}    vPAR_VENCTO := vData
    {}  {}  else
    {}  {}    vPAR_VENCTO := IncMonth(vdata,I-1);
    {}  {}
    {}  {}  if vDataDoc='' then
    {}  {}  begin
    {}  {}   if not getInformeDadosParcelasDet then
    {}  {}   begin
    {}  {}     Aviso('Dados parcela não informados.');
    {}  {}     Break;
    {}  {}   end;
    {}  {}  end;
    {}  {}
    {}  {}
    {}  {}  qGetIdParcelasDetalhe.Close;
    {}  {}  qGetIdParcelasDetalhe.Open;
    {}  {}  vDET_ID := qGetIdParcelasDetalheID.AsInteger;
    {}  {}  if i = 1 then
    {}  {}    vDET_ID_PAI := vDET_ID;
    {}  {}
    {}  {}
    {}  {}
    {}  {}  //se existe parcela, acrescenta parcela_detalhe
    {}  {}  qExisteParcela.Close;
    {}  {}  qExisteParcela.SQL.Clear;
    {}  {}  qExisteParcela.SQL.Text := Format('select parcelas.par_id, parcelas.par_valor '+#13+
    {}  {}                                    '  from parcelas '+#13+
    {}  {}                                    ' where parcelas.par_fin_id = %s '+#13+
    {}  {}                                    '   and extract(month from parcelas.par_vencto) = %s '+#13+
    {}  {}                                    '   and extract(year from parcelas.par_vencto) = %s ',
    {}  {}                                    [qCadastroFIN_ID.asString,
    {}  {}                                    IntToStr(MonthOf(vPAR_VENCTO)),
    {}  {}                                    IntToStr(YearOf(vPAR_VENCTO)) ]);
    {}  {}  qExisteParcela.Open;
    {}  {}  if qExisteParcelaPAR_ID.asInteger>0 then
    {}  {}  begin
    {}  {}  {}
    {}  {}  {}    if not(ibDetalheParcelas.State=dsInsert) then
    {}  {}  {}      ibDetalheParcelas.Insert;
    {}  {}  {}
    {}  {}  {}    ibDetalheParcelasDET_ID.asInteger        := vDET_ID;
    {}  {}  {}    ibDetalheParcelasDET_ID_PAI.asInteger    := vDET_ID_PAI;
    {}  {}  {}    //ibDetalheParcelasDET_PAR_ID.asInteger    := vPAR_ID;
    {}  {}  {}    vPAR_ID := qExisteParcelaPAR_ID.Value;
    {}  {}  {}    ibDetalheParcelasDET_PAR_ID.asInteger    := vPAR_ID;
    {}  {}  {}    ibDetalheParcelasDET_DATA.asDateTime     := Now;
    {}  {}  {}
    {}  {}  {}    //if sDataDoc='' then
    {}  {}  {}    //  InputQuery('Informe','Data Doc.', sDatadoc);
    {}  {}  {}    //if sDescricao='' then
    {}  {}  {}    //  InputQuery('Informe','Descricao.', sDescricao);
    {}  {}  {}
    {}  {}  {}    ibDetalheParcelasDET_DATA_DOC.asDateTime := StrToDateTime(vDataDoc);
    {}  {}  {}    ibDetalheParcelasDET_DESCRICAO.asString  := vDescricao+' '+IntToStr(i)+'/'+edQuant.Text;;
    {}  {}  {}    ibDetalheParcelasDET_VALOR.asFloat       := StrToFloat(edValor.Text);
    {}  {}  {}    vValorAcum := qExisteParcelaPAR_VALOR.AsFloat + ibDetalheParcelasDET_VALOR.asFloat;
    {}  {}  {}
    {}  {}  {}    //ibDetalheParcelasDET_DH_CA.asDateTime    :=
    {}  {}  {}    //ibDetalheParcelasDESC_PARCELA.asString   :=
    {}  {}  {}    //ibDetalheParcelasPAR_OBSERVACAO.asString :=
    {}  {}  {}    //ibDetalheParcelasDET_PAGO.asInteger      :=
    {}  {}  {}    //ibDetalheParcelasDET_DATAPGTO.asDateTime :=
    {}  {}  {}    ibDetalheParcelasDET_FLAG.asInteger      := qCentroCustoCCT_ID.Value;
    {}  {}  {}    //ibDetalheParcelasDESCRICAO.asString      :=
    {}  {}  {}    ibDetalheParcelasDET_NUMERO.asInteger      := i;
    {}  {}  {}    ibDetalheParcelasDET_QUANTIDADE.asInteger  := StrToInt(edQuant.Text);
    {}  {}  {}    ibDetalheParcelasDET_PROVISIONAR.asString  := ifthen(cbProvisionar.Checked,'S','N');
    {}  {}  {}    ibDetalheParcelas.Post;
    {}  {}  {}
    {}  {}  {}    //editar parcela
    {}  {}  {}    qEditarParcela.Close;
    {}  {}  {}    qEditarParcela.ParamByName('PAR_ID').AsInteger := vPAR_ID;
    {}  {}  {}    qEditarParcela.Open;
    {}  {}  {}    qEditarParcela.Edit;
    {}  {}  {}    qEditarParcelaPAR_VALOR.AsFloat := vValorAcum;
    {}  {}  {}    qEditarParcelaPAR_PROVISIONAR.asString  := ifthen(cbProvisionar.Checked,'S','N');
    {}  {}  {}    qEditarParcela.Post;
    {}  {}  {}
    {}  {}  {}    qParcelas.Refresh;
    {}  {}  {}
    {}  {}  {}
    {}  {}  {}
    {}  {}  end
    {}  {}  else
    {}  {}  begin
    {}  {}  {}  qGetIdParcelas.Close;
    {}  {}  {}  qGetIdParcelas.Open;
    {}  {}  {}  vPAR_ID := qGetIdParcelasID.asInteger;
    {}  {}  {}
    {}  {}  {}    if not(qParcelas.State=dsInsert) then
    {}  {}  {}      qParcelas.Insert;
    {}  {}  {}    qParcelasPAR_ID.Value          := vPAR_ID;
    {}  {}  {}    qParcelasPAR_FIN_ID.Value      := qCadastroFIN_ID.Value;
    {}  {}  {}    qParcelasPAR_NUMERO.Value      := StrToInt(IfThen(cbAgrupar.checked,IntToStr(i),'1'));
    {}  {}  {}    qParcelasPAR_QUANTIDADE.Value  := StrToInt(IfThen(cbAgrupar.checked,edQuant.Text,'1'));
    {}  {}  {}    qParcelasPAR_DATA.Value        := edDataParcela.Date;
    {}  {}  {}    qParcelasPAR_FLAG.Value        := qCentroCustoCCT_ID.Value;
    {}  {}  {}    if edObservacao.Text<>'' then
    {}  {}  {}      qParcelasPAR_OBSERVACAO.Value := edObservacao.Text;
    {}  {}  {}    qParcelasPAR_VENCTO.Value      := vPAR_VENCTO;
    {}  {}  {}    qParcelasPAR_VALOR.Value       := StrToFloat(edValor.Text);
    {}  {}  {}    qParcelasPAR_PAGO.Value        := 0;
    {}  {}  {}    qParcelasPAR_PROVISIONAR.asString  := ifthen(cbProvisionar.Checked,'S','N');
    {}  {}  {}
    {}  {}  {}    qParcelas.Post;
    {}  {}  {}
    {}  {}  {}    //criar parcelas detalhe
    {}  {}  {}    if not(ibDetalheParcelas.State=dsInsert) then
    {}  {}  {}      ibDetalheParcelas.Insert;
    {}  {}  {}
    {}  {}  {}    ibDetalheParcelasDET_ID.asInteger        := vDET_ID;
    {}  {}  {}    ibDetalheParcelasDET_ID_PAI.asInteger    := vDET_ID_PAI;
    {}  {}  {}    ibDetalheParcelasDET_PAR_ID.asInteger    := vPAR_ID;
    {}  {}  {}    ibDetalheParcelasDET_DATA.asDateTime     := Now;
    {}  {}  {}    ibDetalheParcelasDET_DATA_DOC.asDateTime := StrToDateTime(vDataDoc);
    {}  {}  {}    ibDetalheParcelasDET_DESCRICAO.asString  := vDescricao+' '+IntToStr(i)+'/'+edQuant.Text;
    {}  {}  {}    ibDetalheParcelasDET_VALOR.asFloat       := StrToFloat(edValor.Text);
    {}  {}  {}    //ibDetalheParcelasDET_DH_CA.asDateTime    :=
    {}  {}  {}    //ibDetalheParcelasDESC_PARCELA.asString   :=
    {}  {}  {}    //ibDetalheParcelasPAR_OBSERVACAO.asString :=
    {}  {}  {}    //ibDetalheParcelasDET_PAGO.asInteger      :=
    {}  {}  {}    //ibDetalheParcelasDET_DATAPGTO.asDateTime :=
    {}  {}  {}    ibDetalheParcelasDET_FLAG.asInteger      := qCentroCustoCCT_ID.Value;
    {}  {}  {}    //ibDetalheParcelasDESCRICAO.asString      :=
    {}  {}  {}    ibDetalheParcelasDET_NUMERO.asInteger      := i;
    {}  {}  {}    ibDetalheParcelasDET_QUANTIDADE.asInteger  := StrToInt(edQuant.Text);
    {}  {}  {}    ibDetalheParcelasDET_PROVISIONAR.asString  := ifthen(cbProvisionar.Checked,'S','N');
    {}  {}  {}    ibDetalheParcelas.Post;
    {}  {}  end;
    {}  end;
    {}  edQuant.Clear;
    {}  edValor.Clear;
    {}  edQuant.SetFocus;
    {}  edObservacao.Clear;
    {}  //DMConexao.IBTransacao.Commit;
    {}  //qParcelas.Open;
    {}  //qParcelasDetalhe.Open;
    except
    {}  on e : Exception do
    {}  begin
    {}  {}  //DMConexao.IBTransacao.Rollback;
    {}  {}  Aviso('Erro na gravação. '+e.Message);
    {}  end;
    end;
  end;
end;

procedure TFCadTitulos2.cbGerarParcelasAutoClick(Sender: TObject);
begin
  inherited;
  gbGerarParcelasAuto.Enabled := cbGerarParcelasAuto.Checked;
  if not(cbGerarParcelasAuto.Checked) then
  begin
    cbAgrupar.Checked := false;
    cbAgrupar.Enabled := false;
  end
  else
  begin
    cbAgrupar.Enabled := true;
  end;
  if cbGerarParcelasAuto.Checked then
    edQuant.SetFocus;
end;

procedure TFCadTitulos2.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if (AViewInfo.GridRecord.Values[cxGrid2DBTableView1PAR_PAGO.Index] = 0) and
     (AViewInfo.GridRecord.Values[cxGrid2DBTableView1PAR_VENCTO.Index] < Now) then
    ACanvas.Font.Color := clRed;

  if (AViewInfo.GridRecord.Values[cxGrid2DBTableView1PAR_PAGO.Index] = 1) then
    ACanvas.Font.Color := clGreen;


end;

procedure TFCadTitulos2.rgAtivoClick(Sender: TObject);
begin
  inherited;
  getTitulos;
end;

procedure TFCadTitulos2.btApagarClick(Sender: TObject);
begin
  inherited;
 getTitulos;
end;

procedure TFCadTitulos2.getTitulos(pTitulo:String='');
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  if pTitulo<>'' then
    qConsulta.SQL.Text := Format(vSQL_TITULO,[' AND upper(fin_descricao) LIKE ''%'+UpperCase(pTitulo)+'%'''])
  else
    qConsulta.SQL.Text := Format(vSQL_TITULO,['']);
  qConsulta.ParamByName('ativo1').asstring     := v_ativo[rgAtivo.itemindex];
  qConsulta.ParamByName('ativo2').asstring     := v_ativo[rgAtivo.itemindex];
  qConsulta.ParamByName('debcred').asstring    := v_debitocredito[rgDebitoCredito.itemindex];
  qConsulta.ParamByName('usuario').asinteger   := DadosLogin.Id;
  qConsulta.ParamByName('situacao1').asinteger := v_situacao[rgSituacao.ItemIndex];
  qConsulta.ParamByName('situacao2').asinteger := v_situacao[rgSituacao.ItemIndex];
  qConsulta.Open;
end;

procedure TFCadTitulos2.rgDebitoCreditoClick(Sender: TObject);
begin
  inherited;
  //rgSituacao.Visible := (rgDebitoCredito.ItemIndex=0);
  getTitulos;
end;

procedure TFCadTitulos2.qCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qCadastro.State=dsInsert) then
  begin
    qCadastroFIN_USU_ID.asinteger := DadosLogin.Id;
    qCadastroFIN_PROVISIONAR.Value := ifthen(cbProvisionar.Checked,'S','N');
  end;
end;

procedure TFCadTitulos2.dsCategoriaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (cdsTmp.State in [dsEdit,dsInsert]) then
    cdsTmpCodigo.asinteger := qCategoriaCAT_CATG_ID.asinteger;
end;

procedure TFCadTitulos2.rgSituacaoParcelasClick(Sender: TObject);
const
  v_sql = 'select parcelas.*,' +
          '       parcelas.par_pago as situacao' +
          '  from parcelas' +
          ' where parcelas.par_id>-1' +
          '   and par_fin_id = :FIN_ID' +
          '   %s' +
          ' order by parcelas.par_vencto, parcelas.par_id';
begin
  inherited;
  qParcelas.Close;
  case rgSituacaoParcelas.ItemIndex of
  0 : qParcelas.SelectSQL.Text := Format(v_sql,['and par_pago = 0']);
  1 : qParcelas.SelectSQL.Text := Format(v_sql,['and par_pago = 1']);
  2 : qParcelas.SelectSQL.Text := Format(v_sql,['']);
  end;
  qParcelas.Open;
end;

procedure TFCadTitulos2.qCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qCadastroFIN_INATIVO.asstring := 'N';
  case FPagarReceber of
  0 : qCadastroFIN_DEBCRED.AsString := 'D';
  1 : qCadastroFIN_DEBCRED.AsString := 'C';
  end;
end;

procedure TFCadTitulos2.sbDetalhesClick(Sender: TObject);
var vPAR_ID : Integer;
begin
  inherited;
  vPAR_ID := qParcelasPAR_ID.asinteger;
  FDetalheParcelas := TFDetalheParcelas.Create(nil);
  FDetalheParcelas.FIdParcela := vPAR_ID;
  FDetalheParcelas.ShowModal;
  //qEditarParcela.Close;
  //qEditarParcela.ParamByName('PAR_ID').AsInteger := vPAR_ID;
  //qEditarParcela.Open;
  //qEditarParcela.Edit;
  //qEditarParcelaPAR_VALOR.AsFloat := FDetalheParcelas.FTotalValorParcelas;
  //qEditarParcela.Post;
  FDetalheParcelas.Free;
  pgParcelas.ActivePageIndex := 0;
  qParcelas.Refresh;
end;

procedure TFCadTitulos2.btCancelarClick(Sender: TObject);
begin
  qParcelas.Cancel;
  qParcelasDetalhe.Cancel;
  inherited;
  if vPesquisa then
  begin
    edPesquisa.Clear;
    edPesquisa.SetFocus;
    getTitulos;
  end;
end;

procedure TFCadTitulos2.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FTransferirParcelasDet := TFTransferirParcelasDet.Create(nil);
  FTransferirParcelasDet.FFinanceiroId  := qParcelasPAR_FIN_ID.asInteger;
  FTransferirParcelasDet.FParcelasDetId := qParcelasPAR_ID.asInteger;
  FTransferirParcelasDet.ShowModal;
  FTransferirParcelasDet.Free;
end;

procedure TFCadTitulos2.btPesquisaClick(Sender: TObject);
begin
  inherited;
  vPesquisa := true;
  getTitulos(edPesquisa.Text);
end;

procedure TFCadTitulos2.edPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=#13 then
  begin
    key := #0;
    btPesquisa.Click;
  end;
end;

procedure TFCadTitulos2.pgCadastroChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if pgCadastro.ActivePage=tsCadastro then
    pgParcelas.ActivePage := tsParcelas;
end;

procedure TFCadTitulos2.ibDetalheParcelasBeforePost(DataSet: TDataSet);
begin
  inherited;
  ibDetalheParcelasDET_PROVISIONAR.Value := ifthen(cbProvisionar.Checked,'S','N');
end;

procedure TFCadTitulos2.qParcelasBeforePost(DataSet: TDataSet);
begin
  inherited;
  qParcelasPAR_PROVISIONAR.Value := ifthen(cbProvisionar.Checked,'S','N');
end;

procedure TFCadTitulos2.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  sbDetalhes.Click;
end;


procedure TFCadTitulos2.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if ChamaRelatorioDesign(frxReport1,'AFINANCEIRO','PagamentosPorCentroCustoAnual') then
  begin
    getVariavelDesign('USUARIO',IntToStr(DadosLogin.Id));
    getVariavelDesign('NOMEUSUARIO',QuotedStr(DadosLogin.Nome));
    ImprimirAlterarRelatorio(0,'PagamentosPorCentroCustoAnual','Pagamentos Por Centro de Custo - Anual');
  end;
end;

procedure TFCadTitulos2.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FCadTitulos2Provisao := TFCadTitulos2Provisao.Create(nil);
  FCadTitulos2Provisao.FMes    := MonthOf(qParcelasPAR_VENCTO.AsDateTime);
  FCadTitulos2Provisao.FAno    := YearOf(qParcelasPAR_VENCTO.AsDateTime);
  FCadTitulos2Provisao.FCCusto := qParcelasPAR_FLAG.AsInteger;
  FCadTitulos2Provisao.FFinan  := qParcelasPAR_FIN_ID.AsInteger;
  FCadTitulos2Provisao.FUsu    := DadosLogin.Id;
  FCadTitulos2Provisao.ShowModal;
  FCadTitulos2Provisao.Free;
end;

procedure TFCadTitulos2.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  try
    FLimiteCreditoTitulos := TFLimiteCreditoTitulos.Create(nil);
    FLimiteCreditoTitulos.FId := qCadastroFIN_ID.AsInteger;
    FLimiteCreditoTitulos.ShowModal;
    if (FLimiteCreditoTitulos.FValorLimite > 0) and
       (FLimiteCreditoTitulos.FValorLimite <> qCadastroFIN_VALORLIMITE.AsFloat) then
    begin
      if (qCadastro.State in [dsInsert,dsEdit]) then
      begin
        qCadastroFIN_VALORLIMITE.AsFloat := FLimiteCreditoTitulos.FValorLimite;
        qCadastro.Post;
      end;
    end;
  Except
    on E : Exception do
    begin
      ShowMessage('Erro. ' + E.Message);
    end;
  end;
end;


end.
