unit APIUsingKey;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,   System.Net.HttpClient,
  System.Net.HttpClientComponent,
  System.JSON,
  IdCoderMIME;

type
  TForm11 = class(TForm)
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnCallAPI: TButton;
    MemoResult: TMemo;
    procedure btnCallAPIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure TForm11.btnCallAPIClick(Sender: TObject);
var
  HttpClient: TNetHTTPClient;
  Response: IHTTPResponse;
  Username, Password: string;
  AuthHeader: string;
  JsonObj: TJSONObject;
  AuthValue: string;
  IsAuthenticated: Boolean;
  LoggedInUser: string;
  Encoder: TIdEncoderMIME;
begin
  MemoResult.Clear;

  Username := edtUsername.Text;
  Password := edtPassword.Text;

  if (Username = '') or (Password = '') then
  begin
    ShowMessage('Please enter Username and Password');
    Exit;
  end;

  //Base64 encode username:password
  Encoder := TIdEncoderMIME.Create(nil);
  try
    AuthValue := Encoder.EncodeString(Username + ':' + Password);
  finally
    Encoder.Free;
  end;

  AuthHeader := 'Basic ' + AuthValue;

  // Created HTTP client
  HttpClient := TNetHTTPClient.Create(nil);
  try
    HttpClient.CustomHeaders['Authorization'] := AuthHeader;

    // Call API
    Response := HttpClient.Get(
      'https://httpbin.org/basic-auth/Komal/1602'
    );

    MemoResult.Lines.Add('API RESPONSE:');
    MemoResult.Lines.Add(Response.ContentAsString);

    // Parse JSON
    JsonObj :=
      TJSONObject.ParseJSONValue(
        Response.ContentAsString
      ) as TJSONObject;
    try
      if JsonObj = nil then
      begin
        ShowMessage('Invalid JSON response');
        Exit;
      end;

      // To Read values
      IsAuthenticated :=
        SameText(
          JsonObj.GetValue('authenticated').Value,
          'true'
        );

      LoggedInUser :=
        JsonObj.GetValue('user').Value;

      // Check success
      if IsAuthenticated then
      begin
        MemoResult.Lines.Add('');
        MemoResult.Lines.Add('✅ LOGIN SUCCESS');
        MemoResult.Lines.Add('User: ' + LoggedInUser);

        ShowMessage('Login successful! Welcome ' + LoggedInUser);
      end
      else
      begin
        ShowMessage('❌ Authentication failed');
      end;

    finally
      JsonObj.Free;
    end;

  finally
    HttpClient.Free;
  end;
end;

end.
