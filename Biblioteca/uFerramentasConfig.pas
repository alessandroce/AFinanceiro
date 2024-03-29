unit uFerramentasConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFFerramentasConfig = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    btSair: TBitBtn;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    BitBtn3: TBitBtn;
    procedure btSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure calcular_kilometragem(p_km,p_dias,p_kmporlitro,p_valorcomb:String;var p_total:String);
  public
    { Public declarations }
  end;

var
  FFerramentasConfig: TFFerramentasConfig;

implementation

uses uFerramentas, uClassAvisos;

{$R *.dfm}

procedure TFFerramentasConfig.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFFerramentasConfig.BitBtn1Click(Sender: TObject);
begin
  Edit1.Text := IntToStr( DifDateUtil(FormatDateTime('dd/mm/yyyy',DateTimePicker1.date),FormatDateTime('dd/mm/yyyy',DateTimePicker2.date))+1 );
end;

procedure TFFerramentasConfig.BitBtn2Click(Sender: TObject);
var quant, valor1, valor2,result1,result2 : Extended;
begin
  if ((Edit3.Text<>'') and
      (Edit4.Text<>'') and
      (Edit5.Text<>'')) then
  begin
    try
    quant   := StrToFloatDef( Edit3.Text,0);

    valor1  := StrToFloatDef( Edit4.Text,0);
    valor2  := StrToFloatDef( Edit5.Text,0);

    result1 := quant * valor1;
    result2 := quant * valor2;

    Edit2.Text := FormatFloat('0.00',result1);
    Edit6.Text := FormatFloat('0.00',result2);

    except
      on e : Exception do
      begin
        Aviso('Erro '+e.Message);
      end;
    end;
  end;
end;

procedure TFFerramentasConfig.CheckBox1Click(Sender: TObject);
var quant : Extended;
begin
  if Edit1.Text='' then
    Exit;
  quant := StrToFloatDef( Edit1.Text,0);
  quant := quant *2;

  if CheckBox1.Checked then
    Edit3.Text := FormatFloat('0',quant)
  else
    Edit3.Text := '44';
//  BitBtn2.Click;
end;

procedure TFFerramentasConfig.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
end;

procedure TFFerramentasConfig.calcular_kilometragem(p_km,p_dias,p_kmporlitro,p_valorcomb:String;var p_total:String);
begin
  if ((p_km='') or (p_dias='') or (p_kmporlitro='') or (p_valorcomb='')) then
  begin
    ShowMessage('Preencher todos os campos.');
    Exit;
  end;
  p_total := FormatFloat('0.00',((StrToInt(p_km) * StrToInt(p_dias)) / StrToFloat(p_kmporlitro)) * StrToFloat(p_valorcomb));
end;

procedure TFFerramentasConfig.BitBtn3Click(Sender: TObject);
var total : String;
begin
  calcular_kilometragem(Edit7.Text,Edit8.Text,Edit9.Text,Edit10.Text,total);
  Edit11.Text := total;
end;

end.
