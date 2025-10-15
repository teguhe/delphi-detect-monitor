object fMain: TfMain
  Left = 0
  Top = 0
  ClientHeight = 225
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  TextHeight = 15
  object lb1: TLabel
    Left = 16
    Top = 96
    Width = 79
    Height = 15
    Caption = 'Monitor Count'
  end
  object lb11: TLabel
    Left = 16
    Top = 125
    Width = 56
    Height = 15
    Caption = 'Resolution'
  end
  object btnRefresh: TButton
    Left = 16
    Top = 24
    Width = 145
    Height = 41
    Caption = 'Refresh'
    TabOrder = 0
    OnClick = btnRefreshClick
  end
  object edCount: TEdit
    Left = 136
    Top = 93
    Width = 65
    Height = 23
    ReadOnly = True
    TabOrder = 1
    Text = '0'
  end
  object edResolution: TEdit
    Left = 136
    Top = 122
    Width = 793
    Height = 23
    ReadOnly = True
    TabOrder = 2
    Text = '0'
  end
  object btnCreateForm: TButton
    Left = 136
    Top = 151
    Width = 129
    Height = 25
    Caption = 'btnCreateForm'
    TabOrder = 3
    Visible = False
    OnClick = btnCreateFormClick
  end
end
