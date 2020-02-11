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
  cxCheckBox;

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
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1PAR_NUMERO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_QUANTIDADE: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VENCTO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_PAGO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
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
    cxGrid2DBTableView1PAR_OBSERVACAO: TcxGridDBColumn;
    cxGrid2DBTableView1PAR_DATA: TcxGridDBColumn;
    qConsultaPAGO: TIntegerField;
    cxGrid1DBTableView1PAGO: TcxGridDBColumn;
    qCadastroFIN_USU_ID: TIntegerField;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label16: TLabel;
    DBEdit8: TDBEdit;
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
  private
    { Private declarations }
    procedure getTitulos;
    procedure GravaRegistrosFilhos(var pGravouSucesso:Boolean); override;
  public
    { Public declarations }
  end;

var
  FCadTitulos2: TFCadTitulos2;
const
  v_ativo : Array[0..2] of String = (' ','N','S');
  v_debitocredito : Array[0..1] of String = ('D','C');

implementation

uses uFerramentas;

{$R *.dfm}

procedure TFCadTitulos2.FormShow(Sender: TObject);
begin
  inherited;
  pgCadastro.ActivePageIndex := 0;
  getTitulos;
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
  if(AViewInfo.GridRecord.Values[cxGrid1DBTableView1PAGO.Index] = 0) then
    ACanvas.Font.Color := clGreen;
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
begin
  inherited;
  if not(Continua(edQuant.Text<>'','Informe Quantidade')) then
    Exit;
  if not(Continua(edQuant.Text<>'','Quantidade MAIOR que zero')) then
    Exit;
  if not(Continua(edValor.Text<>'','Informe Valor')) then
    Exit;
  if StrToInt(edQuant.Text)>0 then
  begin
    vdata := edDataParcela.Date;
    for i := 1 to StrToInt(edQuant.Text) do
    begin
      if not(qParcelas.State=dsInsert) then
        qParcelas.Insert;
      qParcelasPAR_FIN_ID.Value      := qCadastroFIN_ID.Value;
      qParcelasPAR_NUMERO.Value      := i;
      qParcelasPAR_QUANTIDADE.Value  := StrToInt(edQuant.Text);
      qParcelasPAR_VENCTO.Value      := vdata;
      vdata := IncMonth(vdata);
      qParcelasPAR_VALOR.Value       := StrToFloat(edValor.Text);
      qParcelasPAR_PAGO.Value        := 0;
      qParcelas.Post;
    end;
    edQuant.Clear;
    edValor.Clear;
    edQuant.SetFocus;
  end;
end;

procedure TFCadTitulos2.cbGerarParcelasAutoClick(Sender: TObject);
begin
  inherited;
  gbGerarParcelasAuto.Enabled := cbGerarParcelasAuto.Checked;
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

procedure TFCadTitulos2.getTitulos;
begin
  qConsulta.Close;
  qConsulta.ParamByName('ativo').asstring    := v_ativo[rgAtivo.itemindex];
  qConsulta.ParamByName('debcred').asstring  := v_debitocredito[rgDebitoCredito.itemindex];
  qConsulta.ParamByName('usuario').asinteger := DadosLogin.Id;
  qConsulta.Open;
end;

procedure TFCadTitulos2.rgDebitoCreditoClick(Sender: TObject);
begin
  inherited;
  getTitulos;
end;

procedure TFCadTitulos2.qCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  qCadastroFIN_USU_ID.asinteger := DadosLogin.Id;
end;

end.
