unit uFRMPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uFRMrequisitos, uFRMResultado, uDadosPessoa;

type
  TForm1 = class(TForm)
    btnResultado: TButton;
    btnRequisitos: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    edtAltura: TEdit;
    edtPeso: TEdit;
    cmbSexo: TComboBox;
    procedure btnRequisitosClick(Sender: TObject);
    procedure btnResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnRequisitosClick(Sender: TObject);
begin
   frmRequisitos.Show;
end;

procedure TForm1.btnResultadoClick(Sender: TObject);
begin

   try
      P_Dados_Pessoa.Altura := StrToFloat(edtAltura.Text);
      P_Dados_Pessoa.Peso   := StrToFloat(edtPeso.Text);
      P_Dados_Pessoa.Sexo   := cmbSexo.Text;
      P_Dados_Pessoa.IMC    := CalcularIMC(P_Dados_Pessoa.Peso,P_Dados_Pessoa.Altura,P_Dados_Pessoa.Sexo);

      frmResultado.ShowModal;
   except
      ShowMessage('Dados invalidos');

   end;
end;

end.
