unit MultipleFunctionCall;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    lblNum1: TLabel;
    edtNum1: TEdit;
    lblNum2: TLabel;
    edtNum2: TEdit;
    lblOperation: TLabel;
    cmbOperation: TComboBox;
    btnCalculate: TButton;
    lblResult: TLabel;
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

function AddNumbers(A, B: Integer): Integer;
function MultiplyNumbers(A, B: Integer): Integer;
function DivideNumbers(A, B: Integer): Double;
function Factorial(N: Integer): Int64;

implementation

{$R *.dfm}
function AddNumbers(A, B: Integer): Integer;
begin
  Result := A + B;
end;

function MultiplyNumbers(A, B: Integer): Integer;
begin
  Result := A * B;
end;

function DivideNumbers(A, B: Integer): Double;
begin
  if B = 0 then
    raise Exception.Create('Division by zero is not allowed');
  Result := A / B;
end;

function Factorial(N: Integer): Int64;
var
  I: Integer;
begin
  Result := 1;
  for I := 1 to N do
    Result := Result * I;
end;

procedure TForm3.btnCalculateClick(Sender: TObject);
var
  Num1, Num2: Integer;
  ResInt: Integer;
  ResDouble: Double;
  ResFact: Int64;
begin
      Num1 := StrToInt(edtNum1.Text);
  Num2 := StrToInt(edtNum2.Text);

  case cmbOperation.ItemIndex of
    0: // Addition
    begin
      ResInt := AddNumbers(Num1, Num2);
      lblResult.Caption := 'Result: ' + IntToStr(ResInt);
    end;

    1: // Multiplication
    begin
      ResInt := MultiplyNumbers(Num1, Num2);
      lblResult.Caption := 'Result: ' + IntToStr(ResInt);
    end;

    2: // Division
    begin
      ResDouble := DivideNumbers(Num1, Num2);
      lblResult.Caption := 'Result: ' + FloatToStr(ResDouble);
    end;

    3: // Factorial
    begin
      ResFact := Factorial(Num1);
      lblResult.Caption := 'Result: ' + IntToStr(ResFact);
    end;

  else
    ShowMessage('Please select an operation');
  end;
end;

end.
