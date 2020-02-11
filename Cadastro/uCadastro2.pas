unit uCadastro2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, IBQuery, IBCustomDataSet, StdCtrls,
  wwdbdatetimepicker, Buttons, Mask, DBCtrls, wwdblook, Spin, Menus,
  cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFCadastro2 = class(TForm)
    StatusBar1: TStatusBar;
    pgCadastro: TPageControl;
    tsConsulta: TTabSheet;
    tsCadastro: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    qCadastro: TIBDataSet;
    qConsulta: TIBQuery;
    dsCadastro: TDataSource;
    dsConsulta: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    btNovo: TBitBtn;
    btAlterar: TBitBtn;
    btApagar: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btSair: TBitBtn;
    Panel4: TPanel;
    rgAtivo: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure pgCadastroChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure btApagarClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    FMudaAba : Boolean;
    function DefinirVariaveis:Boolean;
  public
    { Public declarations }
    FCampoCa : String;
    FCampoCo : String;
    FTabelaCa : String;
    FId : Integer;
    function Continua(pContinua:Boolean;pTexto:String=''):Boolean;
    procedure MudaAba(pNovaAba:Integer);
    procedure EntrouAbaCadastro;Virtual;
    procedure EntrouAbaConsulta;Virtual;
    procedure AntesMudaAba(var pContinuaAcao : Boolean);Virtual;
    procedure DepoisMudaAba;Virtual;
    procedure GravaRegistrosFilhos(var pGravouSucesso:Boolean); virtual;
    procedure AntesBotaoEditar(var pContinuaAcao:Boolean); virtual;
    procedure DepoisBotaoEditar; virtual;
    procedure AntesAbrirConsulta;Virtual;
    procedure DepoisAbrirConsulta;Virtual;
    
  end;

var
  FCadastro2: TFCadastro2;
const
  cAbaConsulta = 0;
  cAbaCadastro = 1;

implementation

uses uDMConexao, DateUtils, uTitulosPeriodo, uTitulosAPagar, uClassAvisos;

{$R *.dfm}

procedure TFCadastro2.FormShow(Sender: TObject);
begin
  pgCadastro.ActivePageIndex := 0;
  AntesAbrirConsulta;
  qConsulta.Open;
  DepoisAbrirConsulta;
end;

procedure TFCadastro2.btNovoClick(Sender: TObject);
begin
  try
  if not(DMConexao.IBTransacao.InTransaction) then
    DMConexao.IBTransacao.StartTransaction;
  qCadastro.Open;
  qCadastro.Insert;
  pgCadastro.ActivePageIndex := 1;
  except
    on e : Exception do
    begin
      Aviso('Erro.'+e.Message);
    end;
  end;
end;


procedure TFCadastro2.btAlterarClick(Sender: TObject);
begin
   if not(DMConexao.IBTransacao.InTransaction) then
     DMConexao.IBTransacao.StartTransaction;
    qCadastro.Open;
    qCadastro.Edit;
    pgCadastro.ActivePageIndex := 1;
end;

procedure TFCadastro2.btCancelarClick(Sender: TObject);
begin
  qCadastro.Cancel;
  if DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.Rollback;
  pgCadastro.ActivePageIndex := 0;
end;

procedure TFCadastro2.btGravarClick(Sender: TObject);
var vContinua : Boolean;
begin
  try
    if (qCadastro.State in [dsInsert,dsEdit]) then
    begin
      qCadastro.Post;
    end;
    GravaRegistrosFilhos(vContinua);
    if vContinua then
    begin
      DMConexao.IBTransacao.Commit;
      qConsulta.Open;
      pgCadastro.ActivePageIndex := 0;
      Aviso('Finalizado com sucesso.');
    end;
  except
    on e : exception do
    begin
      DMConexao.IBTransacao.Rollback;
      ShowMessage('Erro: '+e.Message);
      pgCadastro.ActivePageIndex := 0;
    end;
  end;
end;

function TFCadastro2.Continua(pContinua: Boolean; pTexto: String): Boolean;
begin
  Result := pContinua;
  if not(Result) then
    if pTexto<>'' then
      ShowMessage(pTexto);
end;

procedure TFCadastro2.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFCadastro2.AntesMudaAba(var pContinuaAcao: Boolean);
begin
  pContinuaAcao := true;
end;

procedure TFCadastro2.DepoisMudaAba;
begin
//
end;

procedure TFCadastro2.MudaAba(pNovaAba: Integer);
begin
  AntesMudaAba(FMudaAba);
  if FMudaAba then
  begin
    pgCadastro.ActivePageIndex := pNovaAba;
    case pNovaAba of
      cAbaConsulta : begin
                       EntrouAbaConsulta;
                     end;
      cAbaCadastro : begin
                       EntrouAbaCadastro;
                     end;
    end;
    FMudaAba := False;
    DepoisMudaAba;
  end;
end;

procedure TFCadastro2.EntrouAbaCadastro;
begin

end;

procedure TFCadastro2.EntrouAbaConsulta;
begin

end;

procedure TFCadastro2.pgCadastroChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := FMudaAba;
end;

procedure TFCadastro2.GravaRegistrosFilhos(var pGravouSucesso: Boolean);
begin
  pGravouSucesso := true;
end;

function TFCadastro2.DefinirVariaveis: Boolean;
begin
  Result := not( ((FCampoCa=EmptyStr) or (FCampoCo=EmptyStr) or (FTabelaCa=EmptyStr)) );
end;

procedure TFCadastro2.btApagarClick(Sender: TObject);
begin
  if Duvida('Deseja excluir') then
  begin
    try
      qCadastro.Open;
      qCadastro.Delete;
      DMConexao.IBTransacao.Commit;
      Aviso('Registro apagado');
    except
      on e : exception do
      begin
        DMConexao.IBTransacao.Rollback;
        Aviso('Erro: '+e.Message);
      end;
    end;
  end;
end;

procedure TFCadastro2.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  btAlterar.Click;
end;

procedure TFCadastro2.AntesBotaoEditar(var pContinuaAcao: Boolean);
begin
  pContinuaAcao := True;
end;

procedure TFCadastro2.DepoisBotaoEditar;
begin
//
end;

procedure TFCadastro2.AntesAbrirConsulta;
begin
//
end;

procedure TFCadastro2.DepoisAbrirConsulta;
begin
//
end;

end.
