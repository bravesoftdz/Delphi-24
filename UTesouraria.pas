unit UTesouraria;

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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar, cxMaskEdit,
  cxButtons, cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmTesouraria = class(TForm)
    PanelTesouraria: TPanel;
    LabelnomeCentral: TLabel;
    PageControlPrincipal: TcxPageControl;
    TabSheetPagar: TcxTabSheet;
    TabSheetReceber: TcxTabSheet;
    TabSheetBalancete: TcxTabSheet;
    TextEditID: TcxTextEdit;
    LabelID: TLabel;
    PanelBotoes: TPanel;
    btnIncluir: TcxButton;
    btnSalvar: TcxButton;
    btnExcluir: TcxButton;
    btnCancelar: TcxButton;
    Label1: TLabel;
    DBComboBoxConta: TcxDBComboBox;
    Label2: TLabel;
    TextEditEditMembro: TcxTextEdit;
    LabeldtVencimento: TLabel;
    DateEditVencimento: TcxDateEdit;
    LabeldtPagamento: TLabel;
    DateEditPagamento: TcxDateEdit;
    LabelDescricao: TLabel;
    TextEditDescricao: TcxTextEdit;
    LabelValor: TLabel;
    TextEditValor: TcxTextEdit;
    LabelObservacao: TLabel;
    cxDBMemoObservacao: TcxDBMemo;
    Panel2: TPanel;
    btn5: TcxButton;
    btn6: TcxButton;
    btn7: TcxButton;
    btn8: TcxButton;
    Label3: TLabel;
    extEdit1: TcxTextEdit;
    Label4: TLabel;
    DBComboBoxContaReceber: TcxDBComboBox;
    Label5: TLabel;
    TextEditMembro: TcxTextEdit;
    Label6: TLabel;
    cxdtdtDateEditVencimentoReceber: TcxDateEdit;
    Label7: TLabel;
    cxdtdtDateEditVencimentoPagamento: TcxDateEdit;
    Label8: TLabel;
    TextEditEditDescricao: TcxTextEdit;
    Label9: TLabel;
    TextEditValorReceber: TcxTextEdit;
    Label10: TLabel;
    DBMemoObservacaoReceber: TcxDBMemo;
    GridLevelBalancete: TcxGridLevel;
    cxGridBalancete: TcxGrid;
    cxgrdbtblvwBalancete: TcxGridDBTableView;
    TcxGridDBColumnBalanceteColumnID: TcxGridDBColumn;
    TcxGridDBColumnBalanceteColumnDescricao: TcxGridDBColumn;
    TcxGridDBColumnBalanceteColumnMembro: TcxGridDBColumn;
    TcxGridDBColumnBalanceteColumnPagamento: TcxGridDBColumn;
    TcxGridDBColumnBalanceteDespesa: TcxGridDBColumn;
    TcxGridDBColumnBalanceteReceita: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTesouraria: TfrmTesouraria;

implementation

{$R *.dfm}

end.
