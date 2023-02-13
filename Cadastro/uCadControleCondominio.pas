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
  Spin, ComObj, wwdblook;

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
    qClassif: TIBQuery;
    dsClassif: TDataSource;
    qClassifCNT_ID: TIntegerField;
    qClassifCNT_DESCRICAO: TIBStringField;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label5: TLabel;
    qCadastroCON_CLASSIF: TIntegerField;
    qCadastroCON_VENCTO: TDateField;
    qConsultaCLASSIF: TIBStringField;
    cxGrid1DBTableView1CLASSIF: TcxGridDBColumn;
    pnmensagem: TPanel;
    mmensagem: TMemo;
    lblmensagem: TLabel;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    cxButton2: TcxButton;
    Label6: TLabel;
    ComboBox1: TComboBox;
    qComboMes: TIBQuery;
    qComboMesANO_INI: TIntegerField;
    qComboMesANO_FIM: TLargeintField;
    ComboBox2: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    procedure TBImprimirClick(Sender: TObject);
    procedure qCadastroNewRecord(DataSet: TDataSet);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure qCadastroBeforePost(DataSet: TDataSet);
    procedure ImportarExcel;
    function getMesSigla(pMes:String):Integer;
    procedure cxButton1Click(Sender: TObject);
    procedure qCadastroAfterOpen(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
    procedure getComboMesAno;
    procedure getFiltro;
  public
    { Public declarations }
  end;

var
  FCadControleCondominio: TFCadControleCondominio;
const
  sDescricaoMes : Array[1..12] of String = ('JANEIRO','FEVEREIRO','MARÇO','ABRIL','MAIO','JUNHO',
                                            'JULHO','AGOSTO','SETEMBRO','OUTUBRO','NOVEMBRO','DEZEMBRO');

implementation

uses uFerramentas, uDMConexao, DateUtils;


{$R *.dfm}

procedure TFCadControleCondominio.TBImprimirClick(Sender: TObject);
begin
  inherited;
  if ChamaRelatorioDesign(frxReport1,'AFINANCEIRO','relcontrolecondominio') then
    ImprimirAlterarRelatorio(0,'relcontrolecondominio','Relatorio de Controle Condomínio');
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
  sMensagem : String;
begin
  if OpenDialog1.Execute then
  begin
    try
     i := 1;
     planilha:= CreateOleObject('Excel.Application');
     planilha.WorkBooks.open(OpenDialog1.FileName);
     sheet:= planilha.WorkSheets[1];
     sMensagem := '';
     mmensagem.Lines.Clear;


    if not(DMConexao.IBTransacao.InTransaction) then
      DMConexao.IBTransacao.StartTransaction;


     while Sheet.Cells[i, 2].Value <> '' do
     begin

       if trim(sheet.cells[i, 1].Text) = '' then
         sMensagem := sMensagem + 'ANO,';
       if trim(sheet.cells[i, 2].Text) = '' then
         sMensagem := sMensagem + 'MESREF,';
       if trim(sheet.cells[i, 3].Text) = '' then
         sMensagem := sMensagem + 'DESCRICAO,';
       if trim(sheet.cells[i, 4].Text) = '' then
         sMensagem := sMensagem + 'VALOR,';
       if trim(sheet.cells[i, 5].Text) = '' then
         sMensagem := sMensagem + 'CLASSIFICACAO,';

       if sMensagem<>'' then
       begin
         mmensagem.Lines.Add('Linha ' + IntToStr(i) + ' - ' +
                             ' com os dados: ' + sMensagem +
                             ' não pôde ser importada. ');
       end
       else
       begin
         qCadastro.Close;
         qCadastro.ParamByName('con_id').asInteger :=0;
         qCadastro.Open;
         qCadastro.Insert;
         //qCadastroCON_ID.AsInteger       := 0;
         {ANO;MESREF;DESCRICAO;VALOR;CLASSIFICACAO}
         qCadastroCON_ANO.AsInteger      := StrToInt(trim(sheet.cells[i, 1].Text));
         qCadastroCON_MESREF.AsInteger   := getMesSigla(trim(sheet.cells[i, 2].Text));
         qCadastroCON_DESCRICAO.AsString := trim(sheet.cells[i, 3].Text);
         qCadastroCON_VALOR.AsFloat      := StrToFloat(trim(sheet.cells[i, 4].Text));
         qCadastroCON_CLASSIF.AsFloat    := StrToFloat(trim(sheet.cells[i, 5].Text));
         qCadastroCON_DH_CA.AsDateTime   := Now;
         qCadastroCON_USU_ID.AsInteger   := DadosLogin.Id;
         qCadastro.Post;
       end;
       sMensagem := '';
       inc(i);
     end;
     planilha.WorkBooks.Close;

     qConsulta.Close;
     qConsulta.Open;
     if sMensagem<>'' then
     begin
       pnmensagem.Visible := true;
     end
     else
     begin
       DMConexao.IBTransacao.Commit;
       ShowMessage('Importação finalizado com sucesso.');
     end;
    except
      on e : Exception do
      begin
        DMConexao.IBTransacao.Rollback;
        ShowMessage('Erro. ' + e.Message);
      end;
    end;
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

procedure TFCadControleCondominio.qCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qClassif.Close;
  qClassif.Open;
end;

procedure TFCadControleCondominio.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnmensagem.Visible := false;
end;

procedure TFCadControleCondominio.cxButton2Click(Sender: TObject);
begin
  inherited;
   pnmensagem.Visible := false;
   mmensagem.Lines.Clear;
   mmensagem.Lines.Add('');
   mmensagem.Lines.Add('Arquivo deve ser em Excel (.xlsx) com as seguintes colunas');
   mmensagem.Lines.Add('--');
   mmensagem.Lines.Add('ANO;MESREF;DESCRICAO;VALOR;CLASSIFICACAO;');
   mmensagem.Lines.Add('2022;JAN;DESCRICAO;0,00;1;');
   mmensagem.Lines.Add('2022;FEV;DESCRICAO;0,00;1;');
   mmensagem.Lines.Add('2022;MAR;DESCRICAO;0,00;1;');
   mmensagem.Lines.Add('--');
   mmensagem.Lines.Add('');
   pnmensagem.Visible := true;
end;

procedure TFCadControleCondominio.getComboMesAno;
var i : Integer;
    cMES : String;
    item, ItemIndex : Integer;
begin
  qComboMes.Close;
  qComboMes.Open;
  ComboBox1.Clear;
  item := -1;
  ItemIndex := -1;
  ComboBox1.Items.Add('Todos');
  for i := qComboMesANO_INI.AsInteger to qComboMesANO_FIM.AsInteger do
  begin
    Inc(item);
    if i = YearOf(Date) then
      ItemIndex := item;
    ComboBox1.Items.Add(IntToStr(i));
  end;
  ComboBox1.ItemIndex := ItemIndex + 1;


  {--}
  item := -1;
  ItemIndex := -1;
  ComboBox2.Clear;
  ComboBox2.Items.Add('Todos');
  for i := 1 to 12 do
  begin
    if i < 10 then
      cMES := '0' + IntToStr(i)
    else
      cMES := IntToStr(i);
    Inc(item);
    if i = MonthOf(Date) then
      ItemIndex := item;
    ComboBox2.Items.Add(cMES);
  end;
  ComboBox2.ItemIndex := ItemIndex + 1;
  {--}
end;

procedure TFCadControleCondominio.FormShow(Sender: TObject);
begin
  inherited;
  getComboMesAno;
  getFiltro;
end;

procedure TFCadControleCondominio.getFiltro;
begin
  qConsulta.Close;
  if ComboBox1.ItemIndex > 0 then
    qConsulta.SQL[06] := '   and (condominio.CON_ANO = '+ComboBox1.Text+' or 0 = '+ComboBox1.Text+') '
  else
    qConsulta.SQL[06] := '';

  if ComboBox2.ItemIndex > 0 then
    qConsulta.SQL[07] := '   and (condominio.CON_MESREF = '+ComboBox2.Text+' or 0 = '+ComboBox2.Text+') '
  else
    qConsulta.SQL[07] := '';
  qConsulta.Open;
end;

procedure TFCadControleCondominio.ComboBox1Change(Sender: TObject);
begin
  inherited;
  getFiltro;
end;

procedure TFCadControleCondominio.ComboBox2Change(Sender: TObject);
begin
  inherited;
  getFiltro;
end;

end.
