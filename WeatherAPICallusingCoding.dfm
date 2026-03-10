object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'WeatherAPICallusingCoding'
  ClientHeight = 459
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnGetWeather: TButton
    Left = 32
    Top = 24
    Width = 121
    Height = 25
    Caption = 'Get Weather'
    TabOrder = 0
    OnClick = btnGetWeatherClick
  end
  object Memo1: TMemo
    Left = 32
    Top = 64
    Width = 545
    Height = 361
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end
