unit uCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastro, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBQuery, IBCustomDataSet, StdCtrls,
  ExtCtrls, Buttons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ComCtrls, DBCtrls, Mask;

type
  TFCadUsuarios = class(TFCadastro)
    qCadastroUSU_ID: TIntegerField;
    qCadastroUSU_PES_ID: TIntegerField;
    qCadastroUSU_LOGIN_NOME: TIBStringField;
    qCadastroUSU_LOGIN: TIBStringField;
    qCadastroUSU_SENHA: TIBStringField;
    qCadastroUSU_NIVEL: TIntegerField;
    qConsultaUSU_ID: TIntegerField;
    qConsultaUSU_PES_ID: TIntegerField;
    qConsultaUSU_LOGIN_NOME: TIBStringField;
    qConsultaUSU_LOGIN: TIBStringField;
    qConsultaUSU_SENHA: TIBStringField;
    qConsultaUSU_NIVEL: TIntegerField;
    cxGrid1DBTableView1USU_ID: TcxGridDBColumn;
    cxGrid1DBTableView1USU_PES_ID: TcxGridDBColumn;
    cxGrid1DBTableView1USU_LOGIN_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1USU_LOGIN: TcxGridDBColumn;
    cxGrid1DBTableView1USU_SENHA: TcxGridDBColumn;
    cxGrid1DBTableView1USU_NIVEL: TcxGridDBColumn;
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
    procedure FormShow(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadUsuarios: TFCadUsuarios;

implementation

{$R *.dfm}

procedure TFCadUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  FCampoCa := 'USU_ID';
  FCampoCo := 'USU_ID';
  FTabelaCa := 'USUARIO';
end;

procedure TFCadUsuarios.dsConsultaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  FId := qConsultaUSU_ID.asinteger
end;

end.
