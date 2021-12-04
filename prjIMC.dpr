program prjIMC;

uses
  Vcl.Forms,
  uFRMPrincipal in 'uFRMPrincipal.pas' {Form1},
  uFRMrequisitos in 'uFRMrequisitos.pas' {frmRequisitos},
  uFRMResultado in 'uFRMResultado.pas' {frmResultado},
  uDadosPessoa in 'uDadosPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmRequisitos, frmRequisitos);
  Application.CreateForm(TfrmResultado, frmResultado);
  Application.Run;
end.
