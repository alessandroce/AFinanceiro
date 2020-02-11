unit uCadOrcamentos;

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
  cxDataStorage, cxEdit, DB, cxDBData, IBQuery, IBCustomDataSet, StdCtrls,
  ExtCtrls, Buttons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ComCtrls, Mask, DBCtrls, wwdbdatetimepicker;

type
  TFCadOrcamentos = class(TFCadastro2)
    qConsultaORC_ID: TIntegerField;
    qConsultaORC_USU_ID: TIntegerField;
    qConsultaORC_PES_ID: TIntegerField;
    qConsultaORC_CODIGO: TIntegerField;
    qConsultaORC_DESCRICAO: TIBStringField;
    qConsultaORC_VALOR: TIBBCDField;
    qConsultaORC_DATA: TDateTimeField;
    qConsultaORC_INATIVO: TIBStringField;
    qConsultaORC_DH_CA: TDateTimeField;
    cxGrid1DBTableView1ORC_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ORC_USU_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ORC_PES_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ORC_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1ORC_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1ORC_VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1ORC_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1ORC_INATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1ORC_DH_CA: TcxGridDBColumn;
    qCadastroORC_ID: TIntegerField;
    qCadastroORC_USU_ID: TIntegerField;
    qCadastroORC_PES_ID: TIntegerField;
    qCadastroORC_CODIGO: TIntegerField;
    qCadastroORC_DESCRICAO: TIBStringField;
    qCadastroORC_VALOR: TIBBCDField;
    qCadastroORC_DATA: TDateTimeField;
    qCadastroORC_INATIVO: TIBStringField;
    qCadastroORC_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Bevel1: TBevel;
    ibCadastroItem: TIBDataSet;
    ibCadastroItemORI_ID: TIntegerField;
    ibCadastroItemORI_ORC_ID: TIntegerField;
    ibCadastroItemORI_DESCRICAO: TIBStringField;
    ibCadastroItemORI_DATA: TDateField;
    ibCadastroItemORI_VALOR: TIBBCDField;
    ibCadastroItemORI_DH_CA: TDateTimeField;
    dsCadastroItem: TDataSource;
    cxGrid2DBTableView1ORI_ID: TcxGridDBColumn;
    cxGrid2DBTableView1ORI_ORC_ID: TcxGridDBColumn;
    cxGrid2DBTableView1ORI_DESCRICAO: TcxGridDBColumn;
    cxGrid2DBTableView1ORI_DATA: TcxGridDBColumn;
    cxGrid2DBTableView1ORI_VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1ORI_DH_CA: TcxGridDBColumn;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    sbinc: TSpeedButton;
    edDataItem: TDateTimePicker;
    edValor: TEdit;
    edDescricao: TEdit;
    edData: TwwDBDateTimePicker;
    sbexc: TSpeedButton;
    procedure qCadastroAfterOpen(DataSet: TDataSet);
    procedure sbincClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadOrcamentos: TFCadOrcamentos;

implementation

uses DateUtils;

{$R *.dfm}

procedure TFCadOrcamentos.qCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ibCadastroItem.Open;
end;

procedure TFCadOrcamentos.sbincClick(Sender: TObject);
begin
  inherited;
  try
  if not(ibCadastroItem.State = dsInsert) then
    ibCadastroItem.Insert;
  //ibCadastroItemORI_ID.asInteger       :=
  ibCadastroItemORI_ORC_ID.asInteger   := qCadastroORC_ID.asInteger;
  ibCadastroItemORI_DESCRICAO.asString := edDescricao.Text;
  ibCadastroItemORI_DATA.asDateTime    := edData.Date;
  ibCadastroItemORI_VALOR.AsFloat      := StrToFloatDef(edValor.Text,0);
  ibCadastroItem.Post;
  except
    on e : Exception do
    begin
      ShowMessage(e.Message);
      Abort;
    end;
  end;
end;

procedure TFCadOrcamentos.FormShow(Sender: TObject);
begin
  inherited;
  edDataItem.Date := DateOf(Now);
end;

end.
