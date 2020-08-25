program Projeto_Desbravador;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UUnidades in 'UUnidades.pas' {frmUnidades},
  UEspecialidades in 'UEspecialidades.pas' {frmEspecialidades},
  UClasses in 'UClasses.pas' {frmClasses},
  UDesbravadores in 'UDesbravadores.pas' {frmDesbravadores},
  dmDados in 'dmDados.pas' {dmDesbravador: TDataModule},
  UTesouraria in 'UTesouraria.pas' {frmTesouraria},
  USecretaria in 'USecretaria.pas' {frmSecretaria},
  UPatrimonios in 'UPatrimonios.pas' {frmPatrimonios},
  UFerramentas in 'UFerramentas.pas' {frmFerramentas},
  UClube in 'UClube.pas' {frmClube};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmUnidades, frmUnidades);
  Application.CreateForm(TfrmEspecialidades, frmEspecialidades);
  Application.CreateForm(TfrmClasses, frmClasses);
  Application.CreateForm(TfrmDesbravadores, frmDesbravadores);
  Application.CreateForm(TdmDesbravador, dmDesbravador);
  Application.CreateForm(TfrmTesouraria, frmTesouraria);
  Application.CreateForm(TfrmSecretaria, frmSecretaria);
  Application.CreateForm(TfrmPatrimonios, frmPatrimonios);
  Application.CreateForm(TfrmFerramentas, frmFerramentas);
  Application.CreateForm(TfrmClube, frmClube);
  Application.Run;
end.
