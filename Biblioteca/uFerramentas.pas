unit uFerramentas;

interface

uses Windows, Forms, Dialogs, SysUtils, frxClass, uClassServidorIni;

type
  TRLogin = Record
    Id    : Integer;
    Login : String;
    Nome  : String;
    Admin : Boolean;
  end;
  TDadosServidorIni = Record
    Executavel : String;
    SoftHouse  : String;
    Banco      : String;
    Relatorios : String;
    Skin       : String;
  end;
var
  DadosLogin : TRLogin;
  ServidorIni : TDadosServidorIni;
  Ini : TServidorIni;


  Function DifDateUtil(dataini,datafin:string):integer;
  function ChamaRelatorioDesign(frxRelatorio : TfrxReport; sPrograma, sNomeRelatorio : String):Boolean;
  function ImprimirAlterarRelatorio(pID : Integer;pArquivo : String;pNomeRel : String):Boolean;
  function Continua(value:Boolean;pMsg:String):Boolean;overload;
  function Continua(value:Boolean;msg:Array of string):Boolean;overload;
  function mensagem(tipo: char; msg: string; barra: string): boolean;
  procedure NaoDesenvolvidoAinda;
  procedure getVariavelDesign(pCampo, pConteudo:String);

implementation

uses Udesign, uimprelat;

Function DifDateUtil(dataini,datafin:string):integer;
var a,b,c:tdatetime;
    ct,s:integer;
begin
  if StrToDate(DataFin) < StrtoDate(DataIni) then
  begin
    Result := 0;
    exit;
  end;
  ct := 0;
  s := 1;
  a := strtodate(dataFin);
  b := strtodate(dataIni);
  if a > b then
  begin
    c := a;
    a := b;
    b := c;
    s := 1;
  end;
  a := a + 1;
  while (dayofweek(a)<>2) and (a <= b) do
  begin
    if dayofweek(a) in [2..6] then
    inc(ct);
    a := a + 1;
  end;
  ct := ct + round((5*int((b-a)/7)));
  a := a + (7*int((b-a)/7));
  while a <= b do
  begin
    if dayofweek(a) in [2..6] then
    inc(ct);
    a := a + 1;
  end;
  if ct < 0 then
    ct := 0;
  result := s*ct;
end;

function ChamaRelatorioDesign(frxRelatorio : TfrxReport; sPrograma, sNomeRelatorio : String):Boolean;
var
  i : Integer;
begin
  Result := True;
  frxRelatorio.Clear;
  Ini := TServidorIni.create;
  with Fdesign do
  begin
    try
      if (pos('.fr3',sNomeRelatorio)=0) then
        sNomeRelatorio := sNomeRelatorio+'.fr3';
      CarregarArquivo(Ini.Ler_ArquivoIni(sPrograma,'Relatorios')+'\',sNomeRelatorio);
    except
      Result := False;
    end;
  end;
end;

function ImprimirAlterarRelatorio(pID : Integer;pArquivo : String;pNomeRel : String):Boolean;
var vCaminhoIni : String;
    sCaminhoImagem : String;
    sNomeImagem : String;
    sImagem : String;
begin
    if DadosLogin.Admin then
    begin
      Fimprel                     := TFimprel.create(nil);
      Fimprel.UsarImagemLogo      := True;
      Fimprel.FId                 := pId;
      Fimprel.FArquivo            := pArquivo;
      Fimprel.FNomeRelatorio      := pNomeRel;
      Fimprel.FDescricaoRelatorio := Fdesign.DescricaoRelatorio;
      Fimprel.FCaminhoIni         := Fdesign.CaminhoFR3;
      Fimprel.ShowModal;
      Fimprel.Free;
      Application.ProcessMessages;
    end
    else
    begin
      Fdesign.frReport1.PrepareReport;
      Fdesign.frReport1.ShowPreparedReport;
      Application.ProcessMessages;
    end;
end;

function Continua(value:Boolean;pMsg:String):Boolean;
begin
  Result := value;
  if not Result then
    if (pMsg<>'') then
      ShowMessage(pMsg);
end;

function Continua(value: Boolean; msg: array of string): Boolean;
var sTipo,sMsg,sBarra : String;
    i : Integer;
begin
  Result := value;
  for i := 0 to Length(msg) do
  begin
    case i of
      0 : sTipo  := msg[i];
      1 : sMsg   := msg[i];
      2 : sBarra := msg[i];
    end;
  end;
  if not Result then
    mensagem(sTipo[1],sMsg,sBarra);
end;

function mensagem(tipo: char; msg: string; barra: string): boolean;
begin
  try
    if tipo = 'A' then
    begin
       if (Application.MessageBox(PChar(msg), PChar(barra), MB_OKCANCEL + MB_DEFBUTTON2 + MB_ICONWARNING)) = IDOK then
          Result := True
       else
          Result := False;
    end;

    if tipo = 'I' then
       Application.MessageBox(PChar(msg), PChar(barra), MB_OK+MB_ICONINFORMATION);
    if tipo = 'E' then
       Application.MessageBox(PChar(msg), PChar(barra), MB_OK+MB_ICONERROR);
    if tipo = 'Q' then
    begin
       if (Application.MessageBox(PChar(msg), PChar(barra), MB_YESNO+MB_ICONQUESTION)) = IDYES then
          result := True
       else
          result := False;
    end;
  Except
  On E: Exception do
     ShowMessage(e.Message);
  end;
end;

procedure NaoDesenvolvidoAinda;
begin
  ShowMessage('Não desenvolvido ainda.');
end;

procedure getVariavelDesign(pCampo, pConteudo:String);
begin
  Fdesign.frReport1.Variables[pCampo] := pConteudo;
end;

end.
