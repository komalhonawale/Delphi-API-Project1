unit Palindrome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    edtInput: TEdit;
    btnCheck: TButton;
    lblResult: TLabel;
    procedure btnCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btnCheckClick(Sender: TObject);
var
  InputStr, CleanStr, ReverseStr: string;
  I: Integer;
begin
  InputStr := edtInput.Text;

  // Convert to lowercase
  CleanStr := LowerCase(InputStr);

  // Remove spaces
  CleanStr := StringReplace(CleanStr, ' ', '', [rfReplaceAll]);

  // Reverse string
  ReverseStr := '';
  for I := Length(CleanStr) downto 1 do
    ReverseStr := ReverseStr + CleanStr[I];

  // Compare
  if CleanStr = ReverseStr then
    lblResult.Caption := 'Result: Palindrome'
  else
    lblResult.Caption := 'Result: Not a Palindrome';
end;

end.
