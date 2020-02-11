unit uCadPrevGastosFuturos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, DBClient, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  IBCustomDataSet, cxNavigator, cxDBNavigator;

type
  TFPrevGastosFuturos = class(TForm)
    Panel1: TPanel;
    btSair: TBitBtn;
    StatusBar1: TStatusBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ibGastos: TIBDataSet;
    ibGastosDet: TIBDataSet;
    dsGastos: TDataSource;
    dsGastosDet: TDataSource;
    ibGastosGFT_ID: TIntegerField;
    ibGastosGFT_DESCRICAO: TIBStringField;
    ibGastosGFT_DATA: TDateField;
    ibGastosGFT_DH_CA: TDateTimeField;
    ibGastosDetGFD_ID: TIntegerField;
    ibGastosDetGFD_GASTOS_FUTUROS_ID: TIntegerField;
    ibGastosDetGFD_DESCRICAO: TIBStringField;
    ibGastosDetGFD_DATA_PREVISTA: TDateField;
    ibGastosDetGFD_DATA_REALIZADO: TDateField;
    ibGastosDetGFD_VALOR_PREVISTO: TIBBCDField;
    ibGastosDetGFD_VALOR_REALIZADO: TIBBCDField;
    ibGastosDetGFD_DESITENTE: TIBStringField;
    ibGastosDetGFD_DATA_DESISTENTE: TDateField;
    ibGastosDetGFD_DH_CA: TDateTimeField;
    cxGridDBTableView1GFT_ID: TcxGridDBColumn;
    cxGridDBTableView1GFT_DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1GFT_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1GFD_ID: TcxGridDBColumn;
    cxGrid1DBTableView1GFD_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1GFD_DATA_PREVISTA: TcxGridDBColumn;
    cxGrid1DBTableView1GFD_DATA_REALIZADO: TcxGridDBColumn;
    cxGrid1DBTableView1GFD_VALOR_PREVISTO: TcxGridDBColumn;
    cxGrid1DBTableView1GFD_VALOR_REALIZADO: TcxGridDBColumn;
    cxGrid1DBTableView1GFD_DESITENTE: TcxGridDBColumn;
    cxGrid1DBTableView1GFD_DATA_DESISTENTE: TcxGridDBColumn;
    cxDBNavigator1: TcxDBNavigator;
    ibGastosGFT_VERSAO: TIBStringField;
    cxDBNavigator2: TcxDBNavigator;
    RadioGroup1: TRadioGroup;
    cxGrid1DBTableView1GFD_GASTOS_FUTUROS_ID: TcxGridDBColumn;
    procedure btSairClick(Sender: TObject);
    procedure ibGastosNewRecord(DataSet: TDataSet);
    procedure ibGastosAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ibGastosDetNewRecord(DataSet: TDataSet);
    procedure ibGastosDetAfterPost(DataSet: TDataSet);
    procedure RadioGroup1Click(Sender: TObject);
  private
    FSQL : String;
    function getVersaoGastosFuturos: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrevGastosFuturos: TFPrevGastosFuturos;

implementation

uses uClassAvisos, uDMConexao;

{$R *.dfm}

procedure TFPrevGastosFuturos.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFPrevGastosFuturos.ibGastosNewRecord(DataSet: TDataSet);
begin
  ibGastosGFT_VERSAO.asstring := getVersaoGastosFuturos;
end;

function TFPrevGastosFuturos.getVersaoGastosFuturos:String;
begin
  Result  := FormatDateTime('ddmmyyyyhhmmss',Now);
end;
procedure TFPrevGastosFuturos.ibGastosAfterOpen(DataSet: TDataSet);
begin
  //if not(DMConexao.IBTransacao.InTransaction) then
  //  DMConexao.IBTransacao.StartTransaction;
  ibGastosDet.Open;
end;

procedure TFPrevGastosFuturos.FormShow(Sender: TObject);
begin
  FSQL := ibGastosDet.SelectSQL.Text;
  ibGastos.Open;
end;

procedure TFPrevGastosFuturos.ibGastosDetNewRecord(DataSet: TDataSet);
begin
  ibGastosDetGFD_GASTOS_FUTUROS_ID.asinteger := ibGastosGFT_ID.asinteger;
end;

procedure TFPrevGastosFuturos.ibGastosDetAfterPost(DataSet: TDataSet);
begin
(*
  try
      DMConexao.IBTransacao.Commit;
    except on e : exception do
    begin
      DMConexao.IBTransacao.Rollback;
      Mensagem('Operação não concluída. Detalhe:'+e.Message,'Aviso',3);
    end;
  end;
*)
end;

procedure TFPrevGastosFuturos.RadioGroup1Click(Sender: TObject);
begin
  ibGastosDet.Close;
  ibGastosDet.SelectSQL.Clear;
  case RadioGroup1.ItemIndex of
    0 : begin
           ibGastosDet.SelectSQL.Text := FSQL+' and coalesce(GFD_DESITENTE,''N'')=''N'' ';
        end;
    1 : begin
           ibGastosDet.SelectSQL.Text := FSQL+' and coalesce(GFD_DESITENTE,''N'')=''S'' ';
        end;
    2 : begin
           ibGastosDet.SelectSQL.Text := FSQL;
        end;
  end;
  ibGastosDet.Open;
end;

end.

(*

select gastos_futuros_categoria.gfc_descricao,
       sum(gastos_futuros_det.gfd_valor_previsto) gfd_valor_previsto,
       sum(gastos_futuros_det.gfd_valor_realizado) gfd_valor_realizado
  from gastos_futuros_det
 join gastos_futuros_categoria on (gastos_futuros_categoria.gfc_id=gastos_futuros_det.gfd_categoria_id)
 where gastos_futuros_det.gfd_gastos_futuros_id = :GFT_ID
   and coalesce(gastos_futuros_det.gfd_desitente,'N')='N'
 group by gastos_futuros_categoria.gfc_descricao

*)
