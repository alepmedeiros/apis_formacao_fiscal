object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 21
  object Button1: TButton
    Left = 0
    Top = 8
    Width = 129
    Height = 41
    Caption = 'Serializacao'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 135
    Top = 8
    Width = 128
    Height = 41
    Caption = 'Deserializacao'
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 0
    Top = 55
    Width = 281
    Height = 378
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 287
    Top = 55
    Width = 281
    Height = 378
    TabOrder = 3
  end
  object Memo3: TMemo
    Left = 574
    Top = 55
    Width = 281
    Height = 378
    TabOrder = 4
  end
  object Button3: TButton
    Left = 574
    Top = 8
    Width = 128
    Height = 41
    Caption = 'Serializa'#231#227'o List'
    TabOrder = 5
  end
  object Button4: TButton
    Left = 722
    Top = 8
    Width = 128
    Height = 41
    Caption = 'Deserializacao List'
    TabOrder = 6
  end
  object Button5: TButton
    Left = 344
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button5'
    TabOrder = 7
    OnClick = Button5Click
  end
end
