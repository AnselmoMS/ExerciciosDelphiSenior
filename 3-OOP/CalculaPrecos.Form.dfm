object frmCalculaPreco: TfrmCalculaPreco
  Left = 0
  Top = 0
  Caption = 'frmCalculaPreco'
  ClientHeight = 211
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 80
    Width = 54
    Height = 13
    Caption = 'Pre'#231'o-base'
  end
  object ComboBox1: TComboBox
    Left = 40
    Top = 32
    Width = 145
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'cbbModalidade'
    OnChange = ComboBox1Change
  end
  object edtPrecoBase: TEdit
    Left = 40
    Top = 100
    Width = 145
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 110
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 208
    Top = 32
    Width = 209
    Height = 146
    TabOrder = 3
  end
end
