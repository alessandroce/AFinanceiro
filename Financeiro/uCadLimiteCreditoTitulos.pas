unit uCadLimiteCreditoTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastro, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, IBQuery, IBCustomDataSet, StdCtrls, ExtCtrls,
  Buttons, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls;

type
  TFCadLimiteCreditoTitulos = class(TFCadastro)
    qConsultaLIM_ID: TIntegerField;
    qConsultaLIM_FIN_ID: TIntegerField;
    qConsultaLIM_VALOR: TIBBCDField;
    qConsultaLIM_DATA: TDateField;
    qConsultaLIM_DH_CA: TDateTimeField;
    cxGrid1DBTableView1LIM_ID: TcxGridDBColumn;
    cxGrid1DBTableView1LIM_FIN_ID: TcxGridDBColumn;
    cxGrid1DBTableView1LIM_VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1LIM_DATA: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    FTitulo : Integer;
  end;

var
  FCadLimiteCreditoTitulos: TFCadLimiteCreditoTitulos;

implementation

{$R *.dfm}

end.
