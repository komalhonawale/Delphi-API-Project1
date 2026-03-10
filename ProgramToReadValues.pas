unit ProgramToReadValues;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MultipleFunctionCall;

type
  TForm2 = class(TForm)
    btnWrite: TButton;
    btnRead: TButton;
    Memo1: TMemo;
    Button1: TButton;
    btncount: TButton;
    procedure btnWriteClick(Sender: TObject);
    procedure btnReadClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btncountClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btncountClick(Sender: TObject);
var
  SL, Numbers: TStringList;
  FilePath: string;
  I, J: Integer;
  Total, Count, Value: Integer;
begin
  Memo1.Clear;
  Total := 0;
  Count := 0;

  FilePath := ExtractFilePath(Application.ExeName) + 'Sample.txt';

  if not FileExists(FilePath) then
  begin
    ShowMessage('File not found!');
    Exit;
  end;

  SL := TStringList.Create;
  Numbers := TStringList.Create;
  try
    SL.LoadFromFile(FilePath);

    for I := 0 to SL.Count - 1 do
    begin
      Memo1.Lines.Add(SL[I]); // display file content

      Numbers.Clear;
      ExtractStrings([' '], [], PChar(SL[I]), Numbers);

      for J := 0 to Numbers.Count - 1 do
      begin
        if TryStrToInt(Numbers[J], Value) then
        begin
          Inc(Count);
          Total := Total + Value;
        end;
      end;
    end;

    // 🔽 Display result in Memo
    Memo1.Lines.Add('------------------------');
    Memo1.Lines.Add('Total Numbers Count: ' + IntToStr(Count));
    Memo1.Lines.Add('Sum of Numbers: ' + IntToStr(Total));

  finally
    SL.Free;
    Numbers.Free;
  end;
end;

procedure TForm2.btnReadClick(Sender: TObject);
var
  SL: TStringList;
  FilePath: string;
begin
    FilePath := ExtractFilePath(Application.ExeName) + 'Sample.txt';

  if not FileExists(FilePath) then
  begin
    ShowMessage('File not found!');
    Exit;
  end;

  SL := TStringList.Create;
  try
    SL.LoadFromFile(FilePath);
    Memo1.Lines := SL;
  finally
    SL.Free;
  end;
end;

procedure TForm2.btnWriteClick(Sender: TObject);
var
  SL: TStringList;
  FilePath: string;
begin
    FilePath := ExtractFilePath(Application.ExeName) + 'Sample.txt';

  SL := TStringList.Create;
  try
    SL.Add('Welocome to Delphi VCL Application');
    SL.Add('File handling example');
    SL.Add('Written on: ' + DateToStr(Date));
    SL.Add('Developed by Komal Honawale');

    SL.SaveToFile(FilePath);
    ShowMessage('File created and data written successfully!');
  finally
    SL.Free
    ;
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form3.Show;
end;

end.
