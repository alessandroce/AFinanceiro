program AFinanceiro;

uses
  Forms,
  uMain in 'uMain.pas' {FFinanceiro},
  uDMConexao in 'Database\uDMConexao.pas' {DMConexao: TDataModule},
  uTitulosVencidos in 'Financeiro\uTitulosVencidos.pas' {FTitulosVencidos},
  uTitulosPeriodo in 'Financeiro\uTitulosPeriodo.pas' {FTitulosPeriodo},
  uCadastro2 in 'Cadastro\uCadastro2.pas' {FCadastro2},
  uTitulosAnual in 'Financeiro\uTitulosAnual.pas' {FTitulosAnual},
  uCadPessoas in 'Cadastro\uCadPessoas.pas' {FCadPessoas},
  uCadTitulos in 'Financeiro\uCadTitulos.pas' {FCadTitulos},
  uEmprestimoBaixa in 'Financeiro\uEmprestimoBaixa.pas' {FEmprestimoBaixa},
  uCadastro in 'Cadastro\uCadastro.pas' {FCadastro},
  uClassAvisos in 'Biblioteca\uClassAvisos.pas',
  uSaldoAnual in 'Financeiro\uSaldoAnual.pas' {FSaldoAnual},
  uClassServidorIni in 'Biblioteca\uClassServidorIni.pas',
  uLogin in 'Biblioteca\uLogin.pas' {FLogin},
  uFerramentas in 'Biblioteca\uFerramentas.pas',
  uTituloDetalhe in 'Financeiro\uTituloDetalhe.pas' {FTituloDetalhe},
  uDetalheParcelas in 'Financeiro\uDetalheParcelas.pas' {FDetalheParcelas},
  uRelEmprestimo in 'Financeiro\uRelEmprestimo.pas' {FRelEmprestimos},
  uRelSaldoMensal in 'Financeiro\uRelSaldoMensal.pas' {FRelSaldoMensal},
  uRelPlanoContas in 'Financeiro\uRelPlanoContas.pas' {FRelatorioPlanoContas},
  uFerramentasConfig in 'Biblioteca\uFerramentasConfig.pas' {FFerramentasConfig},
  uCadPrevGastosFuturos in 'Financeiro\uCadPrevGastosFuturos.pas' {FPrevGastosFuturos},
  uPlanilha in 'Financeiro\uPlanilha.pas' {FPlanilha},
  uCadUsuarios in 'Cadastro\uCadUsuarios.pas' {FCadUsuarios},
  uCadTitulos2 in 'Financeiro\uCadTitulos2.pas' {FCadTitulos2},
  uCadBancos in 'Financeiro\uCadBancos.pas' {FCadBancos},
  uInformeDadosParcelasDet in 'Financeiro\uInformeDadosParcelasDet.pas' {FInformeDadosParcelasDet},
  uTransferirParcelasDet in 'Financeiro\uTransferirParcelasDet.pas' {FTransferirParcelasDet},
  Udesign in 'Biblioteca\Udesign.pas' {Fdesign},
  uimprelat in 'Biblioteca\uimprelat.pas' {Fimprel},
  uCadEmprestimo in 'Cadastro\uCadEmprestimo.pas' {FCadEmprestimo},
  uCadAquisicao in 'Cadastro\uCadAquisicao.pas' {FCadAquisicao},
  uCadCentroCusto in 'Financeiro\uCadCentroCusto.pas' {FCadCentroCusto},
  uCadCategoriaGrupo in 'Cadastro\uCadCategoriaGrupo.pas' {FCadCategoriaGrupo},
  uCadCategoria in 'Cadastro\uCadCategoria.pas' {FCadCategoria},
  uTitulosAPagar in 'Financeiro\uTitulosAPagar.pas' {FTitulosAPagar},
  uRelatorio in 'Biblioteca\uRelatorio.pas' {FRelatorio},
  uCadControleCondominio in 'Cadastro\uCadControleCondominio.pas' {FCadControleCondominio},
  uCadOrcamentos in 'Financeiro\uCadOrcamentos.pas' {FCadOrcamentos},
  uCadConsultaMedica in 'Cadastro\uCadConsultaMedica.pas' {FCadConsultaMedica},
  uFormPadrao in 'Biblioteca\uFormPadrao.pas' {FFormPadrao},
  uCadLimiteCreditoTitulos in 'Financeiro\uCadLimiteCreditoTitulos.pas' {FCadLimiteCreditoTitulos};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'AFinanceiro';
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFFinanceiro, FFinanceiro);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFdesign, Fdesign);
  Application.CreateForm(TFimprel, Fimprel);
  Application.CreateForm(TFRelatorio, FRelatorio);
  Application.Run;
end.
