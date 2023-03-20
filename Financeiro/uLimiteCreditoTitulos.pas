unit uLimiteCreditoTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadrao, ComCtrls, ExtCtrls, DBClient, DB, DBTables, Grids,
  DBGrids, Buttons, IBCustomDataSet, IBQuery;

type
  TFLimiteCreditoTitulos = class(TFFormPadrao)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBGrid1: TDBGrid;
    cdsLimite: TDataSource;
    qLimiteMax: TIBQuery;
    qLimiteMaxLIM_VALOR: TIBBCDField;
    qLimite: TIBDataSet;
    qLimiteLIM_ID: TIntegerField;
    qLimiteLIM_FIN_ID: TIntegerField;
    qLimiteLIM_VALOR: TIBBCDField;
    qLimiteLIM_DATA: TDateField;
    qLimiteLIM_DH_CA: TDateTimeField;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qLimiteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure UltimoLimite;
  public
    { Public declarations }
    FId : Integer;
    FValorLimite : Double;
  end;

var
  FLimiteCreditoTitulos: TFLimiteCreditoTitulos;

implementation

uses uDMConexao;

{$R *.dfm}

procedure TFLimiteCreditoTitulos.FormShow(Sender: TObject);
begin
  inherited;
  qLimite.Close;
  qLimite.ParamByName('ID').AsInteger := FId;
  qLimite.Open;
end;

procedure TFLimiteCreditoTitulos.UltimoLimite;
begin
  qLimiteMax.Close;
  qLimiteMax.ParamByName('ID').AsInteger := FId;
  qLimiteMax.Open;
  FValorLimite := qLimiteMaxLIM_VALOR.AsFloat;
end;

procedure TFLimiteCreditoTitulos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  try
    if (qLimite.State in [dsEdit, dsInsert]) then
      qLimite.Post;
    UltimoLimite;
    Close;
  Except
    on E : Exception do
    begin
      ShowMessage('Erro. ' + E.Message);
    end;
  end;
end;

procedure TFLimiteCreditoTitulos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFLimiteCreditoTitulos.qLimiteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qLimiteLIM_FIN_ID.AsInteger := FId;
end;

end.
