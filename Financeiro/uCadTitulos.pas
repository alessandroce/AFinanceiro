unit uCadTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastro, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBQuery, IBCustomDataSet, StdCtrls,
  Buttons, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ComCtrls, Spin, DBCtrls, wwdblook, Mask, DateUtils, wwdbdatetimepicker,
  cxCheckBox, DBClient;

type
  TFCadTitulos = class(TFCadastro)
    Label14: TLabel;
    ComboBox2: TComboBox;
    SpinEdit2: TSpinEdit;
    BitBtn3: TBitBtn;
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
    cxGrid1DBTableView1FIN_ID: TcxGridDBColumn;
    cxGrid1DBTableView1FIN_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1FIN_DEBCRED: TcxGridDBColumn;
    cxGrid1DBTableView1FIN_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1PES_NOME_FANTASIA: TcxGridDBColumn;
    cxGrid1DBTableView1CAT_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CATG_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1PAR_PAGO: TcxGridDBColumn;
    cxGrid1DBTableView1N_PARCELA: TcxGridDBColumn;
    cxGrid1DBTableView1PAR_VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn;
    cxGrid1DBTableView1PAR_VENCTO: TcxGridDBColumn;
    qCadastroFIN_ID: TIntegerField;
    qCadastroFIN_DATA: TDateTimeField;
    qCadastroFIN_DESCRICAO: TIBStringField;
    qCadastroFIN_PES_ID: TIntegerField;
    qCadastroFIN_CAT_ID: TIntegerField;
    qCadastroFIN_DEBCRED: TIBStringField;
    qCadastroFIN_TIPO_DC: TIntegerField;
    dsAVencer: TDataSource;
    qAVencer: TIBQuery;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    DateField1: TDateField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IntegerField1: TIntegerField;
    dsPessoa: TDataSource;
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
    dsCategoria: TDataSource;
    qCategoria: TIBQuery;
    qCategoriaCAT_DESCRICAO: TIBStringField;
    qCategoriaCAT_ID: TIntegerField;
    qCategoriaCAT_CATG_ID: TIntegerField;
    dsCategoriaG: TDataSource;
    qCategoriaG: TIBQuery;
    qCategoriaGCATG_DESCRICAO: TIBStringField;
    qCategoriaGCATG_ID: TIntegerField;
    qParcelas: TIBDataSet;
    qParcelasPAR_ID: TIntegerField;
    qParcelasPAR_FIN_ID: TIntegerField;
    qParcelasPAR_NUMERO: TIntegerField;
    qParcelasPAR_QUANTIDADE: TIntegerField;
    qParcelasPAR_VENCTO: TDateField;
    qParcelasPAR_VALOR: TIBBCDField;
    qParcelasPAR_VALOR_PAGO: TIBBCDField;
    qParcelasPAR_PAGO: TIntegerField;
    dsParcelas: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PageControl2: TPageControl;
    tsParcelas: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    edQuant: TEdit;
    edValor: TEdit;
    btGerarParcelas: TBitBtn;
    tsContratos: TTabSheet;
    DBEdit1: TDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    DBRadioGroup1: TDBRadioGroup;
    qConsultaCAT_ID: TIntegerField;
    qConsultaCATG_ID: TIntegerField;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    qCadastroFIN_INATIVO: TIBStringField;
    DBRadioGroup2: TDBRadioGroup;
    Label1: TLabel;
    edDataParcela: TDateTimePicker;
    cdsGridParcelas: TClientDataSet;
    dsGridParcelas: TDataSource;
    cdsGridParcelasPAR_FIN_ID: TIntegerField;
    cdsGridParcelasPAR_NUMERO: TIntegerField;
    cdsGridParcelasPAR_QUANTIDADE: TIntegerField;
    cdsGridParcelasPAR_VENCTO: TDateField;
    cdsGridParcelasPAR_VALOR: TBCDField;
    cdsGridParcelasPAR_VALOR_PAGO: TBCDField;
    cdsGridParcelasPAR_PAGO: TIntegerField;
    cxGrid4DBTableView1PAR_FIN_ID: TcxGridDBColumn;
    cxGrid4DBTableView1PAR_NUMERO: TcxGridDBColumn;
    cxGrid4DBTableView1PAR_QUANTIDADE: TcxGridDBColumn;
    cxGrid4DBTableView1PAR_VENCTO: TcxGridDBColumn;
    cxGrid4DBTableView1PAR_VALOR: TcxGridDBColumn;
    cxGrid4DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn;
    cxGrid4DBTableView1PAR_PAGO: TcxGridDBColumn;
    qBuscaParcelas: TIBQuery;
    qBuscaParcelasPAR_ID: TIntegerField;
    qBuscaParcelasPAR_FIN_ID: TIntegerField;
    qBuscaParcelasPAR_NUMERO: TIntegerField;
    qBuscaParcelasPAR_QUANTIDADE: TIntegerField;
    qBuscaParcelasPAR_VENCTO: TDateField;
    qBuscaParcelasPAR_VALOR: TIBBCDField;
    qBuscaParcelasPAR_VALOR_PAGO: TIBBCDField;
    qBuscaParcelasPAR_PAGO: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qCadastroAfterOpen(DataSet: TDataSet);
    procedure edQuantKeyPress(Sender: TObject; var Key: Char);
    procedure btGerarParcelasClick(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure btAlterarClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
    procedure GravaRegistrosFilhos(var pGravouSucesso:Boolean); override;
    procedure BuscarFilhos;
    procedure DepoisBotaoEditar;override;
  public
    { Public declarations }
  end;

var
  FCadTitulos: TFCadTitulos;

implementation

{$R *.dfm}

procedure TFCadTitulos.BitBtn3Click(Sender: TObject);
const v_ativo : Array[0..2] of String = (' ','N','S');
begin
  inherited;
  qConsulta.Close;
  qConsulta.ParamByName('vmes').asinteger := ComboBox2.ItemIndex+1;
  qConsulta.ParamByName('vano').asinteger := SpinEdit2.Value;
  qConsulta.ParamByName('ativo').asstring := v_ativo[rgAtivo.itemindex];
  qConsulta.Open;
end;

procedure TFCadTitulos.FormShow(Sender: TObject);
begin
  inherited;
  FCampoCa := 'FIN_ID';
  FCampoCo := 'FIN_ID';
  FTabelaCa := 'FINANCEIRO';
  ComboBox2.ItemIndex := MonthOf(Now)-1;
  SpinEdit2.Value := YearOf(Now);
  BitBtn3.Click;
  pgCadastro.ActivePageIndex := 0;

end;

procedure TFCadTitulos.qCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qPessoa.Close;
  qPessoa.Open;

  qCategoriaG.Close;
  qCategoriaG.Open;

  qCategoria.Close;
  qCategoria.Open;

  qParcelas.Open;

end;

procedure TFCadTitulos.edQuantKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(key in ['0'..'9',#8]) then
    key:=#0;
end;

procedure TFCadTitulos.btGerarParcelasClick(Sender: TObject);
var i : Integer;
  procedure gerar;
  begin

  end;
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

    for i := 1 to StrToInt(edQuant.Text) do
    begin

      if not(cdsGridParcelas.State=dsInsert) then
        cdsGridParcelas.Insert;

      cdsGridParcelasPAR_FIN_ID.Value      := qCadastroFIN_ID.Value;
      cdsGridParcelasPAR_NUMERO.Value      := i;
      cdsGridParcelasPAR_QUANTIDADE.Value  := StrToInt(edQuant.Text);
      if (i=1) then
        cdsGridParcelasPAR_VENCTO.Value      := edDataParcela.Date
      else
        cdsGridParcelasPAR_VENCTO.Value      := IncMonth(edDataParcela.Date);
      cdsGridParcelasPAR_VALOR.Value         := StrToFloat(edValor.Text);
      //cdsGridParcelasPAR_VALOR_PAGO.Value
      cdsGridParcelasPAR_PAGO.Value          := 0;
      cdsGridParcelas.Post;


    end;
  end;
  if (StrToInt(edQuant.Text)>1) then
  begin

  end;
end;

procedure TFCadTitulos.dsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  FId := qConsultaFIN_ID.asinteger;
end;

procedure TFCadTitulos.btAlterarClick(Sender: TObject);
begin
  inherited;
  qCategoriaG.Locate('CATG_ID',qConsultaCATG_ID.asinteger,[]);
  wwDBLookupCombo2.Text := qCategoriaGCATG_DESCRICAO.asstring;

  qCategoria.Locate('CAT_ID',qConsultaCAT_ID.asinteger,[]);
  wwDBLookupCombo3.Text := qCategoriaCAT_DESCRICAO.asstring;
end;

procedure TFCadTitulos.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if(AViewInfo.GridRecord.Values[cxGrid1DBTableView1PAR_PAGO.Index] = 0) then
    ACanvas.Font.Color := clRed;
  if(AViewInfo.GridRecord.Values[cxGrid1DBTableView1PAR_PAGO.Index] = 1) then
    ACanvas.Font.Color := clGreen;
end;

procedure TFCadTitulos.GravaRegistrosFilhos(var pGravouSucesso: Boolean);
begin
  inherited;
  //apaga parcelas
  //while qParcelas.recordcount > 0 do
  //  if qParcelasPAR_FIN_ID.asinteger = qConsultaFIN_ID.asinteger then
  //    qParcelas.delete;

  //gravar parcelas
  cdsGridParcelas.First;
  while not cdsGridParcelas.Eof do
  begin
    if not(qParcelas.State=dsInsert) then
      qParcelas.Insert;
    qParcelasPAR_FIN_ID.Value      := cdsGridParcelasPAR_FIN_ID.Value;
    qParcelasPAR_NUMERO.Value      := cdsGridParcelasPAR_NUMERO.Value;
    qParcelasPAR_QUANTIDADE.Value  := cdsGridParcelasPAR_QUANTIDADE.Value;
    qParcelasPAR_VENCTO.Value      := cdsGridParcelasPAR_VENCTO.Value;
    qParcelasPAR_VALOR.Value       := cdsGridParcelasPAR_VALOR.Value;
    qParcelasPAR_PAGO.Value        := cdsGridParcelasPAR_PAGO.Value;
    qParcelas.Post;
    cdsGridParcelas.Next;
  end;
end;

procedure TFCadTitulos.btCancelarClick(Sender: TObject);
begin
  inherited;
  qParcelas.Cancel;
end;

procedure TFCadTitulos.BuscarFilhos;
begin

end;

procedure TFCadTitulos.DepoisBotaoEditar;
begin
  inherited;
  qBuscaParcelas.Close;
  qBuscaParcelas.ParamByName('fin_id').asinteger := qConsultaFIN_ID.asinteger;
  qBuscaParcelas.Open;
  qBuscaParcelas.First;

  cdsGridParcelas.EmptyDataSet;
  while not qBuscaParcelas.Eof do
  begin
    if not(cdsGridParcelas.State=dsInsert) then
      cdsGridParcelas.Insert;
    cdsGridParcelasPAR_FIN_ID.Value     := qBuscaParcelasPAR_FIN_ID.Value;
    cdsGridParcelasPAR_NUMERO.Value     := qBuscaParcelasPAR_NUMERO.Value;
    cdsGridParcelasPAR_QUANTIDADE.Value := qBuscaParcelasPAR_QUANTIDADE.Value;
    cdsGridParcelasPAR_VENCTO.Value     := qBuscaParcelasPAR_VENCTO.Value;
    cdsGridParcelasPAR_VALOR.Value      := qBuscaParcelasPAR_VALOR.Value;
    cdsGridParcelasPAR_VALOR_PAGO.Value := qBuscaParcelasPAR_VALOR_PAGO.Value;
    cdsGridParcelasPAR_PAGO.Value       := qBuscaParcelasPAR_PAGO.Value;
    cdsGridParcelas.Post;
    qBuscaParcelas.Next;
  end;
end;

end.
