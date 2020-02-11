unit uCadAquisicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastro2, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, IBQuery, IBCustomDataSet, StdCtrls, ExtCtrls,
  Buttons, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls, DBCtrls, Mask,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFCadAquisicao = class(TFCadastro2)
    rbAdquirido: TRadioButton;
    rbAquisicaoFutura: TRadioButton;
    rbTodos: TRadioButton;
    Bevel1: TBevel;
    qConsultaAQU_ID: TIntegerField;
    qConsultaAQU_TIPO: TIntegerField;
    qConsultaAQU_DESCRICAO: TIBStringField;
    qConsultaAQU_DATAAQUISICAO: TDateField;
    qConsultaAQU_DATADURACAO: TDateField;
    qConsultaAQU_DH_CA: TDateTimeField;
    qConsultaAQU_ADQUIRIDO: TIBStringField;
    qConsultaAQU_VALOR_CUSTO: TIBBCDField;
    qConsultaAQU_VALOR_PAGO: TIBBCDField;
    qConsultaAQU_USU_ID: TIntegerField;
    qConsultaAQU_INATIVO: TIBStringField;
    qTipo: TIBQuery;
    dsTipo: TDataSource;
    qTipoAQT_DESCRICAO: TIBStringField;
    qConsultaTIPO: TStringField;
    qTipoAQT_ID: TIntegerField;
    cxGrid1DBTableView1AQU_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1AQU_DATAAQUISICAO: TcxGridDBColumn;
    cxGrid1DBTableView1AQU_DATADURACAO: TcxGridDBColumn;
    cxGrid1DBTableView1AQU_ADQUIRIDO: TcxGridDBColumn;
    cxGrid1DBTableView1AQU_VALOR_CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1AQU_VALOR_PAGO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    qCadastroAQU_ID: TIntegerField;
    qCadastroAQU_TIPO: TIntegerField;
    qCadastroAQU_DESCRICAO: TIBStringField;
    qCadastroAQU_DATAAQUISICAO: TDateField;
    qCadastroAQU_DATADURACAO: TDateField;
    qCadastroAQU_DH_CA: TDateTimeField;
    qCadastroAQU_ADQUIRIDO: TIBStringField;
    qCadastroAQU_VALOR_CUSTO: TIBBCDField;
    qCadastroAQU_VALOR_PAGO: TIBBCDField;
    qCadastroAQU_USU_ID: TIntegerField;
    qCadastroAQU_INATIVO: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    qCadastroAQU_DATA_CAD: TDateField;
    qConsultaAQU_DATA_CAD: TDateField;
    cxGrid1DBTableView1AQU_DATA_CAD: TcxGridDBColumn;
    procedure qConsultaAfterOpen(DataSet: TDataSet);
    procedure rbTodosClick(Sender: TObject);
    procedure rbAdquiridoClick(Sender: TObject);
    procedure rbAquisicaoFuturaClick(Sender: TObject);
    procedure rgAtivoClick(Sender: TObject);
    procedure qCadastroNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure getDados;
  public
    { Public declarations }
  end;

var
  FCadAquisicao: TFCadAquisicao;
const
  v_ativo : Array[0..2] of String = (' ','N','S');

implementation

uses uDMConexao, uFerramentas;

{$R *.dfm}

procedure TFCadAquisicao.getDados;
var v_adquirido : String;
begin
  if rbTodos.Checked then
    v_adquirido := ' '
  else
  if rbAdquirido.Checked then
    v_adquirido := 'S'
  else
  if rbAquisicaoFutura.Checked then
    v_adquirido := 'N';
  qConsulta.Close;
  qConsulta.ParamByName('usu_id').asInteger   := DadosLogin.Id;
  qConsulta.ParamByName('adquirido').asString := v_adquirido;
  qConsulta.ParamByName('inativo').asString   := v_ativo[rgAtivo.ItemIndex];
  qConsulta.Open;
end;

procedure TFCadAquisicao.qConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qTipo.Open;
  qTipo.Last;
  qTipo.First;
end;

procedure TFCadAquisicao.rbTodosClick(Sender: TObject);
begin
  inherited;
  getDados;
end;

procedure TFCadAquisicao.rbAdquiridoClick(Sender: TObject);
begin
  inherited;
  getDados;
end;

procedure TFCadAquisicao.rbAquisicaoFuturaClick(Sender: TObject);
begin
  inherited;
  getDados;
end;

procedure TFCadAquisicao.rgAtivoClick(Sender: TObject);
begin
  inherited;
  getDados;
end;

procedure TFCadAquisicao.qCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qCadastroAQU_USU_ID.asInteger := DadosLogin.Id;
  qCadastroAQU_DATA_CAD.AsDateTime := Now;
end;

procedure TFCadAquisicao.FormShow(Sender: TObject);
begin
  inherited;
  getDados;
end;

end.
