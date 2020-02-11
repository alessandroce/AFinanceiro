unit uCadCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastro2, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, IBQuery, IBCustomDataSet, StdCtrls, ExtCtrls,
  Buttons, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls, DBCtrls, Mask;

type
  TFCadCategoria = class(TFCadastro2)
    qConsultaCAT_ID: TIntegerField;
    qConsultaCAT_DESCRICAO: TIBStringField;
    qConsultaCAT_CATG_ID: TIntegerField;
    qConsultaCAT_INATIVO: TIBStringField;
    qConsultaCAT_DH_CA: TDateTimeField;
    qConsultaCATG_DESCRICAO: TIBStringField;
    cxGrid1DBTableView1CAT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1CAT_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CAT_CATG_ID: TcxGridDBColumn;
    cxGrid1DBTableView1CAT_INATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1CAT_DH_CA: TcxGridDBColumn;
    cxGrid1DBTableView1CATG_DESCRICAO: TcxGridDBColumn;
    qCadastroCAT_ID: TIntegerField;
    qCadastroCAT_DESCRICAO: TIBStringField;
    qCadastroCAT_CATG_ID: TIntegerField;
    qCadastroCAT_INATIVO: TIBStringField;
    qCadastroCAT_DH_CA: TDateTimeField;
    qGrupo: TIBQuery;
    qGrupoCATG_ID: TIntegerField;
    qGrupoCATG_DESCRICAO: TIBStringField;
    qGrupoCATG_INATIVO: TIBStringField;
    qGrupoCATG_DH_CA: TDateTimeField;
    dsGrupo: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure rgAtivoClick(Sender: TObject);
    procedure qCadastroAfterPost(DataSet: TDataSet);
    procedure qCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure getDados;
  public
    { Public declarations }
  end;

var
  FCadCategoria: TFCadCategoria;
const
  v_ativo : Array[0..2] of String = (' ','N','S');

implementation

{$R *.dfm}

{ TFCadCategoria }

procedure TFCadCategoria.getDados;
begin
  qConsulta.Close;
  qConsulta.ParamByName('inativo').asString := v_ativo[rgAtivo.ItemIndex];
  qConsulta.Open;
  qGrupo.Open;
end;

procedure TFCadCategoria.FormShow(Sender: TObject);
begin
  inherited;
  getDados;
end;

procedure TFCadCategoria.rgAtivoClick(Sender: TObject);
begin
  inherited;
  getDados;
end;

procedure TFCadCategoria.qCadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  getDados;
end;

procedure TFCadCategoria.qCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qCadastroCAT_INATIVO.AsString := 'N';
end;

end.
