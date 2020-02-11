unit uCadBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastro, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBQuery, IBCustomDataSet, StdCtrls,
  ExtCtrls, Buttons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ComCtrls, DBCtrls, Mask;

type
  TFCadBancos = class(TFCadastro)
    qConsultaBAN_ID: TIntegerField;
    qConsultaBAN_CONTA: TIBStringField;
    qConsultaBAN_AGENCIA: TIntegerField;
    qConsultaBAN_NOMEBANCO: TIBStringField;
    qConsultaBAN_NOMEAGENCIA: TIBStringField;
    qConsultaBAN_CTATIPO: TIBStringField;
    qConsultaBAN_ID_CIDADE: TIntegerField;
    qConsultaBAN_DH_CA: TDateTimeField;
    qCadastroBAN_ID: TIntegerField;
    qCadastroBAN_CONTA: TIBStringField;
    qCadastroBAN_AGENCIA: TIntegerField;
    qCadastroBAN_NOMEBANCO: TIBStringField;
    qCadastroBAN_NOMEAGENCIA: TIBStringField;
    qCadastroBAN_CTATIPO: TIBStringField;
    qCadastroBAN_ID_CIDADE: TIntegerField;
    qCadastroBAN_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    cxGrid1DBTableView1BAN_ID: TcxGridDBColumn;
    cxGrid1DBTableView1BAN_CONTA: TcxGridDBColumn;
    cxGrid1DBTableView1BAN_AGENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1BAN_NOMEBANCO: TcxGridDBColumn;
    cxGrid1DBTableView1BAN_NOMEAGENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1BAN_CTATIPO: TcxGridDBColumn;
    cxGrid1DBTableView1BAN_ID_CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1BAN_DH_CA: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadBancos: TFCadBancos;

implementation

{$R *.dfm}

procedure TFCadBancos.FormShow(Sender: TObject);
begin
  inherited;
  FCampoCa := 'BAN_ID';
  FCampoCo := 'BAN_ID';
  FTabelaCa := 'BANCO';
end;

procedure TFCadBancos.dsConsultaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  FId := qConsultaBAN_ID.asinteger
end;

end.
