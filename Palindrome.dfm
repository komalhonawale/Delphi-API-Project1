object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 60
    Height = 15
    Caption = 'Enter string'
  end
  object lblResult: TLabel
    Left = 32
    Top = 96
    Width = 32
    Height = 15
    Caption = 'Result'
  end
  object edtInput: TEdit
    Left = 144
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Input String'
  end
  object btnCheck: TButton
    Left = 288
    Top = 23
    Width = 129
    Height = 25
    Caption = 'Check Palindrome'
    TabOrder = 1
    OnClick = btnCheckClick
  end
end
