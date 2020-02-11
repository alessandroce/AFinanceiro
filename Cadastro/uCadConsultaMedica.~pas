unit uCadConsultaMedica;

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
  TFCadConsultaMedica = class(TFCadastro2)
    qConsultaCMED_ID: TIntegerField;
    qConsultaCMED_DATA: TDateField;
    qConsultaCMED_PESSOA: TIBStringField;
    qConsultaCMED_LOCAL: TIBStringField;
    qConsultaCMED_DESCRICAO: TIBStringField;
    qConsultaCMED_DH_CA: TDateTimeField;
    cxGrid1DBTableView1CMED_ID: TcxGridDBColumn;
    cxGrid1DBTableView1CMED_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1CMED_PESSOA: TcxGridDBColumn;
    cxGrid1DBTableView1CMED_LOCAL: TcxGridDBColumn;
    cxGrid1DBTableView1CMED_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CMED_DH_CA: TcxGridDBColumn;
    qCadastroCMED_ID: TIntegerField;
    qCadastroCMED_DATA: TDateField;
    qCadastroCMED_PESSOA: TIBStringField;
    qCadastroCMED_LOCAL: TIBStringField;
    qCadastroCMED_DESCRICAO: TIBStringField;
    qCadastroCMED_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadConsultaMedica: TFCadConsultaMedica;

implementation

{$R *.dfm}

procedure TFCadConsultaMedica.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Close;
  qConsulta.Open;
end;

end.
