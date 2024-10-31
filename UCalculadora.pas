unit UCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCalculadora = class(TForm)
    edtVisor: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    procedure Bnt1(Sender: TObject);
    procedure Bnt2(Sender: TObject);
    procedure Bnt3(Sender: TObject);
    procedure Bnt4(Sender: TObject);
    procedure Bnt5(Sender: TObject);
    procedure Bnt6(Sender: TObject);
    procedure Bnt7(Sender: TObject);
    procedure Bnt8(Sender: TObject);
    procedure Bnt9(Sender: TObject);
    procedure Bnt0(Sender: TObject);
    procedure BntClear(Sender: TObject);
    procedure BntSoma(Sender: TObject);
    procedure result(Sender: TObject);
  private
    { Private declarations }
    Operacao: String;
    ValorAnterior: Double;
    NovoValor: Boolean;
  public
    { Public declarations }
  end;

var
  frmCalculadora: TfrmCalculadora;

implementation

{$R *.dfm}

procedure TfrmCalculadora.Bnt0(Sender: TObject);
begin
  edtVisor.Text:= edtVisor.Text+ '0';
end;

procedure TfrmCalculadora.Bnt1(Sender: TObject);
begin
  if NovoValor then
  begin
    edtVisor.Clear;
    NovoValor := False;
  end;
  edtVisor.Text:= edtVisor.Text+ '1';
end;

procedure TfrmCalculadora.Bnt2(Sender: TObject);
begin
  if NovoValor then
  begin
    edtVisor.Clear;
    NovoValor := False;
  end;
  edtVisor.Text:= edtVisor.Text+ '2';
end;

procedure TfrmCalculadora.Bnt3(Sender: TObject);
begin
  if NovoValor then
  begin
    edtVisor.Clear;
    NovoValor := False;
  end;
  edtVisor.Text:= edtVisor.Text+ '3';
end;

procedure TfrmCalculadora.Bnt4(Sender: TObject);
begin
  if NovoValor then
  begin
    edtVisor.Clear;
    NovoValor := False;
  end;
  edtVisor.Text:= edtVisor.Text+ '4';
end;

procedure TfrmCalculadora.Bnt5(Sender: TObject);
begin
  if NovoValor then
  begin
    edtVisor.Clear;
    NovoValor := False;
  end;
  edtVisor.Text:= edtVisor.Text+ '5';
end;

procedure TfrmCalculadora.Bnt6(Sender: TObject);
begin
  if NovoValor then
  begin
    edtVisor.Clear;
    NovoValor := False;
  end;
  edtVisor.Text:= edtVisor.Text+ '6';
end;

procedure TfrmCalculadora.Bnt7(Sender: TObject);
begin
  if NovoValor then
  begin
    edtVisor.Clear;
    NovoValor := False;
  end;
  edtVisor.Text:= edtVisor.Text+ '7';
end;

procedure TfrmCalculadora.Bnt8(Sender: TObject);
begin
  if NovoValor then
  begin
    edtVisor.Clear;
    NovoValor := False;
  end;
  edtVisor.Text:= edtVisor.Text+ '8';
end;

procedure TfrmCalculadora.Bnt9(Sender: TObject);
begin
  if NovoValor then
  begin
    edtVisor.Clear;
    NovoValor := False;
  end;
  edtVisor.Text:= edtVisor.Text+ '9';
end;

procedure TfrmCalculadora.BntClear(Sender: TObject);
begin
  edtVisor.Clear;
end;

procedure TfrmCalculadora.BntSoma(Sender: TObject);
begin
   if TryStrToFloat(edtVisor.Text, ValorAnterior) then
   begin
    Operacao := 'Soma';
    edtVisor.Text:= edtVisor.Text+ ' + ';
    NovoValor := true;
   end
   else
   begin
     ShowMessage('Por Favor, Digite um número Válido.')
   end;
end;

procedure TfrmCalculadora.result(Sender: TObject);
var
 ValorAtual: Double;
begin
  if TryStrTofloat(edtVisor.Text, ValorAtual)then
  begin
    if Operacao = 'Soma' then
    edtVisor.Text := FloatToStr(ValorAnterior + ValorAtual)
  end
  else
  begin
    showMessage('Erro ao Calcular. Verifique a operação e os numeros.');
  end;

  NovoValor:= true;

end;

end.
