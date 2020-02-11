unit uTransferirParcelasDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls,
  StdCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  IBCustomDataSet, IBQuery, ComCtrls, cxButtons, cxCheckBox, DBClient,
  Provider;

type
  TFTransferirParcelasDet = class(TForm)
    Panel2: TPanel;
    btbar1Sair: TcxButton;
    StatusBar1: TStatusBar;
    qParcelasFuturas: TIBQuery;
    dsParcelasFuturas: TDataSource;
    qParcelasDet: TIBQuery;
    dsParcelasDet: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Bevel2: TBevel;
    Label2: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Bevel1: TBevel;
    Label1: TLabel;
    cxButton1: TcxButton;
    btbar1Cancelar: TcxButton;
    qParcelasFuturasSELECAO: TIBStringField;
    qParcelasFuturasPAR_ID: TIntegerField;
    qParcelasFuturasPAR_FIN_ID: TIntegerField;
    qParcelasFuturasPAR_VENCTO: TDateField;
    qParcelasFuturasPAR_OBSERVACAO: TIBStringField;
    dspParcelasFuturas: TDataSetProvider;
    cdsParcelasFuturas: TClientDataSet;
    cdsParcelasFuturasSELECAO: TStringField;
    cdsParcelasFuturasPAR_ID: TIntegerField;
    cdsParcelasFuturasPAR_FIN_ID: TIntegerField;
    cdsParcelasFuturasPAR_VENCTO: TDateField;
    cdsParcelasFuturasPAR_OBSERVACAO: TStringField;
    cxGridDBTableView2SELECAO: TcxGridDBColumn;
    cxGridDBTableView2PAR_ID: TcxGridDBColumn;
    cxGridDBTableView2PAR_FIN_ID: TcxGridDBColumn;
    cxGridDBTableView2PAR_VENCTO: TcxGridDBColumn;
    cxGridDBTableView2PAR_OBSERVACAO: TcxGridDBColumn;
    dspParcelasDet: TDataSetProvider;
    cdsParcelasDet: TClientDataSet;
    qParcelasDetDET_ID: TIntegerField;
    qParcelasDetDET_PAR_ID: TIntegerField;
    qParcelasDetDET_DATA: TDateField;
    qParcelasDetDET_DATA_DOC: TDateField;
    qParcelasDetDET_DESCRICAO: TIBStringField;
    qParcelasDetDET_VALOR: TIBBCDField;
    qParcelasDetDET_DH_CA: TDateTimeField;
    qParcelasDetDET_PAGO: TIntegerField;
    qParcelasDetDET_DATAPGTO: TDateTimeField;
    qParcelasDetDET_FLAG: TIntegerField;
    qParcelasDetDESCRICAO: TIBStringField;
    qParcelasDetDET_NUMERO: TIntegerField;
    qParcelasDetDET_QUANTIDADE: TIntegerField;
    qParcelasDetSELECAO: TIBStringField;
    cdsParcelasDetSELECAO: TStringField;
    cdsParcelasDetDET_ID: TIntegerField;
    cdsParcelasDetDET_PAR_ID: TIntegerField;
    cdsParcelasDetDET_DATA: TDateField;
    cdsParcelasDetDET_DATA_DOC: TDateField;
    cdsParcelasDetDET_DESCRICAO: TStringField;
    cdsParcelasDetDET_VALOR: TBCDField;
    cdsParcelasDetDET_DH_CA: TDateTimeField;
    cdsParcelasDetDET_PAGO: TIntegerField;
    cdsParcelasDetDET_DATAPGTO: TDateTimeField;
    cdsParcelasDetDET_FLAG: TIntegerField;
    cdsParcelasDetDESCRICAO: TStringField;
    cdsParcelasDetDET_NUMERO: TIntegerField;
    cdsParcelasDetDET_QUANTIDADE: TIntegerField;
    cxGridDBTableView1SELECAO: TcxGridDBColumn;
    cxGridDBTableView1DET_ID: TcxGridDBColumn;
    cxGridDBTableView1DET_PAR_ID: TcxGridDBColumn;
    cxGridDBTableView1DET_DATA: TcxGridDBColumn;
    cxGridDBTableView1DET_DATA_DOC: TcxGridDBColumn;
    cxGridDBTableView1DET_DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1DET_VALOR: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btbar1SairClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btbar1CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FFinanceiroId : Integer;
    FParcelasDetId : Integer;
  end;

var
  FTransferirParcelasDet: TFTransferirParcelasDet;

implementation

uses uDMConexao;

{$R *.dfm}

procedure TFTransferirParcelasDet.FormShow(Sender: TObject);
begin
  if not((FFinanceiroId>0) and (FParcelasDetId>0)) then
    Exit;
  qParcelasFuturas.Close;
  qParcelasFuturas.ParamByName('FIN_ID').asInteger := FFinanceiroId;
  qParcelasFuturas.OPen;
  cdsParcelasFuturas.Open;

  qParcelasDet.Close;
  qParcelasDet.ParamByName('PAR_ID').asInteger := FParcelasDetId;
  qParcelasDet.OPen;
  cdsParcelasDet.Open;

end;

procedure TFTransferirParcelasDet.btbar1SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFTransferirParcelasDet.cxButton1Click(Sender: TObject);
begin
  //Before - Atualiza valor subtraido

  //After - Atualiza valor acrescentado

  //Atualiza parcelas detalhe (novo)
end;

procedure TFTransferirParcelasDet.btbar1CancelarClick(Sender: TObject);
begin
  Close;
end;

end.
