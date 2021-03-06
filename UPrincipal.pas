unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, dxGDIPlusClasses, UUnidades,
  UEspecialidades, UClasses, UDesbravadores, dmDados, cxControls, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC;

type
  TfrmPrincipal = class(TForm)
    PanelBotoes: TPanel;
    btnUnidades: TcxButton;
    btnEspecialidades: TcxButton;
    btnClasses: TcxButton;
    btnDesbravadores: TcxButton;
    LabelnomeCentral: TLabel;
    PanelCentral: TPanel;
    imgDesbravador: TImage;
    btnSair: TcxButton;
    PageControlPrincipal: TcxPageControl;
    TabSheetPrincipal: TcxTabSheet;
    PanelPrincipal: TPanel;
    btnTesouraria: TcxButton;
    btnSecretaria: TcxButton;
    btnPatrimonios: TcxButton;
    btnFerramentas: TcxButton;
    btnmeuClube: TcxButton;
    btnRelatórios: TcxButton;
    procedure btnUnidadesClick(Sender: TObject);
    procedure btnEspecialidadesClick(Sender: TObject);
    procedure btnClassesClick(Sender: TObject);
    procedure btnDesbravadoresClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnRelatóriosClick(Sender: TObject);
    procedure btnTesourariaClick(Sender: TObject);
    procedure btnSecretariaClick(Sender: TObject);
    procedure btnPatrimoniosClick(Sender: TObject);
    procedure btnFerramentasClick(Sender: TObject);
    procedure btnmeuClubeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UTesouraria, USecretaria, UPatrimonios, UFerramentas, UClube;


{$R *.dfm}

procedure TfrmPrincipal.btnClassesClick(Sender: TObject);
begin
  try
    frmClasses := TFrmClasses.Create(nil);
    frmClasses.ShowModal;
  finally
    FreeAndNil(frmClasses);
  end;
end;

procedure TfrmPrincipal.btnDesbravadoresClick(Sender: TObject);
begin
  try
    frmDesbravadores := TfrmDesbravadores.Create(nil);
    frmDesbravadores.ShowModal;
  finally
    FreeAndNil(frmDesbravadores);
  end;
end;

procedure TfrmPrincipal.btnEspecialidadesClick(Sender: TObject);
begin
  try
    frmEspecialidades := TFrmEspecialidades.Create(nil);
    frmEspecialidades.ShowModal;
  finally
    FreeAndNil(frmEspecialidades);
  end;
end;

procedure TfrmPrincipal.btnFerramentasClick(Sender: TObject);
begin
  try
    frmFerramentas := TfrmFerramentas.Create(nil);
    frmFerramentas.ShowModal;
  finally
    FreeAndNil(frmFerramentas);
  end;
end;

procedure TfrmPrincipal.btnmeuClubeClick(Sender: TObject);
begin
  try
    frmClube := TfrmClube.Create(nil);
    frmClube.ShowModal;
  finally
    FreeAndNil(frmClube);
  end;
end;

procedure TfrmPrincipal.btnPatrimoniosClick(Sender: TObject);
begin
  try
    frmPatrimonios := TfrmPatrimonios.Create(nil);
    frmPatrimonios.ShowModal;
  finally
    FreeAndNil(frmPatrimonios);
  end;
end;

procedure TfrmPrincipal.btnRelatóriosClick(Sender: TObject);
begin
  if Application.MessageBox('Em Desenvolvimento!', 'Informaç?o', MB_OK+MB_ICONWARNING) = mrYes then
  begin
    Exit;
  end
  else
  begin
    Abort;
  end;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.btnSecretariaClick(Sender: TObject);
begin
  try
    frmSecretaria := TfrmSecretaria.Create(nil);
    frmSecretaria.ShowModal;
  finally
    FreeAndNil(frmSecretaria);
  end;
end;

procedure TfrmPrincipal.btnTesourariaClick(Sender: TObject);
begin
  try
    frmTesouraria := TfrmTesouraria.Create(nil);
    frmTesouraria.ShowModal;
  finally
    FreeAndNil(frmTesouraria);
  end;
end;

procedure TfrmPrincipal.btnUnidadesClick(Sender: TObject);
begin
  try
    frmUnidades := TfrmUnidades.Create(nil);
    frmUnidades.ShowModal;
  finally
    FreeAndNil(frmUnidades);
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmPrincipal := nil;
end;

end.

