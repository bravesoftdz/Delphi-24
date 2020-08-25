unit USecretaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmSecretaria = class(TForm)
    PanelTesouraria: TPanel;
    LabelnomeCentral: TLabel;
    PanelBotoes: TPanel;
    btnIncluir: TcxButton;
    btnSalvar: TcxButton;
    btnExcluir: TcxButton;
    btnCancelar: TcxButton;
    PageControlSecretaria: TcxPageControl;
    TabSheetSecretaria: TcxTabSheet;
    Grid1DBTableViewGrid1DBTableViewSecretaria: TcxGridDBTableView;
    GridLevelGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    TcxGridDBColumnGrid1DBTableViewGrid1DBTableViewSecretariaColumnID: TcxGridDBColumn;
    TcxGridDBColumnGrid1DBTableViewGrid1DBTableViewSecretariaColumnNome: TcxGridDBColumn;
    TcxGridDBColumnGrid1DBTableViewGrid1DBTableViewSecretariaColumnIdade: TcxGridDBColumn;
    TcxGridDBColumnGrid1DBTableViewGrid1DBTableViewSecretariaColumnCargo: TcxGridDBColumn;
    TcxGridDBColumnGrid1DBTableViewGrid1DBTableViewSecretariaColumnAtivo: TcxGridDBColumn;
    TcxGridDBColumnGrid1DBTableViewGrid1DBTableViewSecretariaColumnSegurado: TcxGridDBColumn;
    TcxGridDBColumnGrid1DBTableViewGrid1DBTableViewSecretariaColumnFichaMedica: TcxGridDBColumn;
    TcxGridDBColumnGrid1DBTableViewGrid1DBTableViewSecretariaColumnInativar: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSecretaria: TfrmSecretaria;

implementation

{$R *.dfm}

end.
