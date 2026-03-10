program Project1;

uses
  Vcl.Forms,
  ProgramToReadValues in 'ProgramToReadValues.pas' {Form2},
  MultipleFunctionCall in 'MultipleFunctionCall.pas' {Form3},
  ReverseString in 'ReverseString.pas' {Form4},
  Palindrome in 'Palindrome.pas' {Form5},
  WordFrequency in 'WordFrequency.pas' {Form6},
  DelphidemoDB in 'DelphidemoDB.pas' {Form7},
  Calculator in 'Calculator.pas' {Form8},
  WeatherAPI in 'WeatherAPI.pas' {Form9},
  WeatherAPICallusingCoding in 'WeatherAPICallusingCoding.pas' {Form10},
  APIUsingKey in 'APIUsingKey.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
