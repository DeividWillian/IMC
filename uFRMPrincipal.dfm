object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora de Indice Corporal'
  ClientHeight = 291
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 22
    Top = 64
    Width = 117
    Height = 25
    Caption = 'Sua Altura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 22
    Top = 106
    Width = 102
    Height = 25
    Caption = 'Seu Peso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 22
    Top = 145
    Width = 59
    Height = 25
    Caption = 'Sexo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnResultado: TButton
    Left = 145
    Top = 193
    Width = 75
    Height = 41
    Caption = 'Resultado'
    TabOrder = 0
    OnClick = btnResultadoClick
  end
  object btnRequisitos: TButton
    Left = 264
    Top = 193
    Width = 75
    Height = 41
    Caption = 'Ver Requisitos'
    TabOrder = 1
    OnClick = btnRequisitosClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 439
    Height = 49
    Align = alTop
    Caption = 'Calculadora: '#205'ndice de massa corporal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 527
  end
  object edtAltura: TEdit
    Left = 145
    Top = 71
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Digite sua Altura'
  end
  object edtPeso: TEdit
    Left = 146
    Top = 113
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'Digite seu Peso'
  end
  object cmbSexo: TComboBox
    Left = 145
    Top = 152
    Width = 122
    Height = 21
    Style = csDropDownList
    TabOrder = 5
    TextHint = 'Escolha o Sexo'
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
end
