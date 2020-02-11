unit uCadPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastro, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBCustomDataSet, IBQuery, StdCtrls,
  Buttons, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ComCtrls, Mask, DBCtrls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TFCadPessoas = class(TFCadastro)
    qCadastroPES_ID: TIntegerField;
    qCadastroPES_TIPO: TIntegerField;
    qCadastroPES_TIPO_PESSOA: TIntegerField;
    qCadastroPES_NOME_RAZAO: TIBStringField;
    qCadastroPES_NOME_FANTASIA: TIBStringField;
    qCadastroPES_CNPJ: TIBStringField;
    qCadastroPES_INSC_EST: TIBStringField;
    qCadastroPES_EMAIL: TIBStringField;
    qCadastroPES_TEL_COMERCIAL: TIBStringField;
    qCadastroPES_TEL_CELULAR: TIBStringField;
    qCadastroPES_CONTATO: TIBStringField;
    qCadastroPES_ENDERECO: TIBStringField;
    qCadastroPES_NUMERO: TIntegerField;
    qCadastroPES_COMPLEMENTO: TIBStringField;
    qCadastroPES_BAIRRO: TIBStringField;
    qCadastroPES_CEP: TIBStringField;
    qCadastroPES_CIDADE: TIBStringField;
    qCadastroPES_UF: TIBStringField;
    qCadastroPES_ANIVERSARIO: TDateField;
    qCadastroPES_DESCRICAO: TIBStringField;
    qConsultaPES_ID: TIntegerField;
    qConsultaPES_TIPO: TIntegerField;
    qConsultaPES_TIPO_PESSOA: TIntegerField;
    qConsultaPES_NOME_RAZAO: TIBStringField;
    qConsultaPES_NOME_FANTASIA: TIBStringField;
    qConsultaPES_CNPJ: TIBStringField;
    qConsultaPES_INSC_EST: TIBStringField;
    qConsultaPES_EMAIL: TIBStringField;
    qConsultaPES_TEL_COMERCIAL: TIBStringField;
    qConsultaPES_TEL_CELULAR: TIBStringField;
    qConsultaPES_CONTATO: TIBStringField;
    qConsultaPES_ENDERECO: TIBStringField;
    qConsultaPES_NUMERO: TIntegerField;
    qConsultaPES_COMPLEMENTO: TIBStringField;
    qConsultaPES_BAIRRO: TIBStringField;
    qConsultaPES_CEP: TIBStringField;
    qConsultaPES_CIDADE: TIBStringField;
    qConsultaPES_UF: TIBStringField;
    qConsultaPES_ANIVERSARIO: TDateField;
    qConsultaPES_DESCRICAO: TIBStringField;
    cxGrid1DBTableView1PES_ID: TcxGridDBColumn;
    cxGrid1DBTableView1PES_TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1PES_TIPO_PESSOA: TcxGridDBColumn;
    cxGrid1DBTableView1PES_NOME_RAZAO: TcxGridDBColumn;
    cxGrid1DBTableView1PES_NOME_FANTASIA: TcxGridDBColumn;
    cxGrid1DBTableView1PES_CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1PES_INSC_EST: TcxGridDBColumn;
    cxGrid1DBTableView1PES_EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1PES_TEL_COMERCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1PES_TEL_CELULAR: TcxGridDBColumn;
    cxGrid1DBTableView1PES_CONTATO: TcxGridDBColumn;
    cxGrid1DBTableView1PES_ENDERECO: TcxGridDBColumn;
    cxGrid1DBTableView1PES_NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1PES_COMPLEMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1PES_BAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView1PES_CEP: TcxGridDBColumn;
    cxGrid1DBTableView1PES_CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1PES_UF: TcxGridDBColumn;
    cxGrid1DBTableView1PES_ANIVERSARIO: TcxGridDBColumn;
    cxGrid1DBTableView1PES_DESCRICAO: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label20: TLabel;
    DBEdit21: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadPessoas: TFCadPessoas;

implementation

{$R *.dfm}

procedure TFCadPessoas.FormShow(Sender: TObject);
begin
  inherited;
  FCampoCa := 'PES_ID';
  FCampoCo := 'PES_ID';
  FTabelaCa := 'PESSOA';
end;

procedure TFCadPessoas.dsConsultaDataChange(Sender: TObject;Field: TField);
begin
  inherited;
  FId := qConsultaPES_ID.asinteger
end;

end.
