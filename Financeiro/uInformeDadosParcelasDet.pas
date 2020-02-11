unit uInformeDadosParcelasDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, wwdbdatetimepicker, Mask, ComCtrls;

type
  TFInformeDadosParcelasDet = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edDescricao: TEdit;
    btCancelar: TBitBtn;
    btOK: TBitBtn;
    Bevel1: TBevel;
    edDataDoc: TDateTimePicker;
    edDataDocMsk: TMaskEdit;
    procedure btOKClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edDataDocChange(Sender: TObject);
    procedure edDataDocMskExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FCancelado : Boolean;
    FDataDoc : String;
    FDescricao : String;
  end;

var
  FInformeDadosParcelasDet: TFInformeDadosParcelasDet;

implementation

uses uClassAvisos;

{$R *.dfm}

procedure TFInformeDadosParcelasDet.btOKClick(Sender: TObject);
begin
  if edDescricao.Text='' then
  begin
    Aviso('Informe a Descrição.');
    Exit;
  end;
  FDataDoc   := edDataDocMsk.Text;
  FDescricao := edDescricao.Text;
  Close;
end;

procedure TFInformeDadosParcelasDet.btCancelarClick(Sender: TObject);
begin
  FCancelado := False;
  FDataDoc   := '';
  FDescricao := '';
  Close;
end;

procedure TFInformeDadosParcelasDet.FormShow(Sender: TObject);
begin
  FCancelado := True;
  edDataDocMsk.Text := FDataDoc;
  edDescricao.SetFocus;
end;

procedure TFInformeDadosParcelasDet.edDataDocChange(Sender: TObject);
begin
  edDataDocMsk.Text := FormatDateTime('dd/mm/yyyy',edDataDoc.DateTime);
end;

procedure TFInformeDadosParcelasDet.edDataDocMskExit(Sender: TObject);
begin
  try
    edDataDoc.DateTime := StrToDateTime(edDataDocMsk.Text);
  except
    Aviso('Data inválida.');
  end;
end;

end.
