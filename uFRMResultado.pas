unit uFRMResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,uDadosPessoa;

type
  TfrmResultado = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblaltura: TLabel;
    lblpeso: TLabel;
    lblsexo: TLabel;
    lblimc: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResultado: TfrmResultado;

implementation

{$R *.dfm}

procedure TfrmResultado.FormShow(Sender: TObject);
begin
   lblaltura.Caption := FloatToStr(P_Dados_Pessoa.Altura);
  lblpeso.Caption   := FloatToStr(P_Dados_Pessoa.Peso);
  lblsexo.Caption   := P_Dados_Pessoa.Sexo;
  lblimc.Caption    := P_Dados_Pessoa.IMC;
end;

end.
