unit uDetalheParcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons, ExtCtrls, Mask,
  DBCtrls, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  IBCustomDataSet, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ComCtrls, cxLookAndFeelPainters, cxButtons, IBQuery, wwdblook,
  cxLookAndFeels, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  Menus, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, ActnList, ComObj;

type
  TTxt = record
    Data : String[10];
    Descricao : String[89];
    Valor : String[9];
    Flag : String[4];//centro custo
  end;
  TFDetalheParcelas = class(TForm)
    ibDetalheParcelas: TIBDataSet;
    dsDetalheParcelas: TDataSource;
    StatusBar1: TStatusBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DET_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1DET_DATA_DOC: TcxGridDBColumn;
    cxGrid1DBTableView1DET_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1DET_VALOR: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Panel2: TPanel;
    btbar1Novo: TcxButton;
    btbar1Alterar: TcxButton;
    btbar1Cancelar: TcxButton;
    btbar1Salvar: TcxButton;
    btbar1Apagar: TcxButton;
    btbar1Sair: TcxButton;
    ibDetalheParcelasDET_ID: TIntegerField;
    ibDetalheParcelasDET_PAR_ID: TIntegerField;
    ibDetalheParcelasDET_DATA: TDateField;
    ibDetalheParcelasDET_DATA_DOC: TDateField;
    ibDetalheParcelasDET_DESCRICAO: TIBStringField;
    ibDetalheParcelasDET_VALOR: TIBBCDField;
    ibDetalheParcelasDET_DH_CA: TDateTimeField;
    ibDetalheParcelasDESC_PARCELA: TIBStringField;
    ibDetalheParcelasPAR_OBSERVACAO: TIBStringField;
    ibDetalheParcelasDET_PAGO: TIntegerField;
    ibDetalheParcelasDET_DATAPGTO: TDateTimeField;
    ibDetalheParcelasDET_FLAG: TIntegerField;
    ibDetalheParcelasDESCRICAO: TIBStringField;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label8: TLabel;
    qCentroCusto: TIBQuery;
    qCentroCustoCCT_ID: TIntegerField;
    qCentroCustoCCT_DESCRICAO: TIBStringField;
    dsCentroCusto: TDataSource;
    ibDetalheParcelasDET_NUMERO: TIntegerField;
    ibDetalheParcelasDET_QUANTIDADE: TIntegerField;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    ibDetalheParcelasDESC_CCUSTO: TIBStringField;
    cxGrid1DBTableView1DESC_CCUSTO: TcxGridDBColumn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    cxGrid1DBTableView1DET_PAGO: TcxGridDBColumn;
    DBCheckBox1: TDBCheckBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label10: TLabel;
    ibDetalheParcelasDET_DATAVENCTO: TDateField;
    ibDetalheParcelasDET_EMPRESTIMO_ID: TIntegerField;
    qEmprestimo: TIBQuery;
    dsEmprestimo: TDataSource;
    qEmprestimoEMPR_ID: TIntegerField;
    qEmprestimoEMPR_DESCRICAO: TIBStringField;
    qEmprestimoEMPR_DATA: TDateField;
    qEmprestimoEMPR_VALOR: TIBBCDField;
    qEmprestimoCREDOR: TIBStringField;
    ActionListBotao: TActionList;
    bNovo: TAction;
    bAlterar: TAction;
    bCancelar: TAction;
    bGravar: TAction;
    bExcluir: TAction;
    cxButton1: TcxButton;
    OpenDialog1: TOpenDialog;
    cxButton2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btbar1SairClick(Sender: TObject);
    procedure ibDetalheParcelasNewRecord(DataSet: TDataSet);
    procedure wwDBLookupCombo1Change(Sender: TObject);
    procedure bNovoExecute(Sender: TObject);
    procedure bAlterarExecute(Sender: TObject);
    procedure bCancelarExecute(Sender: TObject);
    procedure bGravarExecute(Sender: TObject);
    procedure bExcluirExecute(Sender: TObject);
    procedure dsDetalheParcelasStateChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ibDetalheParcelasAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure botao(tabela:TIBDataset);
    procedure ImportarExcel;
    procedure ImportarTxt;
    procedure ImportarCSV;
  public
    { Public declarations }
    FIdParcela : Integer;
    FTotalValorParcelas : Double;
  end;

var
  FDetalheParcelas: TFDetalheParcelas;

implementation

uses uFerramentas, uDMConexao, uClassAvisos;

{$R *.dfm}

procedure TFDetalheParcelas.FormShow(Sender: TObject);
begin
  ibDetalheParcelas.Close;
  ibDetalheParcelas.ParamByName('par_id').asinteger := FIdParcela;
  ibDetalheParcelas.Open;

  qCentroCusto.Open;

  qEmprestimo.Close;
  qEmprestimo.ParamByName('p_usuario').asInteger := DadosLogin.Id;
  qEmprestimo.Open;
  
end;

procedure TFDetalheParcelas.btbar1SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFDetalheParcelas.ibDetalheParcelasNewRecord(DataSet: TDataSet);
begin
  ibDetalheParcelasDET_DATA.AsDateTime := Date;
  ibDetalheParcelasDET_DATA_DOC.AsDateTime := Date;
end;

procedure TFDetalheParcelas.wwDBLookupCombo1Change(Sender: TObject);
begin
  if (ibDetalheParcelas.State in [dsEdit,dsInsert]) then
  begin
    ibDetalheParcelasDET_DESCRICAO.asString := qEmprestimoEMPR_DESCRICAO.asString;
    ibDetalheParcelasDET_NUMERO.asInteger := 1;
    ibDetalheParcelasDET_QUANTIDADE.asInteger := 1;
    ibDetalheParcelasDET_VALOR.asFloat := qEmprestimoEMPR_VALOR.asFloat;
  end;
end;

procedure TFDetalheParcelas.bNovoExecute(Sender: TObject);
begin
  ibDetalheParcelas.Insert;
  DBEdit2.SetFocus;
end;

procedure TFDetalheParcelas.bAlterarExecute(Sender: TObject);
begin
  ibDetalheParcelas.Edit;
end;

procedure TFDetalheParcelas.bCancelarExecute(Sender: TObject);
begin
  ibDetalheParcelas.Cancel;
end;

procedure TFDetalheParcelas.bGravarExecute(Sender: TObject);
begin
  //if Duvida('Deseja gravar as alterações?') then
  //begin
    try
      ibDetalheParcelas.FieldByName('DET_PAR_ID').asinteger := FIdParcela;
      ibDetalheParcelas.Post;
      //Aviso('Registro gravado com sucesso');
    except
      on e : Exception do
      begin
        ibDetalheParcelas.Cancel;
        Aviso('Erro ao gravar '+e.Message);
      end;
    end;
  //end;
end;

procedure TFDetalheParcelas.bExcluirExecute(Sender: TObject);
begin
  if Duvida('Deseja excluir este registro?') then
  begin
    try
      ibDetalheParcelas.Delete;
      //Aviso('Registro excluído com sucesso');
    except
      on e : Exception do
      begin
        ibDetalheParcelas.Cancel;
        Aviso('Erro ao excluir '+e.Message);
      end;
    end;
  end;
end;

procedure TFDetalheParcelas.botao(tabela: TIBDataset);
begin
  bNovo.Enabled     := (tabela.State=dsBrowse);
  bAlterar.Enabled  := (tabela.State=dsBrowse);
  bCancelar.Enabled := (tabela.State in [dsEdit,dsInsert]);
  bGravar.Enabled   := (tabela.State in [dsEdit,dsInsert]);
  bExcluir.Enabled  := ((tabela.State=dsBrowse) and (tabela.RecordCount>0));
end;

procedure TFDetalheParcelas.dsDetalheParcelasStateChange(Sender: TObject);
begin
  botao(ibDetalheParcelas);
end;

procedure TFDetalheParcelas.cxButton1Click(Sender: TObject);
begin
  //ImportarTxt;
  ImportarExcel;
end;

procedure TFDetalheParcelas.ImportarTxt;
var Txt : TTxt;
    arq : TextFile;
    Linha : String;
  function troca(pTxt:String):String;
  begin
    Result := StringReplace(pTxt,'_',' ',[rfReplaceAll])
  end;

  procedure getTexto(pLinha:String);
  var sub : String;
  begin
    sub := StringReplace(pLinha,' ','_',[rfReplaceAll]);
    Txt.Data      := troca(copy(sub,1,10));
    Txt.Descricao := copy(sub,11,76);
    Txt.Descricao := troca(Txt.Descricao);
    Txt.Flag      := troca(copy(sub,87,90));
    Txt.Valor     := troca(copy(sub,91,100));

  end;

begin
  if OpenDialog1.Execute then
  begin
    //AssignFile(arq, 'D:\Projetos\AFinanceiro\trunk\Importacao\Nov19.txt');
    AssignFile(arq, OpenDialog1.FileName);
    {$I-}         // desativa a diretiva de Input
    Reset(arq);   // [ 3 ] Abre o arquivo texto para leitura
    {$I+}         // ativa a diretiva de Input
    if (IOResult <> 0) then
      ShowMessage('Erro na abertura do arquivo !!!')
    else
    begin
      while (not eof(arq)) do
      begin
       readln(arq, Linha);
       getTexto(Linha);
       ibDetalheParcelas.Close;
       ibDetalheParcelas.ParamByName('par_id').asInteger :=0;
       ibDetalheParcelas.Open;
       ibDetalheParcelas.Insert;
       ibDetalheParcelasDET_PAR_ID.AsInteger     := FIdParcela;
       ibDetalheParcelasDET_DATA.AsDateTime      := now;
       ibDetalheParcelasDET_DATA_DOC.AsDateTime  := StrToDate(trim(txt.Data));
       ibDetalheParcelasDET_FLAG.AsInteger       := StrToInt(trim(txt.Flag));
       ibDetalheParcelasDET_DESCRICAO.AsString   := trim(txt.Descricao);
       ibDetalheParcelasDET_NUMERO.AsInteger     := 1;
       ibDetalheParcelasDET_QUANTIDADE.AsInteger := 1;
       ibDetalheParcelasDET_VALOR.AsFloat        := StrToFloat(trim(txt.Valor));
       ibDetalheParcelas.Post;
      end;
      CloseFile(arq);

      ibDetalheParcelas.Close;
      ibDetalheParcelas.ParamByName('par_id').asinteger := FIdParcela;
      ibDetalheParcelas.Open;

      ShowMessage('Importação finalizado com sucesso.');
   end;
  end;

end;

procedure TFDetalheParcelas.ImportarExcel;
var
  planilha, sheet: OleVariant;
  i, j, linha, coluna: Integer;
  qParcela : String;
begin
  if OpenDialog1.Execute then
  begin
     i := 1;
     planilha:= CreateOleObject('Excel.Application');
     planilha.WorkBooks.open(OpenDialog1.FileName);
     sheet:= planilha.WorkSheets[1];
     while Sheet.Cells[i, 2].Value <> '' do
     begin
(*
       //quantidade de parcelas
       qParcela := Sheet.Cells[i, 5].Value;
       if (qParcela <> '') then
       begin
         if (StrToIntDef(qParcela,0)>0) then
         begin
           for j := 1 to StrToIntDef(qParcela,0) do
           begin
             ibDetalheParcelas.Close;
             ibDetalheParcelas.ParamByName('par_id').asInteger :=0;
             ibDetalheParcelas.Open;
             ibDetalheParcelas.Insert;
             ibDetalheParcelasDET_PAR_ID.AsInteger     := FIdParcela;
             ibDetalheParcelasDET_DATA.AsDateTime      := IncMonth(now,j);
             ibDetalheParcelasDET_DATA_DOC.AsDateTime  := StrToDate(trim(sheet.cells[i, 1].Text));
             ibDetalheParcelasDET_FLAG.AsInteger       := StrToInt(trim(sheet.cells[i, 3].Text));
             ibDetalheParcelasDET_DESCRICAO.AsString   := trim(sheet.cells[i, 2].Text)+' '+IntToStr(j)+'/'+qParcela;
             ibDetalheParcelasDET_NUMERO.AsInteger     := j;
             ibDetalheParcelasDET_QUANTIDADE.AsInteger := StrToInt(qParcela);
             ibDetalheParcelasDET_VALOR.AsFloat        := StrToFloat(trim(sheet.cells[i, 4].Text));
             ibDetalheParcelas.Post;
           end;
         end;
       end
       else
       begin
*)
         if uppercase(trim(sheet.cells[i, 5].Text)) <> 'X' then
         begin
         ibDetalheParcelas.Close;
         ibDetalheParcelas.ParamByName('par_id').asInteger :=0;
         ibDetalheParcelas.Open;
         ibDetalheParcelas.Insert;
         ibDetalheParcelasDET_PAR_ID.AsInteger     := FIdParcela;
         ibDetalheParcelasDET_DATA.AsDateTime      := now;
         ibDetalheParcelasDET_DATA_DOC.AsDateTime  := StrToDate(trim(sheet.cells[i, 1].Text));
         ibDetalheParcelasDET_FLAG.AsInteger       := StrToInt(trim(sheet.cells[i, 3].Text));
         ibDetalheParcelasDET_DESCRICAO.AsString   := trim(sheet.cells[i, 2].Text);
         ibDetalheParcelasDET_NUMERO.AsInteger     := 1;
         ibDetalheParcelasDET_QUANTIDADE.AsInteger := 1;
         ibDetalheParcelasDET_VALOR.AsFloat        := StrToFloat(trim(sheet.cells[i, 4].Text));
         ibDetalheParcelas.Post;
         end;



       //end;

       inc(i);

     end;
     planilha.WorkBooks.Close;

     ibDetalheParcelas.Close;
     ibDetalheParcelas.ParamByName('par_id').asinteger := FIdParcela;
     ibDetalheParcelas.Open;

     ShowMessage('Importação finalizado com sucesso.');

  end;
end;

procedure TFDetalheParcelas.ImportarCSV;
var
  ArquivoCSV: TextFile;
  Contador, I: Integer;
  Linha: String;
  iMes : Integer;

  function MontaValor: String;
  var
    ValorMontado: String;
  begin
    ValorMontado := '';
    inc(I);
    While Linha[I] >= ' ' do
    begin
      If Linha[I] = ';' then
        break;
      ValorMontado := ValorMontado + Linha[I];
      inc(I);
    end;
    result := ValorMontado;
  end;

begin
  AssignFile(ArquivoCSV, 'c:\Nome_do_Arquivo');
  try
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, Linha);
    while not Eoln(ArquivoCSV) do
    begin
        I := 0;

        //cdsItensDoPedido.Append;
        //cdsItensDoPedidoCodigoProduto.AsString := MontaValor;
        //cdsItensDoPedidoNomeDoProduto.AsString := AnsiUpperCase(MontaValor);
        //cdsItensDoPedidoQuantidade.AsFloat := StrToFloat(MontaValor);
        //cdsItensDoPedidoPreco.AsCurrency := StrToCurr(MontaValor);
        //cdsItensDoPedido.Post;

      Readln(ArquivoCSV, Linha);
    end;

  finally
    CloseFile(ArquivoCSV);
  end;
end;

procedure TFDetalheParcelas.ibDetalheParcelasAfterPost(DataSet: TDataSet);
begin
  //DMConexao.IBTransacao.Commit;
end;

procedure TFDetalheParcelas.FormClose(Sender: TObject;var Action: TCloseAction);
var
  AIndex, AGroupIndex: integer;
  AValue: variant;
begin
  //with cxGrid1DBTableView1.DataController do
  //begin
  //  AGroupIndex := Groups.DataGroupIndexByRowIndex[cxGrid1DBTableView1DET_VALOR.Index];
  //  AIndex := Summary.DefaultGroupSummaryItems.IndexOfItemLink(cxGrid1DBTableView1DET_VALOR);
  //  AValue := Summary.GroupSummaryValues[AGroupIndex, AIndex];
  //end;
  //FTotalValorParcelas := AValue;
end;

end.
