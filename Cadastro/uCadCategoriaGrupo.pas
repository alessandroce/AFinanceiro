unit uCadCategoriaGrupo;

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
  TFCadCategoriaGrupo = class(TFCadastro2)
    qConsultaCATG_ID: TIntegerField;
    qConsultaCATG_DESCRICAO: TIBStringField;
    qConsultaCATG_INATIVO: TIBStringField;
    qConsultaCATG_DH_CA: TDateTimeField;
    cxGrid1DBTableView1CATG_ID: TcxGridDBColumn;
    cxGrid1DBTableView1CATG_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CATG_INATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1CATG_DH_CA: TcxGridDBColumn;
    qCadastroCATG_ID: TIntegerField;
    qCadastroCATG_DESCRICAO: TIBStringField;
    qCadastroCATG_INATIVO: TIBStringField;
    qCadastroCATG_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure rgAtivoClick(Sender: TObject);
    procedure qCadastroNewRecord(DataSet: TDataSet);
    procedure qCadastroAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure getDados;
  public
    { Public declarations }
  end;

var
  FCadCategoriaGrupo: TFCadCategoriaGrupo;
const
  v_ativo : Array[0..2] of String = (' ','N','S');

implementation

{$R *.dfm}

{ TFCadCategoriaGrupo }

procedure TFCadCategoriaGrupo.getDados;
begin
  qConsulta.Close;
  qConsulta.ParamByName('inativo').asString := v_ativo[rgAtivo.ItemIndex];
  qConsulta.Open;
end;

procedure TFCadCategoriaGrupo.FormShow(Sender: TObject);
begin
  inherited;
  getDados;
end;

procedure TFCadCategoriaGrupo.rgAtivoClick(Sender: TObject);
begin
  inherited;
  getDados;
end;

procedure TFCadCategoriaGrupo.qCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qCadastroCATG_INATIVO.asString := 'N';
end;

procedure TFCadCategoriaGrupo.qCadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  getDados;
end;

end.
