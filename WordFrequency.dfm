object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
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
  object btnCount: TButton
    Left = 472
    Top = 20
    Width = 129
    Height = 25
    Caption = 'Count Words'
    TabOrder = 0
    OnClick = btnCountClick
  end
  object edtInput: TEdit
    Left = 144
    Top = 24
    Width = 313
    Height = 23
    TabOrder = 1
    Text = 'Input String'
  end
  object Memo1: TMemo
    Left = 32
    Top = 80
    Width = 569
    Height = 193
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
end
