object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'TEU Ricardo Narvaja Curso IDA desde Cero 25-12-17'
  ClientHeight = 178
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Requerimientos: TMemo
    Left = 216
    Top = 18
    Width = 297
    Height = 147
    Lines.Strings = (
      'Requerimientos:'
      'IDA 6x o 7x'
      '7zip para descomprimir los archivos'
      'Procesador de texto (word o similar que habra docx)'
      'Navegador configurado (internet 7 y superior)'
      'Espacio Suficiente (al minuto son  400mb)'
      ''
      'Autor: Ricardo Narvaja'
      'Fecha:25-12-17')
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Curso 1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 16
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Curso 3'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Curso 2'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 16
    Top = 109
    Width = 75
    Height = 25
    Caption = 'Curso 4'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button5: TButton
    Left = 16
    Top = 140
    Width = 75
    Height = 25
    Caption = 'Curso 5'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button6: TButton
    Left = 120
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Curso 6'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button7: TButton
    Left = 120
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Curso 7'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button8: TButton
    Left = 120
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Curso 8'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button9: TButton
    Left = 120
    Top = 109
    Width = 75
    Height = 25
    Caption = 'Curso 9'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button10: TButton
    Left = 120
    Top = 140
    Width = 75
    Height = 25
    Caption = 'Curso 10'
    TabOrder = 10
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 65480
    Top = 10
    object N1: TMenuItem
      Caption = 'Menu'
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Menu1: TMenuItem
      Caption = 'Curso'
      object N1101: TMenuItem
        Caption = '1-10'
        OnClick = N1101Click
      end
      object N11201: TMenuItem
        Caption = '11-20'
        OnClick = N11201Click
      end
      object N21301: TMenuItem
        Caption = '21-30'
        OnClick = N21301Click
      end
      object N31401: TMenuItem
        Caption = '31-40'
        OnClick = N31401Click
      end
      object N41501: TMenuItem
        Caption = '41-50'
        OnClick = N41501Click
      end
      object N51xx1: TMenuItem
        Caption = '51-60'
        OnClick = N51xx1Click
      end
      object N61xx1: TMenuItem
        Caption = '61-xx'
        OnClick = N61xx1Click
      end
      object Examenes1: TMenuItem
        Caption = 'Ex'#225'menes'
        OnClick = Examenes1Click
      end
      object Prctica1: TMenuItem
        Caption = 'Ejercicios'
        OnClick = Prctica1Click
      end
      object EnIngls1: TMenuItem
        Caption = 'En Ingl'#233's'
        OnClick = EnIngls1Click
      end
    end
    object AboutWeb1: TMenuItem
      Caption = 'About Web'
      object elegram1: TMenuItem
        Caption = 'Telegram'
        OnClick = elegram1Click
      end
      object WEBCLS1: TMenuItem
        Caption = 'WEB CLS'
        OnClick = WebCLS1Click
      end
      object GoogleGroups1: TMenuItem
        Caption = 'Google Groups'
        OnClick = GoogleGroups1Click
      end
    end
    object About1: TMenuItem
      Caption = 'About'
      OnClick = About1Click
    end
  end
end
