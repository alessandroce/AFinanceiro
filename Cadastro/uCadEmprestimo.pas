unit uCadEmprestimo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastro2, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, IBQuery, IBCustomDataSet, StdCtrls, ExtCtrls,
  Buttons, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls, wwdblook, Mask,
  DBCtrls, Menus, cxButtons, frxClass, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFCadEmprestimo = class(TFCadastro2)
    qConsultaEMPR_ID: TIntegerField;
    qConsultaEMPR_CREDOR_ID: TIntegerField;
    qConsultaEMPR_DESCRICAO: TIBStringField;
    qConsultaEMPR_DATA: TDateField;
    qConsultaEMPR_VALOR: TIBBCDField;
    qConsultaEMPR_DH_CA: TDateTimeField;
    qConsultaCREDOR: TIBStringField;
    qConsultaVALOR_PAGO: TIBBCDField;
    cxGrid1DBTableView1EMPR_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1EMPR_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1EMPR_VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1CREDOR: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_PAGO: TcxGridDBColumn;
    qConsultaPAGO: TIntegerField;
    cxGrid1DBTableView1PAGO: TcxGridDBColumn;
    rgSituacao: TRadioGroup;
    qCadastroEMPR_ID: TIntegerField;
    qCadastroEMPR_CREDOR_ID: TIntegerField;
    qCadastroEMPR_DESCRICAO: TIBStringField;
    qCadastroEMPR_DATA: TDateField;
    qCadastroEMPR_VALOR: TIBBCDField;
    qCadastroEMPR_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
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
    wwDBLookupCombo1: TwwDBLookupCombo;
    qCadastroEMPR_USU_ID: TIntegerField;
    qCadastroEMPR_INATIVO: TIBStringField;
    DBCheckBox1: TDBCheckBox;
    qConsultaSALDO: TIBBCDField;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    TBImprimir: TcxButton;
    frxReport1: TfrxReport;
    cxButton1: TcxButton;
    qCadastroEMPR_DEBCRED: TIBStringField;
    DBRadioGroup2: TDBRadioGroup;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label4: TLabel;
    qMotivo: TIBQuery;
    dsMotivo: TDataSource;
    qMotivoEMOT_ID: TIntegerField;
    qMotivoEMOT_DESCRICAO: TIBStringField;
    qMotivoEMOT_DH_CA: TDateTimeField;
    qCadastroEMPR_EMOT_ID: TIntegerField;
    edPesquisa: TEdit;
    btPesquisa: TBitBtn;
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure qCadastroAfterOpen(DataSet: TDataSet);
    procedure qCadastroAfterClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure rgSituacaoClick(Sender: TObject);
    procedure rgAtivoClick(Sender: TObject);
    procedure qCadastroBeforePost(DataSet: TDataSet);
    procedure TBImprimirClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure qCadastroNewRecord(DataSet: TDataSet);
    procedure btPesquisaClick(Sender: TObject);
    procedure edPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
    vPesquisa : Boolean;
    vSQL_TITULO : String;
    procedure getTitulos(pTitulo:String='');
  public
    { Public declarations }
    FPagarReceber : Integer;//0=pagar 1=receber
  end;

var
  FCadEmprestimo: TFCadEmprestimo;

const
  v_ativo : Array[0..2] of String = (' ','N','S');
  v_situacao : Array[0..2] of Integer = (1,0,3);



implementation

uses uFerramentas, uRelEmprestimo;

{$R *.dfm}

procedure TFCadEmprestimo.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  //if (AViewInfo.GridRecord.Values[cxGrid1DBTableView1PAGO.Index] = 0) then
  //  ACanvas.Font.Color := clRed;

  if (AViewInfo.GridRecord.Values[cxGrid1DBTableView1PAGO.Index] = 1) then
    ACanvas.Font.Color := clGreen;
end;

procedure TFCadEmprestimo.qCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qPessoa.Open;
  qMotivo.Open;
end;

procedure TFCadEmprestimo.qCadastroAfterClose(DataSet: TDataSet);
begin
  inherited;
  qPessoa.Close;
end;

procedure TFCadEmprestimo.getTitulos(pTitulo:String='');
const v_situacao : Array[0..2] of Integer = (0,1,3);
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  if pTitulo<>'' then
    qConsulta.SQL.Text := Format(vSQL_TITULO,[' AND upper(EMPR_DESCRICAO) LIKE ''%'+UpperCase(pTitulo)+'%'''])
  else
    qConsulta.SQL.Text := Format(vSQL_TITULO,['']);
  qConsulta.ParamByName('inativo1').asstring     := v_ativo[rgAtivo.itemindex];
  qConsulta.ParamByName('inativo2').asstring     := v_ativo[rgAtivo.itemindex];
  qConsulta.ParamByName('usuario').asinteger  := DadosLogin.Id;
  qConsulta.ParamByName('situacao1').asinteger := v_situacao[rgSituacao.ItemIndex];
  qConsulta.ParamByName('situacao2').asinteger := v_situacao[rgSituacao.ItemIndex];
  qConsulta.Open;
end;

procedure TFCadEmprestimo.FormShow(Sender: TObject);
begin
  inherited;
  vSQL_TITULO := qConsulta.SQL.Text+#13+' %s ';
  getTitulos;
end;

procedure TFCadEmprestimo.rgSituacaoClick(Sender: TObject);
begin
  inherited;
  getTitulos;
end;

procedure TFCadEmprestimo.rgAtivoClick(Sender: TObject);
begin
  inherited;
  getTitulos;
end;

procedure TFCadEmprestimo.qCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  qCadastroEMPR_USU_ID.AsInteger := DadosLogin.Id;
end;

procedure TFCadEmprestimo.TBImprimirClick(Sender: TObject);
begin
  inherited;
  //FRelEmprestimos := TFRelEmprestimos.Create(nil);
  //FRelEmprestimos.ShowModal;
  //FRelEmprestimos.Free;
  if ChamaRelatorioDesign(frxReport1,'AFINANCEIRO','relemprestimo') then
    ImprimirAlterarRelatorio(0,'relemprestimo','Relatorio de Emprestimos');
end;

procedure TFCadEmprestimo.cxButton1Click(Sender: TObject);
begin
  inherited;
  NaoDesenvolvidoAinda;
end;

procedure TFCadEmprestimo.qCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qCadastroEMPR_INATIVO.asstring := 'N';
  case FPagarReceber of
  0 : qCadastroEMPR_DEBCRED.AsString := 'D';
  1 : qCadastroEMPR_DEBCRED.AsString := 'C';
  end;
end;

procedure TFCadEmprestimo.btPesquisaClick(Sender: TObject);
begin
  inherited;
  vPesquisa := true;
  getTitulos(edPesquisa.Text);
end;

procedure TFCadEmprestimo.edPesquisaKeyPress(Sender: TObject;var Key: Char);
begin
  inherited;
  if key=#13 then
  begin
    key := #0;
    btPesquisa.Click;
  end;
end;

procedure TFCadEmprestimo.btCancelarClick(Sender: TObject);
begin
  inherited;
  if vPesquisa then
  begin
    edPesquisa.Clear;
    edPesquisa.SetFocus;
    getTitulos;
  end;
end;

end.
