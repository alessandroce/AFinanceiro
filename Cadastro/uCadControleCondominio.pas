unit uCadControleCondominio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastro2, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, IBCustomDataSet, IBQuery, StdCtrls,
  ExtCtrls, Buttons, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ComCtrls, Mask, DBCtrls, Menus, cxButtons, frxClass, frxIBXComponents,
  Spin, ComObj;

type
  TFCadControleCondominio = class(TFCadastro2)
    qConsultaCON_ID: TIntegerField;
    qConsultaCON_ANO: TIntegerField;
    qConsultaCON_MESREF: TIntegerField;
    qConsultaCON_DESCRICAO: TIBStringField;
    qConsultaCON_VALOR: TIBBCDField;
    qConsultaCON_DH_CA: TDateTimeField;
    cxGrid1DBTableView1CON_ID: TcxGridDBColumn;
    cxGrid1DBTableView1CON_ANO: TcxGridDBColumn;
    cxGrid1DBTableView1CON_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CON_VALOR: TcxGridDBColumn;
    qCadastroCON_ID: TIntegerField;
    qCadastroCON_ANO: TIntegerField;
    qCadastroCON_MESREF: TIntegerField;
    qCadastroCON_DESCRICAO: TIBStringField;
    qCadastroCON_VALOR: TIBBCDField;
    qCadastroCON_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    cbMes: TComboBox;
    TBImprimir: TcxButton;
    frxReport1: TfrxReport;
    frxIBXComponents1: TfrxIBXComponents;
    qCadastroCON_USU_ID: TIntegerField;
    qConsultaCON_USU_ID: TIntegerField;
    qCadastroMES: TStringField;
    qConsultaMES: TIBStringField;
    cxGrid1DBTableView1MES: TcxGridDBColumn;
    cxButton1: TcxButton;
    OpenDialog1: TOpenDialog;
    procedure TBImprimirClick(Sender: TObject);
    procedure qCadastroNewRecord(DataSet: TDataSet);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure qCadastroBeforePost(DataSet: TDataSet);
    procedure ImportarExcel;
    function getMesSigla(pMes:String):Integer;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadControleCondominio: TFCadControleCondominio;
const
  sDescricaoMes : Array[1..12] of String = ('JANEIRO','FEVEREIRO','MAR�O','ABRIL','MAIO','JUNHO',
                                            'JULHO','AGOSTO','SETEMBRO','OUTUBRO','NOVEMBRO','DEZEMBRO');

implementation

uses uFerramentas, uDMConexao, DateUtils;


{$R *.dfm}

procedure TFCadControleCondominio.TBImprimirClick(Sender: TObject);
begin
  inherited;
  if ChamaRelatorioDesign(frxReport1,'AFINANCEIRO','relcontrolecondominio') then
    ImprimirAlterarRelatorio(0,'relcontrolecondominio','Relatorio de Controle Condom�nio');
end;

procedure TFCadControleCondominio.qCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qCadastroCON_USU_ID.AsInteger := DadosLogin.Id;
  qCadastroCON_ANO.AsInteger    := YearOf(Now);
  qCadastroCON_MESREF.AsInteger := MonthOf(Now);
end;

procedure TFCadControleCondominio.dsCadastroDataChange(Sender: TObject;Field: TField);
begin
  inherited;
  cbMes.ItemIndex := (qCadastroCON_MESREF.AsInteger-1);
end;

procedure TFCadControleCondominio.qCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  qCadastroCON_MESREF.asInteger := cbMes.ItemIndex+1;
end;

procedure TFCadControleCondominio.ImportarExcel;
var
  planilha, sheet: OleVariant;
  i, j, linha, coluna: Integer;
  qParcela : String;
  iMes : Integer;
begin
  if OpenDialog1.Execute then
  begin
     i := 1;
     planilha:= CreateOleObject('Excel.Application');
     planilha.WorkBooks.open(OpenDialog1.FileName);
     sheet:= planilha.WorkSheets[1];
     while Sheet.Cells[i, 2].Value <> '' do
     begin
       qCadastro.Close;
       qCadastro.ParamByName('con_id').asInteger :=0;
       qCadastro.Open;
       qCadastro.Insert;
       //qCadastroCON_ID.AsInteger       := 0;
       qCadastroCON_ANO.AsInteger      := StrToInt(trim(sheet.cells[i, 1].Text));
       qCadastroCON_MESREF.AsInteger   := getMesSigla(trim(sheet.cells[i, 2].Text));
       qCadastroCON_DESCRICAO.AsString := trim(sheet.cells[i, 3].Text);
       qCadastroCON_VALOR.AsFloat      := StrToFloat(trim(sheet.cells[i, 4].Text));
       qCadastroCON_DH_CA.AsDateTime   := 1;
       qCadastroCON_USU_ID.AsInteger   := 1;
       qCadastro.Post;
       inc(i);
     end;
     planilha.WorkBooks.Close;

     qConsulta.Close;
     qConsulta.Open;

     ShowMessage('Importa��o finalizado com sucesso.');

  end;
end;

function TFCadControleCondominio.getMesSigla(pMes:String): Integer;
begin
  if pMes='' then
    Result := 0
  else
  if pMes='JAN' then
    Result := 1
  else
  if pMes='FEV' then
    Result := 2
  else
  if pMes='MAR' then
    Result := 3
  else
  if pMes='ABR' then
    Result := 4
  else
  if pMes='MAI' then
    Result := 5
  else
  if pMes='JUN' then
    Result := 6
  else
  if pMes='JUL' then
    Result := 7
  else
  if pMes='AGO' then
    Result := 8
  else
  if pMes='SET' then
    Result := 9
  else
  if pMes='OUT' then
    Result := 10
  else
  if pMes='NOV' then
    Result := 11
  else
  if pMes='DEZ' then
    Result := 12;
end;

procedure TFCadControleCondominio.cxButton1Click(Sender: TObject);
begin
  inherited;
  ImportarExcel;
end;

end.
