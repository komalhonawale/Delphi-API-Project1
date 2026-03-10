unit ReverseString;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    edtInput: TEdit;
    btnReverse: TButton;
    Label2: TLabel;
    edtOutput: TEdit;
    procedure btnReverseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btnReverseClick(Sender: TObject);
var
  InputStr, ReverseStr: string;
  I: Integer;
begin
  InputStr := edtInput.Text;
  ReverseStr := '';

  for I := Length(InputStr) downto 1 do
    ReverseStr := ReverseStr + InputStr[I];

  edtOutput.Text := ReverseStr;
end;

end.
