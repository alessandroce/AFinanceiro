unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, IBQuery, IBCustomDataSet, StdCtrls,
  wwdbdatetimepicker, Buttons, Mask, DBCtrls, wwdblook, Spin, Menus,
  cxCheckBox, ActnList, frxDesgn, frxClass, uDMConexao, frxExportXLS, frxExportPDF,
  frxIBXComponents, WinSkinData, WinSkinStore, jpeg, cxDBLookupComboBox,
  frxDCtrl, frxChart, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxNavBar2Painter,
  dxNavBarBase, dxNavBarCollns, dxNavBar, dxNavBarStyles, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, DBActns, AppEvnts;

type
  TFFinanceiro = class(TForm)
    StatusBar1: TStatusBar;
    ActionList1: TActionList;
    cad_Fornecedores: TAction;
    aDemonstrativo: TAction;
    sis_Sair: TAction;
    aTitulosAnual: TAction;
    aTitulosAPagar: TAction;
    aTitulosVencidos: TAction;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    aTitulos: TAction;
    aSaldoMensal: TAction;
    aTitulosDet: TAction;
    SkinStore1: TSkinStore;
    SkinData1: TSkinData;
    sbMais: TSpeedButton;
    qSaldo: TIBQuery;
    dsSaldo: TDataSource;
    qSaldoORDEM: TIntegerField;
    qSaldoNOME: TIBStringField;
    qSaldoVALOR: TIBBCDField;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
    Bevel1: TBevel;
    Label1: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label2: TLabel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Label3: TLabel;
    qSaldo2: TIBQuery;
    dsSaldo2: TDataSource;
    qSaldo3: TIBQuery;
    dsSaldo3: TDataSource;
    qSaldo2ORDEM: TIntegerField;
    qSaldo2NOME: TIBStringField;
    qSaldo2VALOR: TIBBCDField;
    qSaldo3ORDEM: TIntegerField;
    qSaldo3NOME: TIBStringField;
    qSaldo3VALOR: TIBBCDField;
    cbMes: TComboBox;
    Panel2: TPanel;
    cad_Operador: TAction;
    aSaldoAnual: TAction;
    frxReport1: TfrxReport;
    IBQuery1: TIBQuery;
    aRelRelatorios: TAction;
    mov_banco: TAction;
    mov_Caixa: TAction;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    AgendaMedica1: TMenuItem;
    Financeiro1: TMenuItem;
    ContasPagar1: TMenuItem;
    ContasReceber1: TMenuItem;
    MovimentoCaixa1: TMenuItem;
    MovimentoBanco1: TMenuItem;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    FONECEDORESF21: TMenuItem;
    Relatorios1: TMenuItem;
    PlanodeContas1: TMenuItem;
    RelPlanoContas: TAction;
    aTitulosAReceber: TAction;
    Demonstrativo1: TMenuItem;
    itulosDetalhe1: TMenuItem;
    itulosapagar1: TMenuItem;
    itulosvencidos1: TMenuItem;
    itulosanual1: TMenuItem;
    N1: TMenuItem;
    Saldomensal1: TMenuItem;
    Saldoanual1: TMenuItem;
    sis_Configurar: TAction;
    Configurar1: TMenuItem;
    sis_TrocarUsuario: TAction;
    rocardeusurio1: TMenuItem;
    aTitulosPagarFin: TAction;
    aGastosFuturos: TAction;
    N2: TMenuItem;
    GastosFuturos1: TMenuItem;
    cad_Banco: TAction;
    Banco1: TMenuItem;
    PagamentoporCCustoAnual: TAction;
    PagamentoporCentroCustoAnual1: TMenuItem;
    frxIBXComponents1: TfrxIBXComponents;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxDialogControls1: TfrxDialogControls;
    PagamentoDetalhadoMes: TAction;
    Pagamentodetalhadomensal1: TMenuItem;
    aTransferirParcDet: TAction;
    ransferirParcelasDetalhe1: TMenuItem;
    cad_Usuarios: TAction;
    Usurios1: TMenuItem;
    frxChartObject1: TfrxChartObject;
    PagamentoporCentroCustoMensal1: TMenuItem;
    DespesascomFarmcia1: TMenuItem;
    N4: TMenuItem;
    DespesasporCentroCustoMensal1: TMenuItem;
    N3: TMenuItem;
    cont_Farmacia: TAction;
    Controle1: TMenuItem;
    Controle2: TMenuItem;
    cont_Emprestimo: TAction;
    Emprestimos1: TMenuItem;
    cad_Aquisicao: TAction;
    Aquisiodebensmveis1: TMenuItem;
    cad_CentroCusto: TAction;
    CentroCusto1: TMenuItem;
    N5: TMenuItem;
    cad_CategoriaGrupo: TAction;
    cad_Categoria: TAction;
    N6: TMenuItem;
    CategoriaGrupo1: TMenuItem;
    Categoria1: TMenuItem;
    con_BaixaEmprestimo: TAction;
    Action1: TAction;
    bot_Primeiro: TDataSetFirst;
    con_Condominio: TAction;
    N7: TMenuItem;
    ControleCondominio1: TMenuItem;
    con_Orcamento: TAction;
    Oramento1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    MESC1: TMenuItem;
    mesc_Pessoas: TAction;
    mesc_MovFinanceiro: TAction;
    Pessoascadastradas1: TMenuItem;
    Movimenataofinanceira1: TMenuItem;
    con_ConsultaMedica: TAction;
    ConsultaMdica1: TMenuItem;
    con_LimiteParcelado: TAction;
    N8: TMenuItem;
    LimiteParcelado1: TMenuItem;
    RelLimiteCreditos: TAction;
    tuloscomLimitedeCrditos1: TMenuItem;
    CartodeCredito1: TMenuItem;
    RelCartaoCreditoDetalhado: TAction;
    N9: TMenuItem;
    N10: TMenuItem;
    RelCartaoCreditoMensal: TAction;
    CartoCreditoMensal1: TMenuItem;
    procedure btSairClick(Sender: TObject);
    procedure cad_FornecedoresExecute(Sender: TObject);
    procedure aTitulosExecute(Sender: TObject);
    procedure sis_SairExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aTitulosAPagarExecute(Sender: TObject);
    procedure aTitulosVencidosExecute(Sender: TObject);
    procedure aTitulosAnualExecute(Sender: TObject);
    procedure aSaldoMensalExecute(Sender: TObject);
    procedure aTitulosDetExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbMaisClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure aSaldoAnualExecute(Sender: TObject);
    procedure aRelRelatoriosExecute(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure sis_ConfigurarExecute(Sender: TObject);
    procedure sis_TrocarUsuarioExecute(Sender: TObject);
    procedure aTitulosPagarFinExecute(Sender: TObject);
    procedure aGastosFuturosExecute(Sender: TObject);
    procedure mov_bancoExecute(Sender: TObject);
    procedure mov_CaixaExecute(Sender: TObject);
    procedure PagamentoporCCustoAnualExecute(Sender: TObject);
    procedure PagamentoDetalhadoMesExecute(Sender: TObject);
    procedure cad_BancoExecute(Sender: TObject);
    procedure aTransferirParcDetExecute(Sender: TObject);
    procedure cad_UsuariosExecute(Sender: TObject);
    procedure PagamentoporCentroCustoMensal1Click(Sender: TObject);
    procedure DespesascomFarmcia1Click(Sender: TObject);
    procedure DespesasporCentroCustoMensal1Click(Sender: TObject);
    procedure aTitulosAReceberExecute(Sender: TObject);
    procedure cont_FarmaciaExecute(Sender: TObject);
    procedure cont_EmprestimoExecute(Sender: TObject);
    procedure cad_AquisicaoExecute(Sender: TObject);
    procedure cad_CentroCustoExecute(Sender: TObject);
    procedure cad_CategoriaGrupoExecute(Sender: TObject);
    procedure cad_CategoriaExecute(Sender: TObject);
    procedure con_CondominioExecute(Sender: TObject);
    procedure con_OrcamentoExecute(Sender: TObject);
    procedure ApplicationEvents1Activate(Sender: TObject);
    procedure mesc_PessoasExecute(Sender: TObject);
    procedure mesc_MovFinanceiroExecute(Sender: TObject);
    procedure con_ConsultaMedicaExecute(Sender: TObject);
    procedure con_LimiteParceladoExecute(Sender: TObject);
    procedure RelLimiteCreditosExecute(Sender: TObject);
    procedure RelCartaoCreditoDetalhadoExecute(Sender: TObject);
    procedure RelCartaoCreditoMensalExecute(Sender: TObject);
  private
    { Private declarations }
    function Continua(pContinua:Boolean;pTexto:String=''):Boolean;
    procedure CarregarSaldoUsuarios;
    procedure CarregarSaldo(query:TIbQuery;pAno,pUsu,pMes:Integer);
    procedure sbMaisVisivel(bVisible: Boolean);
    procedure NaoImplemtadoAinda;
    procedure getRelatorio(pRelatorio:String; pRelatorioDesc:String='');
    procedure ProcessaMsg(var Msg: TMsg; var Handler: Boolean);

  public
    { Public declarations }
  end;

var
  FFinanceiro: TFFinanceiro;

implementation

uses DateUtils, uTitulosPeriodo, uTitulosAPagar, uCadastro,
  uTitulosVencidos, uCadPessoas, uCadTitulos, uTitulosAnual, uCadTitulos2,
  uSaldoAnual, uClassServidorIni, uFerramentas, uLogin, uTituloDetalhe,
  uRelSaldoMensal, uRelPlanoContas, uFerramentasConfig,
  uCadPrevGastosFuturos, uClassAvisos, uCadBancos, uTransferirParcelasDet,
  uCadUsuarios, uCadEmprestimo, uCadAquisicao, uCadCentroCusto,
  uCadCategoriaGrupo, uCadControleCondominio, uCadOrcamentos,
  uCadConsultaMedica;

{$R *.dfm}

function Replicar(Caracter:String; Quantidade:Integer):String;
var
   I : Integer;
begin
   result := EmptyStr;
   for I := 1 to Quantidade do
      result := result + Caracter;
end;

function TFFinanceiro.Continua(pContinua: Boolean; pTexto: String): Boolean;
begin
  Result := pContinua;
  if not(Result) then
    if pTexto<>'' then
      ShowMessage(pTexto);
end;

procedure TFFinanceiro.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFFinanceiro.cad_FornecedoresExecute(Sender: TObject);
begin
  FCadPessoas := TFCadPessoas.Create(nil);
  FCadPessoas.ShowModal;
  FCadPessoas.Free;

end;

procedure TFFinanceiro.aTitulosExecute(Sender: TObject);
begin
  FCadTitulos2 := TFCadTitulos2.Create(nil);
  FCadTitulos2.ShowModal;
  FCadTitulos2.Free;
end;

procedure TFFinanceiro.sis_SairExecute(Sender: TObject);
begin
  Close;
end;

procedure TFFinanceiro.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
  case key of
   VK_F8  : WinExec('Calc.Exe',SW_Show);
   VK_F10 : sis_Configurar.Execute;
  end;
end;

procedure TFFinanceiro.aTitulosAPagarExecute(Sender: TObject);
begin
  FTitulosAPagar := TFTitulosAPagar.Create(nil);
  FTitulosAPagar.ShowModal;
  FTitulosAPagar.free;
end;

procedure TFFinanceiro.aTitulosVencidosExecute(Sender: TObject);
begin
  FTitulosVencidos := TFTitulosVencidos.Create(nil);
  FTitulosVencidos.ShowModal;
  FTitulosVencidos.Free;
end;

procedure TFFinanceiro.aTitulosAnualExecute(Sender: TObject);
begin
  FTitulosAnual := TFTitulosAnual.Create(nil);
  FTitulosAnual.ShowModal;
  FTitulosAnual.Free;
end;

procedure TFFinanceiro.aSaldoMensalExecute(Sender: TObject);
begin
  FRelSaldoMensal := TFRelSaldoMensal.Create(nil);
  FRelSaldoMensal.ShowModal;
  FRelSaldoMensal.Free;
end;

procedure TFFinanceiro.aTitulosDetExecute(Sender: TObject);
begin
  FTituloDetalhe := TFTituloDetalhe.Create(nil);
  FTituloDetalhe.ShowModal;
  FTituloDetalhe.Free;
end;

procedure TFFinanceiro.FormShow(Sender: TObject);
var Ini : TServidorIni;
begin

  Ini               := TServidorIni.create(SkinData1);
  _SERVIDORINI      := Ini.Ler_ArquivoIni('SERVIDORINI','ARQUIVO');
  _PATH_SERVIDORINI := Ini.Ler_ArquivoIni('SERVIDORINI','CAMINHO');
  _PATH_IMAGEM      := Ini.Ler_ArquivoIni('SERVIDORINI','IMAGEM');
  _PATH_SKIN        := Ini.Ler_ArquivoIni('SERVIDORINI','SKIN');
  _SERVER_NAME      := Ini.Ler_ArquivoIni('SERVIDORINI','BASE');
  ServidorIni.Relatorios := Ini.Ler_ArquivoIni('AFINANCEIRO','Relatorios')+'\';
  ServidorIni.Skin       := Ini.Ler_ArquivoIni('AFINANCEIRO','Skin');

  Ini.Path_Skin := _PATH_SKIN;
  Ini.CarregarSkin(ServidorIni.Skin);
  Ini.Free;

  FLogin := TFLogin.Create(nil);
  FLogin.ShowModal;
  StatusBar1.Panels[2].Text := '&OPERADOR : '+DadosLogin.Login;
  FLogin.Free;
  if DadosLogin.Id>0 then
  begin
    DadosLogin.Id   := DadosLogin.Id;
    DadosLogin.Nome := DadosLogin.Nome;
    sbMaisVisivel(false);
  end
  else
    FFinanceiro.Close
end;

procedure TFFinanceiro.sbMaisVisivel(bVisible : Boolean);
begin
  cxGrid1.Visible := bVisible;
  cxGrid2.Visible := bVisible;
  cxGrid3.Visible := bVisible;
  Label1.Visible  := bVisible;
  Label2.Visible  := bVisible;
  Label3.Visible  := bVisible;
  cbMes.Visible   := bVisible;
end;

procedure TFFinanceiro.sbMaisClick(Sender: TObject);
begin
  if sbMais.Caption='-' then
    sbMais.Caption:='+'
  else if sbMais.Caption='+' then
    sbMais.Caption:='-';
  sbMaisVisivel( (sbMais.Caption = '-') );
end;

procedure TFFinanceiro.FormCreate(Sender: TObject);
begin
  cbMes.ItemIndex := MonthOf(Now)-1;
  CarregarSaldoUsuarios;
end;

procedure TFFinanceiro.CarregarSaldo(query:TIbQuery;pAno,pUsu,pMes:Integer);
begin
  with query do
  begin
    Close;
    ParamByName('ano').asinteger := pAno;
    ParamByName('usu').asinteger := pUsu;
    ParamByName('mes').asinteger := pMes;
    Open;
  end;
end;

procedure TFFinanceiro.cbMesChange(Sender: TObject);
begin
  CarregarSaldoUsuarios;
end;

procedure TFFinanceiro.CarregarSaldoUsuarios;
begin
  Panel2.Visible := true;
  Application.ProcessMessages;
  CarregarSaldo(qSaldo,YearOf(Now),1,cbMes.ItemIndex+1);
  Application.ProcessMessages;
  CarregarSaldo(qSaldo2,YearOf(Now),2,cbMes.ItemIndex+1);
  Application.ProcessMessages;
  CarregarSaldo(qSaldo3,YearOf(Now),3,cbMes.ItemIndex+1);
  Application.ProcessMessages;
  Panel2.Visible := false;
end;

procedure TFFinanceiro.aSaldoAnualExecute(Sender: TObject);
begin
  FSaldoAnual := TFSaldoAnual.Create(nil);
  FSaldoAnual.ShowModal;
  FSaldoAnual.Free;
end;

procedure TFFinanceiro.aRelRelatoriosExecute(Sender: TObject);
begin
  FRelatorioPlanoContas := TFRelatorioPlanoContas.Create(nil);
  FRelatorioPlanoContas.ShowModal;
  FRelatorioPlanoContas.Free;
end;

procedure TFFinanceiro.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFFinanceiro.BitBtn12Click(Sender: TObject);
begin
  ShowMessage('Não foi implementado ainda');
end;

procedure TFFinanceiro.sis_ConfigurarExecute(Sender: TObject);
begin
  FFerramentasConfig := TFFerramentasConfig.Create(nil);
  FFerramentasConfig.ShowModal;
  FFerramentasConfig.Free;
end;

procedure TFFinanceiro.sis_TrocarUsuarioExecute(Sender: TObject);
begin
  FLogin := TFLogin.Create(nil);
  FLogin.ShowModal;
  StatusBar1.Panels[2].Text := '&OPERADOR : '+DadosLogin.Login;
  FLogin.Free;
end;

procedure TFFinanceiro.aTitulosPagarFinExecute(Sender: TObject);
begin
  FCadTitulos2 := TFCadTitulos2.Create(nil);
  FCadTitulos2.FPagarReceber := 0;
  FCadTitulos2.ShowModal;
  FCadTitulos2.free;
end;

procedure TFFinanceiro.aGastosFuturosExecute(Sender: TObject);
begin
  FPrevGastosFuturos := TFPrevGastosFuturos.Create(nil);
  FPrevGastosFuturos.ShowModal;
  FPrevGastosFuturos.Free;
end;

procedure TFFinanceiro.mov_bancoExecute(Sender: TObject);
begin
  NaoImplemtadoAinda;
end;

procedure TFFinanceiro.mov_CaixaExecute(Sender: TObject);
begin
  NaoImplemtadoAinda;
end;

procedure TFFinanceiro.NaoImplemtadoAinda;
begin
    Informacao('Não implementado ainda');
end;

procedure TFFinanceiro.getRelatorio(pRelatorio:String; pRelatorioDesc:String='');
begin
  if ChamaRelatorioDesign(frxReport1,'AFINANCEIRO',pRelatorio) then
  begin
    getVariavelDesign('USUARIO',IntToStr(DadosLogin.Id));
    getVariavelDesign('NOMEUSUARIO',QuotedStr(DadosLogin.Nome));
    ImprimirAlterarRelatorio(0,pRelatorio,pRelatorioDesc);
  end;
end;

procedure TFFinanceiro.PagamentoporCCustoAnualExecute(Sender: TObject);
begin
  getRelatorio('PagamentosPorCentroCustoAnual', 'Pagamentos Por Centro de Custo - Anual');
end;

procedure TFFinanceiro.PagamentoDetalhadoMesExecute(Sender: TObject);
begin
  getRelatorio('PagamentoDetalhadoMensal','Pagamento Detalhado - Mensal');
end;

procedure TFFinanceiro.cad_BancoExecute(Sender: TObject);
begin
  FCadBancos := TFCadBancos.Create(nil);
  FCadBancos.ShowModal;
  FCadBancos.Free;
end;

procedure TFFinanceiro.aTransferirParcDetExecute(Sender: TObject);
begin
  //FCadTransferirParcDet := TFCadTransferirParcDet.Create(nil);
  //FCadTransferirParcDet.ShowModal;
  //FCadTransferirParcDet.Free;
end;

procedure TFFinanceiro.cad_UsuariosExecute(Sender: TObject);
begin
  FCadUsuarios := TFCadUsuarios.Create(nil);
  FCadUsuarios.ShowModal;
  FCadUsuarios.Free;
end;

procedure TFFinanceiro.PagamentoporCentroCustoMensal1Click(
  Sender: TObject);
begin
  getRelatorio('PagamentosPorCentroCustoMensal','Pagamentos Por Centro de Custo - Mensal');
end;

procedure TFFinanceiro.DespesascomFarmcia1Click(Sender: TObject);
begin
  getRelatorio('\Farmacia\RelFarmacia');
end;

procedure TFFinanceiro.DespesasporCentroCustoMensal1Click(Sender: TObject);
begin
  getRelatorio('PagamentoMensal','Pagamentos a relaizar - Mensal');
end;

procedure TFFinanceiro.aTitulosAReceberExecute(Sender: TObject);
begin
  FCadTitulos2 := TFCadTitulos2.Create(nil);
  FCadTitulos2.FPagarReceber := 1;
  FCadTitulos2.ShowModal;
  FCadTitulos2.free;
end;

procedure TFFinanceiro.cont_FarmaciaExecute(Sender: TObject);
begin
  NaoDesenvolvidoAinda;
end;

procedure TFFinanceiro.cont_EmprestimoExecute(Sender: TObject);
begin
  FCadEmprestimo := TFCadEmprestimo.Create(nil);
  FCadEmprestimo.FPagarReceber := 0;
  FCadEmprestimo.ShowModal;
  FCadEmprestimo.Free;
end;

procedure TFFinanceiro.cad_AquisicaoExecute(Sender: TObject);
begin
  FCadAquisicao := TFCadAquisicao.create(nil);
  FCadAquisicao.ShowModal;
  FCadAquisicao.Free;
end;

procedure TFFinanceiro.cad_CentroCustoExecute(Sender: TObject);
begin
  FCadCentroCusto := TFCadCentroCusto.Create(nil);
  FCadCentroCusto.ShowModal;
  FCadCentroCusto.Free;
end;

procedure TFFinanceiro.cad_CategoriaGrupoExecute(Sender: TObject);
begin
  FCadCategoriaGrupo := TFCadCategoriaGrupo.Create(nil);
  FCadCategoriaGrupo.ShowModal;
  FCadCategoriaGrupo.Free;
end;

procedure TFFinanceiro.cad_CategoriaExecute(Sender: TObject);
begin
//
end;

procedure TFFinanceiro.con_CondominioExecute(Sender: TObject);
begin
  FCadControleCondominio := TFCadControleCondominio.Create(nil);
  FCadControleCondominio.ShowModal;
  FCadControleCondominio.Free;
end;

procedure TFFinanceiro.con_OrcamentoExecute(Sender: TObject);
begin
  FCadOrcamentos := TFCadOrcamentos.Create(nil);
  FCadOrcamentos.ShowModal;
  FCadOrcamentos.Free;
end;

procedure TFFinanceiro.ApplicationEvents1Activate(Sender: TObject);
begin
  Application.OnMessage := ProcessaMsg;
end;

procedure TFFinanceiro.ProcessaMsg(var Msg: TMsg; var Handler: Boolean);
begin
     if (Msg.message = WM_KEYDOWN) then
        if not (Screen.ActiveControl is TCustomMemo) and not (Screen.ActiveControl is TButtonControl) then
        begin
             if not (Screen.ActiveControl is TCustomControl) then
             begin
                if (Msg.wParam = VK_Down) and
                    not(Screen.ActiveControl is TListBox) and
                    not(Screen.ActiveControl is TComboBox) and
                    not(Screen.ActiveControl is TwwDBLookupCombo)
                    then
                   Msg.wParam:= VK_Tab;
                if (Msg.wParam = VK_UP) and
                    not(Screen.ActiveControl is TListBox) and
                    not(Screen.ActiveControl is TComboBox) and
                    not(Screen.ActiveControl is TwwDBLookupCombo)
                   then
                begin
                   Msg.wParam:= VK_CLEAR;
                   Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
                end;
                //if (Msg.wParam = VK_Escape) and
                //  not (Screen.ActiveForm is TFormPrincipal) then
                //   Screen.ActiveForm.Close;
             end;
             if (Msg.wParam = VK_Return) then
                Msg.wParam:= VK_Tab;
        end;
end;

procedure TFFinanceiro.mesc_PessoasExecute(Sender: TObject);
begin
  NaoImplemtadoAinda;

end;

procedure TFFinanceiro.mesc_MovFinanceiroExecute(Sender: TObject);
begin
  NaoImplemtadoAinda;

end;

procedure TFFinanceiro.con_ConsultaMedicaExecute(Sender: TObject);
begin
  FCadConsultaMedica := TFCadConsultaMedica.Create(nil);
  FCadConsultaMedica.ShowModal;
  FCadConsultaMedica.Free;
end;

procedure TFFinanceiro.con_LimiteParceladoExecute(Sender: TObject);
begin
//
end;

procedure TFFinanceiro.RelLimiteCreditosExecute(Sender: TObject);
begin
  if ChamaRelatorioDesign(frxReport1,'AFINANCEIRO','LimiteCreditos') then
  begin
    getVariavelDesign('USUARIO',IntToStr(DadosLogin.Id));
    getVariavelDesign('NOMEUSUARIO',QuotedStr(DadosLogin.Nome));
    ImprimirAlterarRelatorio(0,'LimiteCreditos','Relatório de Limite Creditos');
  end;
end;

procedure TFFinanceiro.RelCartaoCreditoDetalhadoExecute(Sender: TObject);
begin
  if ChamaRelatorioDesign(frxReport1,'AFINANCEIRO','CartaoCreditoDetalhado') then
  begin
    getVariavelDesign('USUARIO',IntToStr(DadosLogin.Id));
    getVariavelDesign('NOMEUSUARIO',QuotedStr(DadosLogin.Nome));
    ImprimirAlterarRelatorio(0,'CartaoCreditoDetalhado','Relatório de Cartão de Credito Detalhado');
  end;
end;

procedure TFFinanceiro.RelCartaoCreditoMensalExecute(Sender: TObject);
begin
  getRelatorio('PagamentoMensalCartao','Pagamentos a relaizar Cartao - Mensal');
end;

end.



