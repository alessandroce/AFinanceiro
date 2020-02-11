unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery, dblookup,
  ComCtrls;

type
  TFLogin = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    qUsuario: TIBQuery;
    qUsuarioUSU_ID: TIntegerField;
    qUsuarioUSU_PES_ID: TIntegerField;
    qUsuarioUSU_LOGIN_NOME: TIBStringField;
    qUsuarioUSU_LOGIN: TIBStringField;
    qUsuarioUSU_SENHA: TIBStringField;
    qUsuarioUSU_NIVEL: TIntegerField;
    dsUsuario: TDataSource;
    edLogin: TEdit;
    StatusBar1: TStatusBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    FUsuarioId : Integer;
  end;

var
  FLogin: TFLogin;

implementation

uses uDMConexao, uClassAvisos, uFerramentas, uMain;

{$R *.dfm}

procedure TFLogin.BitBtn1Click(Sender: TObject);
begin
  FUsuarioId := 0;
  Close;
  FFinanceiro.Close;
end;

procedure TFLogin.BitBtn2Click(Sender: TObject);
begin
  if (edLogin.Text<>EmptyStr) and (edSenha.Text<>EmptyStr) then
  begin
    if qUsuario.Locate('USU_LOGIN',edLogin.Text,[loPartialKey]) then
    begin
      if qUsuarioUSU_SENHA.asstring=edSenha.Text then
      begin
        DadosLogin.Id    := qUsuarioUSU_ID.asinteger;
        DadosLogin.Login := qUsuarioUSU_LOGIN.asstring;
        DadosLogin.Nome  := qUsuarioUSU_LOGIN_NOME.asstring;
        DadosLogin.Admin := qUsuarioUSU_NIVEL.AsInteger=3;
        //FFinanceiro := TFFinanceiro.Create(nil);
        //FFinanceiro.ShowModal;
        //FFinanceiro.Free;
        //FFinanceiro := nil;
      end
      else
        Aviso('Acesso negado.');
    end
    else
      Aviso('Login ou Senha incorreto.');
  end
  else
    Aviso('Login ou Senha incorreto.');
end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
  qUsuario.Open;
end;

procedure TFLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Action=caFree then
    FFinanceiro.Close;
end;

end.
