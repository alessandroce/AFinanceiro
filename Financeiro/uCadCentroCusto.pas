unit uCadCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastro2, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, IBQuery, IBCustomDataSet, StdCtrls, ExtCtrls,
  Buttons, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls, Mask, DBCtrls;

type
  TFCadCentroCusto = class(TFCadastro2)
    qConsultaCCT_ID: TIntegerField;
    qConsultaCCT_DESCRICAO: TIBStringField;
    qConsultaCCT_DH_CA: TDateTimeField;
    cxGrid1DBTableView1CCT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1CCT_DESCRICAO: TcxGridDBColumn;
    qCadastroCCT_ID: TIntegerField;
    qCadastroCCT_DESCRICAO: TIBStringField;
    qCadastroCCT_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    qCadastroCCT_INATIVO: TIBStringField;
    qConsultaCCT_INATIVO: TIBStringField;
    DBCheckBox1: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure rgAtivoClick(Sender: TObject);
    procedure qCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure getDados;
  public
    { Public declarations }
  end;

var
  FCadCentroCusto: TFCadCentroCusto;

const
  v_ativo : Array[0..2] of String = (' ','N','S');

implementation

{$R *.dfm}

procedure TFCadCentroCusto.FormShow(Sender: TObject);
begin
  inherited;
  getDados;
end;

procedure TFCadCentroCusto.getDados;
begin
  qConsulta.Close;
  qConsulta.ParamByName('inativo').asString := v_ativo[rgAtivo.ItemIndex];
  qConsulta.Open;
end;

procedure TFCadCentroCusto.rgAtivoClick(Sender: TObject);
begin
  inherited;
  getDados;
end;

procedure TFCadCentroCusto.qCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qCadastroCCT_INATIVO.asString := 'N';
end;

end.
