object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
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
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 81
    Height = 15
    Caption = 'Reversed String'
  end
  object edtInput: TEdit
    Left = 144
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Input String'
  end
  object btnReverse: TButton
    Left = 288
    Top = 23
    Width = 75
    Height = 25
    Caption = 'Reverse'
    TabOrder = 1
    OnClick = btnReverseClick
  end
  object edtOutput: TEdit
    Left = 152
    Top = 88
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'Output'
  end
end
