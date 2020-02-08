object Form1: TForm1
  Left = 109
  Top = 127
  Width = 1252
  Height = 515
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1373
    Height = 779
    OnClick = Timer1Timer
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 152
    Top = 72
  end
end
