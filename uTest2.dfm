object fTest2: TfTest2
  Left = 0
  Top = 0
  Caption = 'fTest2'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object lbTest: TLabel
    Left = 56
    Top = 56
    Width = 265
    Height = 128
    Caption = 'lbTest'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbTop: TLabel
    Left = 160
    Top = 224
    Width = 30
    Height = 15
    Caption = 'lbTop'
  end
  object lbLeft: TLabel
    Left = 160
    Top = 245
    Width = 26
    Height = 15
    Caption = 'llTop'
  end
  object btnClose: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 0
  end
end
