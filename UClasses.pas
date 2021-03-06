unit UClasses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxButtonEdit, EdComboSQLFD, dxGDIPlusClasses, cxCheckBox, dmDados, cxDropDownEdit, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC;

type
  TfrmClasses = class(TForm)
    PanelCentral: TPanel;
    LabelnomeCentral: TLabel;
    PanelBotoes: TPanel;
    btnIncluir: TcxButton;
    btnSalvar: TcxButton;
    btnExcluir: TcxButton;
    LabelDesbravadorLiderIdade: TLabel;
    LabelClassesRegulares: TLabel;
    imgAmigo: TImage;
    DBCheckBoxAmigo: TcxDBCheckBox;
    LabelAmigo: TLabel;
    imgCompanheiro: TImage;
    DBCheckBoxCompanheiro: TcxDBCheckBox;
    LabelCompanheiro: TLabel;
    imgPesquisador: TImage;
    DBCheckBoxPesquisador: TcxDBCheckBox;
    LabelPesquisador: TLabel;
    imgPioneiro: TImage;
    DBCheckBoxPioneiro: TcxDBCheckBox;
    LabelPioneiro: TLabel;
    imgExcursionista: TImage;
    DBCheckBoxExcursionista: TcxDBCheckBox;
    LabelExcursionista: TLabel;
    imgGuia: TImage;
    DBCheckBoxGuia: TcxDBCheckBox;
    LabelGuia: TLabel;
    LabelClassesAvancadas: TLabel;
    imgAmigoNatureza: TImage;
    imgCompanheiroExcursionismo: TImage;
    imgPesquisadorCampos: TImage;
    imgPioneiroNovas: TImage;
    imgExcursionistaMata: TImage;
    imgGuiaExploracao: TImage;
    DBCheckBoxAmigoNatureza: TcxDBCheckBox;
    LabelAmigoNatureza: TLabel;
    DBCheckBoxCompanheiroExcursionismo: TcxDBCheckBox;
    LabelCompanheiroExcursionismo: TLabel;
    DBCheckBoxPesquisadorCampos: TcxDBCheckBox;
    LabelPesquisadroCampos: TLabel;
    DBCheckBoxPioneiroNovas: TcxDBCheckBox;
    LabelPioneiroNovas: TLabel;
    DBCheckBoxExcursionistaMata: TcxDBCheckBox;
    LabelExcursionistaMata: TLabel;
    DBCheckBoxGuiaExploracao: TcxDBCheckBox;
    LabelGuiaExploracao: TLabel;
    DBTextEditID: TcxDBTextEdit;
    LabelID: TLabel;
    DBComboBoxDesbravadorLider: TcxDBComboBox;
    PageControlPrincipal: TcxPageControl;
    TabSheetClasses: TcxTabSheet;
    btnCancelar: TcxButton;
    LabelnomeCompleto: TLabel;
    DBTextEditNomeCompleto: TcxDBTextEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBComboBoxDesbravadorLiderPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClasses: TfrmClasses;

implementation

{$R *.dfm}

procedure TfrmClasses.btnCancelarClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Classes.DataSet.Cancel;
end;

procedure TfrmClasses.btnExcluirClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Classes.DataSet.Delete;
end;

procedure TfrmClasses.btnIncluirClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Classes.DataSet.Close;
  dmDesbravador.DataSource_Classes.DataSet.Open;
  dmDesbravador.DataSource_Classes.DataSet.Insert;
end;

procedure TfrmClasses.btnSalvarClick(Sender: TObject);
begin
  dmDesbravador.DataSource_Classes.DataSet.Post;
end;

procedure TfrmClasses.DBComboBoxDesbravadorLiderPropertiesChange(Sender: TObject);
begin
  if (DBComboBoxDesbravadorLider.Text = '10') then
  begin
    // Classe Amigo
    imgAmigo.Enabled := True;
    LabelAmigo.Enabled := True;
    DBCheckBoxAmigo.Enabled := True;
    // Classe Companheiro
    imgCompanheiro.Enabled := False;
    LabelCompanheiro.Enabled := False;
    DBCheckBoxCompanheiro.Enabled := False;
    // Classe Pesquisador
    imgPesquisador.Enabled := False;
    LabelPesquisador.Enabled := False;
    DBCheckBoxPesquisador.Enabled := False;
    // Classe Pioneiro
    imgPioneiro.Enabled := False;
    LabelPioneiro.Enabled := False;
    DBCheckBoxPioneiro.Enabled := False;
    //Classe Excursionista
    imgExcursionista.Enabled := False;
    LabelExcursionista.Enabled := False;
    DBCheckBoxExcursionista.Enabled := False;
    // Classe Guia
    imgGuia.Enabled := False;
    LabelGuia.Enabled := False;
    DBCheckBoxGuia.Enabled := False;
  end
  else if (DBComboBoxDesbravadorLider.Text = '11') then
  begin
    // Classe Amigo
    imgAmigo.Enabled := False;
    LabelAmigo.Enabled := False;
    DBCheckBoxAmigo.Enabled := False;
    // Classe Companheiro
    imgCompanheiro.Enabled := True;
    LabelCompanheiro.Enabled := True;
    DBCheckBoxCompanheiro.Enabled := True;
     // Classe Pesquisador
    imgPesquisador.Enabled := False;
    LabelPesquisador.Enabled := False;
    DBCheckBoxPesquisador.Enabled := False;
    // Classe Pioneiro
    imgPioneiro.Enabled := False;
    LabelPioneiro.Enabled := False;
    DBCheckBoxPioneiro.Enabled := False;
    //Classe Excursionista
    imgExcursionista.Enabled := False;
    LabelExcursionista.Enabled := False;
    DBCheckBoxExcursionista.Enabled := False;
    // Classe Guia
    imgGuia.Enabled := False;
    LabelGuia.Enabled := False;
    DBCheckBoxGuia.Enabled := False;
  end
  else if (DBComboBoxDesbravadorLider.Text = '12') then
  begin
     // Classe Amigo
    imgAmigo.Enabled := False;
    LabelAmigo.Enabled := False;
    DBCheckBoxAmigo.Enabled := False;
    // Classe Companheiro
    imgCompanheiro.Enabled := False;
    LabelCompanheiro.Enabled := False;
    DBCheckBoxCompanheiro.Enabled := False;
    // Classe Pesquisador
    imgPesquisador.Enabled := True;
    LabelPesquisador.Enabled := True;
    DBCheckBoxPesquisador.Enabled := True;
     // Classe Pioneiro
    imgPioneiro.Enabled := False;
    LabelPioneiro.Enabled := False;
    DBCheckBoxPioneiro.Enabled := False;
    //Classe Excursionista
    imgExcursionista.Enabled := False;
    LabelExcursionista.Enabled := False;
    DBCheckBoxExcursionista.Enabled := False;
    // Classe Guia
    imgGuia.Enabled := False;
    LabelGuia.Enabled := False;
    DBCheckBoxGuia.Enabled := False;
  end
  else if (DBComboBoxDesbravadorLider.Text = '13') then
  begin
     // Classe Amigo
    imgAmigo.Enabled := False;
    LabelAmigo.Enabled := False;
    DBCheckBoxAmigo.Enabled := False;
    // Classe Companheiro
    imgCompanheiro.Enabled := False;
    LabelCompanheiro.Enabled := False;
    DBCheckBoxCompanheiro.Enabled := False;
     // Classe Pesquisador
    imgPesquisador.Enabled := False;
    LabelPesquisador.Enabled := False;
    DBCheckBoxPesquisador.Enabled := False;
     // Classe Pioneiro
    imgPioneiro.Enabled := True;
    LabelPioneiro.Enabled := True;
    DBCheckBoxPioneiro.Enabled := True;
    //Classe Excursionista
    imgExcursionista.Enabled := False;
    LabelExcursionista.Enabled := False;
    DBCheckBoxExcursionista.Enabled := False;
    // Classe Guia
    imgGuia.Enabled := False;
    LabelGuia.Enabled := False;
    DBCheckBoxGuia.Enabled := False;
  end
  else if (DBComboBoxDesbravadorLider.Text = '14') then
  begin
     // Classe Amigo
    imgAmigo.Enabled := False;
    LabelAmigo.Enabled := False;
    DBCheckBoxAmigo.Enabled := False;
    // Classe Companheiro
    imgCompanheiro.Enabled := False;
    LabelCompanheiro.Enabled := False;
    DBCheckBoxCompanheiro.Enabled := False;
     // Classe Pesquisador
    imgPesquisador.Enabled := False;
    LabelPesquisador.Enabled := False;
    DBCheckBoxPesquisador.Enabled := False;
    // Classe Pioneiro
    imgPioneiro.Enabled := False;
    LabelPioneiro.Enabled := False;
    DBCheckBoxPioneiro.Enabled := False;
    // Classe Excursionista
    imgExcursionista.Enabled := True;
    LabelExcursionista.Enabled := True;
    DBCheckBoxExcursionista.Enabled := True;
    // Classe Guia
    imgGuia.Enabled := False;
    LabelGuia.Enabled := False;
    DBCheckBoxGuia.Enabled := False;
  end
  else if (DBComboBoxDesbravadorLider.Text = '15') then
  begin
     // Classe Amigo
    imgAmigo.Enabled := False;
    LabelAmigo.Enabled := False;
    DBCheckBoxAmigo.Enabled := False;
    // Classe Companheiro
    imgCompanheiro.Enabled := False;
    LabelCompanheiro.Enabled := False;
    DBCheckBoxCompanheiro.Enabled := False;
     // Classe Pesquisador
    imgPesquisador.Enabled := False;
    LabelPesquisador.Enabled := False;
    DBCheckBoxPesquisador.Enabled := False;
    // Classe Pioneiro
    imgPioneiro.Enabled := False;
    LabelPioneiro.Enabled := False;
    DBCheckBoxPioneiro.Enabled := False;
    //Classe Excursionista
    imgExcursionista.Enabled := False;
    LabelExcursionista.Enabled := False;
    DBCheckBoxExcursionista.Enabled := False;
    // Classe Guia
    imgGuia.Enabled := True;
    LabelGuia.Enabled := True;
    DBCheckBoxGuia.Enabled := True;
  end
  else if (DBComboBoxDesbravadorLider.Text = '16+') then
  begin
    // Classe Amigo
    imgAmigo.Enabled := True;
    LabelAmigo.Enabled := True;
    DBCheckBoxAmigo.Enabled := True;
    // Classe Companheiro
    imgCompanheiro.Enabled := True;
    LabelCompanheiro.Enabled := True;
    DBCheckBoxCompanheiro.Enabled := True;
     // Classe Pesquisador
    imgPesquisador.Enabled := True;
    LabelPesquisador.Enabled := True;
    DBCheckBoxPesquisador.Enabled := True;
    // Classe Pioneiro
    imgPioneiro.Enabled := True;
    LabelPioneiro.Enabled := True;
    DBCheckBoxPioneiro.Enabled := True;
    //Classe Excursionista
    imgExcursionista.Enabled := True;
    LabelExcursionista.Enabled := True;
    DBCheckBoxExcursionista.Enabled := True;
    // Classe Guia
    imgGuia.Enabled := True;
    LabelGuia.Enabled := True;
    DBCheckBoxGuia.Enabled := True;
    // Classe Amigo Natureza
    imgAmigoNatureza.Enabled := True;
    LabelAmigoNatureza.Enabled := True;
    DBCheckBoxAmigoNatureza.Enabled := True;
    // Classe Companheiro Excursionismo
    imgCompanheiroExcursionismo.Enabled := True;
    LabelCompanheiroExcursionismo.Enabled := True;
    DBCheckBoxCompanheiroExcursionismo.Enabled := True;
    // Classe Pesquisador de Campos
    imgPesquisadorCampos.Enabled := True;
    LabelPesquisadroCampos.Enabled := True;
    DBCheckBoxPesquisadorCampos.Enabled := True;
    // Classe Pioneiro Novas
    imgPioneiroNovas.Enabled := True;
    LabelPioneiroNovas.Enabled := True;
    DBCheckBoxPioneiroNovas.Enabled := True;
    //Classe Excursionista da Mata
    imgExcursionistaMata.Enabled := True;
    LabelExcursionistaMata.Enabled := True;
    DBCheckBoxExcursionistaMata.Enabled := True;
    // Classe Guia de Explora??o
    imgGuiaExploracao.Enabled := True;
    LabelGuiaExploracao.Enabled := True;
    DBCheckBoxGuiaExploracao.Enabled := True;
  end
  else
  begin
    Abort;
  end;
end;

end.
