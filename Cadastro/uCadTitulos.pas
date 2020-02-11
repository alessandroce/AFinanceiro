unit uCadTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, IBQuery, IBCustomDataSet, StdCtrls,
  wwdbdatetimepicker, Buttons, Mask, DBCtrls, wwdblook, Spin, Menus,
  cxCheckBox;

type
  TFCadTitulos = class(TForm)
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    tsConsulta: TTabSheet;
    tsCadastro: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    qCadastro: TIBDataSet;
    qConsulta: TIBQuery;
    dsCadastro: TDataSource;
    dsConsulta: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    qCadastroFIN_ID: TIntegerField;
    qCadastroFIN_DATA: TDateTimeField;
    qCadastroFIN_DESCRICAO: TIBStringField;
    qCadastroFIN_PES_ID: TIntegerField;
    qCadastroFIN_CAT_ID: TIntegerField;
    Bevel6: TBevel;
    Label10: TLabel;
    qParcelas: TIBDataSet;
    dsParcelas: TDataSource;
    btNovo: TBitBtn;
    btAlterar: TBitBtn;
    btApagar: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    PageControl2: TPageControl;
    tsParcelas: TTabSheet;
    tsContratos: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    edQuant: TEdit;
    edValor: TEdit;
    BitBtn2: TBitBtn;
    qCadastroFIN_DEBCRED: TIBStringField;
    qParcelasPAR_ID: TIntegerField;
    qParcelasPAR_FIN_ID: TIntegerField;
    qParcelasPAR_NUMERO: TIntegerField;
    qParcelasPAR_QUANTIDADE: TIntegerField;
    qParcelasPAR_VENCTO: TDateField;
    qParcelasPAR_VALOR: TIBBCDField;
    qParcelasPAR_VALOR_PAGO: TIBBCDField;
    qParcelasPAR_PAGO: TIntegerField;
    cxGrid4DBTableView1PAR_NUMERO: TcxGridDBColumn;
    cxGrid4DBTableView1PAR_QUANTIDADE: TcxGridDBColumn;
    cxGrid4DBTableView1PAR_VENCTO: TcxGridDBColumn;
    cxGrid4DBTableView1PAR_VALOR: TcxGridDBColumn;
    cxGrid4DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn;
    cxGrid4DBTableView1PAR_PAGO: TcxGridDBColumn;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label6: TLabel;
    qPessoa: TIBQuery;
    dsPessoa: TDataSource;
    qPessoaPES_ID: TIntegerField;
    qPessoaPES_TIPO: TIntegerField;
    qPessoaPES_TIPO_PESSOA: TIntegerField;
    qPessoaPES_NOME_RAZAO: TIBStringField;
    qPessoaPES_NOME_FANTASIA: TIBStringField;
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
    qCategoria: TIBQuery;
    dsCategoria: TDataSource;
    qCategoriaCAT_ID: TIntegerField;
    qCategoriaCAT_DESCRICAO: TIBStringField;
    qCategoriaCAT_CATG_ID: TIntegerField;
    qCategoriaG: TIBQuery;
    dsCategoriaG: TDataSource;
    qCategoriaGCATG_ID: TIntegerField;
    qCategoriaGCATG_DESCRICAO: TIBStringField;
    Label7: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label8: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    qCadastroFIN_TIPO_DC: TIntegerField;
    btSair: TBitBtn;
    qAVencer: TIBQuery;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    DateField1: TDateField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IntegerField1: TIntegerField;
    dsAVencer: TDataSource;
    ComboBox2: TComboBox;
    Label14: TLabel;
    SpinEdit2: TSpinEdit;
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
    cxGrid1DBTableView1FIN_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1PAR_PAGO: TcxGridDBColumn;
    cxGrid1DBTableView1N_PARCELA: TcxGridDBColumn;
    cxGrid1DBTableView1PAR_VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1PAR_VALOR_PAGO: TcxGridDBColumn;
    cxGrid1DBTableView1PAR_VENCTO: TcxGridDBColumn;
    BitBtn3: TBitBtn;
    Panel4: TPanel;
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure qCadastroAfterOpen(DataSet: TDataSet);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure edQuantKeyPress(Sender: TObject; var Key: Char);
    procedure btSairClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    function Continua(pContinua:Boolean;pTexto:String=''):Boolean;
  public
    { Public declarations }
  end;

var
  FCadTitulos: TFCadTitulos;

implementation

uses uDMConexao, DateUtils, uTitulosPeriodo, uTitulosAPagar;

{$R *.dfm}

procedure TFCadTitulos.FormShow(Sender: TObject);
begin
  ComboBox2.ItemIndex := MonthOf(Now)-1;
  SpinEdit2.Value := YearOf(Now);
  BitBtn3.Click;
  PageControl1.ActivePageIndex := 0;

end;

procedure TFCadTitulos.btNovoClick(Sender: TObject);
begin
  qCadastro.Open;
  qCadastro.Insert;
  PageControl1.ActivePageIndex := 1;
end;

procedure TFCadTitulos.qCadastroAfterOpen(DataSet: TDataSet);
begin
  qPessoa.Close;
  qPessoa.Open;

  qCategoriaG.Close;
  qCategoriaG.Open;

  qCategoria.Close;
  qCategoria.Open;

  qParcelas.Open;
end;

procedure TFCadTitulos.btAlterarClick(Sender: TObject);
begin
  qCadastro.Close;
  qCadastro.ParamByName('FIN_ID').value := qConsultaFIN_ID.value;
  qCadastro.Open;
  qCadastro.Edit;
  PageControl1.ActivePageIndex := 1;
end;

procedure TFCadTitulos.btCancelarClick(Sender: TObject);
begin
  qCadastro.Cancel;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFCadTitulos.btGravarClick(Sender: TObject);
begin
  try
    if not(DMConexao.IBTransacao.InTransaction) then
      DMConexao.IBTransacao.StartTransaction;
    qCadastro.Post;
    DMConexao.IBTransacao.Commit;
    PageControl1.ActivePageIndex := 0;
    ShowMessage('Finalizado com sucesso.');
  except
    on e : exception do
    begin
      DMConexao.IBTransacao.Rollback;
      ShowMessage('Erro: '+e.Message);
    end;
  end;
end;

procedure TFCadTitulos.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btAlterar.Click;
end;

procedure TFCadTitulos.BitBtn2Click(Sender: TObject);
begin
  if not(Continua(edQuant.Text<>'','Informe Quantidade')) then
    Exit;
  if not(Continua(edQuant.Text<>'','Quantidade MAIOR que zero')) then
    Exit;
  if not(Continua(edValor.Text<>'','Informe Valor')) then
    Exit;
  if (StrToInt(edQuant.Text)=1) then
  begin

  end;
  if (StrToInt(edQuant.Text)>1) then
  begin

  end;
end;

function TFCadTitulos.Continua(pContinua: Boolean; pTexto: String): Boolean;
begin
  Result := pContinua;
  if not(Result) then
    if pTexto<>'' then
      ShowMessage(pTexto);
end;

procedure TFCadTitulos.edQuantKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9',#8]) then
    key:=#0;
end;

procedure TFCadTitulos.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFCadTitulos.BitBtn3Click(Sender: TObject);
begin
  qConsulta.Close;
  qConsulta.ParamByName('vmes').asinteger := ComboBox2.ItemIndex+1;
  qConsulta.ParamByName('vano').asinteger := SpinEdit2.Value;
  qConsulta.Open;
end;

procedure TFCadTitulos.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if(AViewInfo.GridRecord.Values[cxGrid1DBTableView1PAR_PAGO.Index] = 0) then
    ACanvas.Font.Color := clRed;
  if(AViewInfo.GridRecord.Values[cxGrid1DBTableView1PAR_PAGO.Index] = 1) then
    ACanvas.Font.Color := clGreen;
end;

end.
