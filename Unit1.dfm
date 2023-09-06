object Form1: TForm1
  Left = 0
  Top = 0
  Width = 909
  Height = 494
  AutoScroll = True
  Caption = #1057#1080#1089#1090#1077#1084#1072' '#1086#1087#1077#1088#1072#1090#1080#1074#1085#1086'-'#1082#1072#1083#1077#1085#1076#1072#1088#1085#1086#1075#1086' '#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 0
    Width = 890
    Height = 29
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ButtonWidth = 24
    Caption = 'ToolBar1'
    Images = ImageList1
    TabOrder = 0
    Wrapable = False
    DesignSize = (
      890
      29)
    object Label1: TLabel
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 49
      Height = 22
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoSize = False
      Caption = #1052#1077#1090#1086#1076':'
      Layout = tlCenter
      StyleElements = []
    end
    object ComboBox1: TComboBox
      AlignWithMargins = True
      Left = 49
      Top = 0
      Width = 135
      Height = 21
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      ItemIndex = 1
      TabOrder = 0
      Text = #1044#1078#1086#1085#1089#1086#1085#1072
      Items.Strings = (
        #1055#1077#1090#1088#1086#1074#1072'-'#1057#1086#1082#1086#1083#1080#1094#1099#1085#1072
        #1044#1078#1086#1085#1089#1086#1085#1072)
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 184
      Top = 0
      Width = 105
      Height = 22
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077':'
      Layout = tlCenter
    end
    object ComboBox2: TComboBox
      AlignWithMargins = True
      Left = 289
      Top = 0
      Width = 113
      Height = 21
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      ItemIndex = 0
      TabOrder = 1
      Text = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100
      OnChange = ComboBox2Change
      Items.Strings = (
        #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100
        #1063#1090#1077#1085#1080#1077' '#1080#1079' '#1092#1072#1081#1083#1072)
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 402
      Top = 0
      Width = 75
      Height = 22
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1057#1090#1072#1085#1082#1080', '#1096#1090'.:'
      Layout = tlCenter
    end
    object SpinEdit1: TSpinEdit
      AlignWithMargins = True
      Left = 477
      Top = 0
      Width = 40
      Height = 22
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      MaxValue = 150
      MinValue = 1
      TabOrder = 2
      Value = 10
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 517
      Top = 0
      Width = 75
      Height = 22
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1044#1077#1090#1072#1083#1080', '#1096#1090'.:'
      Layout = tlCenter
    end
    object SpinEdit2: TSpinEdit
      AlignWithMargins = True
      Left = 592
      Top = 0
      Width = 40
      Height = 22
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      MaxValue = 150
      MinValue = 2
      TabOrder = 3
      Value = 20
    end
    object Label15: TLabel
      Left = 632
      Top = 0
      Width = 79
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1086#1090':'
      Layout = tlCenter
    end
    object SpinEdit3: TSpinEdit
      Left = 711
      Top = 0
      Width = 40
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
    object Label16: TLabel
      Left = 751
      Top = 0
      Width = 24
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1076#1086':'
      Layout = tlCenter
    end
    object SpinEdit4: TSpinEdit
      Left = 775
      Top = 0
      Width = 40
      Height = 22
      MaxValue = 100
      MinValue = 1
      TabOrder = 6
      Value = 15
    end
    object Button1: TButton
      Left = 815
      Top = 0
      Width = 96
      Height = 22
      Margins.Left = 50
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
      TabOrder = 4
      Visible = False
      OnClick = Button1Click
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 29
    Width = 893
    Height = 406
    Align = alClient
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 395
      Top = 1
      Width = 10
      Height = 404
      Align = alRight
      Visible = False
      ExplicitLeft = -4
      ExplicitTop = 3
    end
    object CalculationPanel: TPanel
      Left = 405
      Top = 1
      Width = 487
      Height = 404
      Align = alRight
      TabOrder = 0
      Visible = False
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 485
        Height = 17
        Align = alTop
        TabOrder = 0
        object BitBtn2: TBitBtn
          Left = 467
          Top = 1
          Width = 17
          Height = 15
          Align = alRight
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000025160000251600000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            848484E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2
            E2848484FFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2E2
            E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2E2E2FF
            FFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFE2E2E2444444E2E2E2E2E2E2444444E2E2E2FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E244
            4444444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444444444E2E2E2FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2
            E2E2E2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFE2E2E2444444E2E2E2FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFF
            FFFFFFFFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            E2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E24444
            44E2E2E2FFFFFFFFFFFFFFFFFFFFFFFF848484E2E2E2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2848484FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 0
          OnClick = BitBtn2Click
        end
      end
      object PageControl2: TPageControl
        Left = 1
        Top = 18
        Width = 485
        Height = 385
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 1
        object TabSheet4: TTabSheet
          Caption = #1069#1090#1072#1087#1099' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1081
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 477
            Height = 377
            Align = alClient
            Caption = #1052#1077#1089#1090#1086' '#1076#1083#1103' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1081
            TabOrder = 0
            Visible = False
            ExplicitHeight = 357
            object Panel1: TPanel
              Left = 1
              Top = 1
              Width = 475
              Height = 215
              Align = alTop
              Caption = 'Panel1'
              TabOrder = 0
              object Label5: TLabel
                Left = 1
                Top = 1
                Width = 262
                Height = 13
                Align = alTop
                Alignment = taCenter
                Caption = #1064#1072#1075' 1. '#1056#1072#1089#1089#1095#1080#1090#1099#1074#1072#1102#1090#1089#1103' '#1089#1091#1084#1084#1072' 1, '#1089#1091#1084#1084#1072' 2, '#1088#1072#1079#1085#1086#1089#1090#1100
                WordWrap = True
              end
              object Splitter3: TSplitter
                Left = 1
                Top = 204
                Width = 473
                Height = 10
                Cursor = crVSplit
                Align = alBottom
                ExplicitWidth = 457
              end
              object Grid1: TStringGrid
                Left = 1
                Top = 14
                Width = 473
                Height = 190
                Align = alClient
                ColCount = 2
                RowCount = 2
                TabOrder = 0
              end
            end
            object Panel4: TPanel
              Left = 1
              Top = 216
              Width = 475
              Height = 160
              Align = alClient
              TabOrder = 1
              ExplicitHeight = 140
              object PageControl1: TPageControl
                Left = 1
                Top = 1
                Width = 473
                Height = 158
                ActivePage = TabSheet1
                Align = alClient
                TabOrder = 0
                ExplicitHeight = 138
                object TabSheet1: TTabSheet
                  Caption = #1055#1086' '#1087#1077#1088#1074#1086#1081' '#1089#1091#1084#1084#1077
                  object Label6: TLabel
                    Left = 0
                    Top = 0
                    Width = 97
                    Height = 13
                    Align = alTop
                    Alignment = taCenter
                    Caption = '1 '#1054#1095#1077#1088#1077#1076#1100' '#1079#1072#1087#1091#1089#1082#1072
                    Layout = tlCenter
                  end
                  object Splitter1: TSplitter
                    Left = 348
                    Top = 13
                    Width = 10
                    Height = 97
                    ExplicitLeft = 343
                    ExplicitTop = 27
                    ExplicitHeight = 145
                  end
                  object Panel5: TPanel
                    Left = 0
                    Top = 13
                    Width = 348
                    Height = 97
                    Align = alLeft
                    Caption = 'Panel5'
                    TabOrder = 0
                    object Label7: TLabel
                      Left = 1
                      Top = 1
                      Width = 226
                      Height = 13
                      Align = alTop
                      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1074' '#1087#1086#1088#1103#1076#1082#1077' '#1074#1086#1079#1088#1072#1089#1090#1072#1085#1080#1103' '#1089#1091#1084#1084#1099' 1'
                      WordWrap = True
                    end
                    object Grid2: TStringGrid
                      Left = 1
                      Top = 14
                      Width = 346
                      Height = 82
                      Align = alClient
                      ColCount = 2
                      TabOrder = 0
                    end
                  end
                  object Panel6: TPanel
                    Left = 358
                    Top = 13
                    Width = 107
                    Height = 97
                    Align = alClient
                    Caption = 'Panel6'
                    TabOrder = 1
                    object Label8: TLabel
                      Left = 1
                      Top = 1
                      Width = 157
                      Height = 13
                      Align = alTop
                      Caption = #1056#1072#1089#1095#1077#1090' '#1089#1088#1086#1082#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1088#1072#1073#1086#1090
                    end
                    object Grid3: TStringGrid
                      Left = 1
                      Top = 14
                      Width = 105
                      Height = 82
                      Align = alClient
                      TabOrder = 0
                      RowHeights = (
                        24
                        24
                        24
                        24
                        24)
                    end
                  end
                end
                object TabSheet2: TTabSheet
                  Caption = #1055#1086' '#1074#1090#1086#1088#1086#1081' '#1089#1091#1084#1084#1077
                  ImageIndex = 1
                  object Label9: TLabel
                    Left = 0
                    Top = 0
                    Width = 97
                    Height = 13
                    Align = alTop
                    Alignment = taCenter
                    Caption = '2 '#1054#1095#1077#1088#1077#1076#1100' '#1079#1072#1087#1091#1089#1082#1072
                    Layout = tlCenter
                  end
                  object Splitter4: TSplitter
                    Left = 348
                    Top = 13
                    Width = 10
                    Height = 97
                    ExplicitLeft = 356
                    ExplicitTop = 21
                    ExplicitHeight = 145
                  end
                  object Panel9: TPanel
                    Left = 0
                    Top = 13
                    Width = 348
                    Height = 97
                    Align = alLeft
                    Caption = 'Panel5'
                    TabOrder = 0
                    object Label10: TLabel
                      Left = 1
                      Top = 1
                      Width = 226
                      Height = 13
                      Align = alTop
                      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1074' '#1087#1086#1088#1103#1076#1082#1077' '#1074#1086#1079#1088#1072#1089#1090#1072#1085#1080#1103' '#1089#1091#1084#1084#1099' 2'
                      WordWrap = True
                    end
                    object Grid2_2: TStringGrid
                      Left = 1
                      Top = 14
                      Width = 346
                      Height = 82
                      Align = alClient
                      ColCount = 2
                      TabOrder = 0
                    end
                  end
                  object Panel10: TPanel
                    Left = 358
                    Top = 13
                    Width = 107
                    Height = 97
                    Align = alClient
                    Caption = 'Panel6'
                    TabOrder = 1
                    object Label11: TLabel
                      Left = 1
                      Top = 1
                      Width = 157
                      Height = 13
                      Align = alTop
                      Caption = #1056#1072#1089#1095#1077#1090' '#1089#1088#1086#1082#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1088#1072#1073#1086#1090
                    end
                    object Grid3_2: TStringGrid
                      Left = 1
                      Top = 14
                      Width = 105
                      Height = 82
                      Align = alClient
                      TabOrder = 0
                      RowHeights = (
                        24
                        24
                        24
                        24
                        24)
                    end
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = #1055#1086' '#1088#1072#1079#1085#1080#1094#1077
                  ImageIndex = 2
                  object Label12: TLabel
                    Left = 0
                    Top = 0
                    Width = 97
                    Height = 13
                    Align = alTop
                    Alignment = taCenter
                    Caption = '3 '#1054#1095#1077#1088#1077#1076#1100' '#1079#1072#1087#1091#1089#1082#1072
                    Layout = tlCenter
                  end
                  object Splitter5: TSplitter
                    Left = 348
                    Top = 13
                    Width = 10
                    Height = 97
                    ExplicitLeft = 356
                    ExplicitHeight = 153
                  end
                  object Panel11: TPanel
                    Left = 0
                    Top = 13
                    Width = 348
                    Height = 97
                    Align = alLeft
                    Caption = 'Panel5'
                    TabOrder = 0
                    object Label13: TLabel
                      Left = 1
                      Top = 1
                      Width = 229
                      Height = 13
                      Align = alTop
                      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1074' '#1087#1086#1088#1103#1076#1082#1077' '#1074#1086#1079#1088#1072#1089#1090#1072#1085#1080#1103' '#1088#1072#1079#1085#1080#1094#1099
                      WordWrap = True
                    end
                    object Grid2_3: TStringGrid
                      Left = 1
                      Top = 14
                      Width = 346
                      Height = 82
                      Align = alClient
                      ColCount = 2
                      TabOrder = 0
                      RowHeights = (
                        24
                        24
                        24
                        24
                        24)
                    end
                  end
                  object Panel12: TPanel
                    Left = 358
                    Top = 13
                    Width = 107
                    Height = 97
                    Align = alClient
                    Caption = 'Panel6'
                    TabOrder = 1
                    object Label14: TLabel
                      Left = 1
                      Top = 1
                      Width = 157
                      Height = 13
                      Align = alTop
                      Caption = #1056#1072#1089#1095#1077#1090' '#1089#1088#1086#1082#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1088#1072#1073#1086#1090
                    end
                    object Grid3_3: TStringGrid
                      Left = 1
                      Top = 14
                      Width = 105
                      Height = 82
                      Align = alClient
                      TabOrder = 0
                      RowHeights = (
                        24
                        24
                        24
                        24
                        24)
                    end
                  end
                end
              end
            end
          end
          object Panel13: TPanel
            Left = 0
            Top = 0
            Width = 477
            Height = 377
            Align = alClient
            TabOrder = 1
            Visible = False
            ExplicitHeight = 357
            object ScrollBox1: TScrollBox
              Left = 1
              Top = 1
              Width = 475
              Height = 355
              Align = alClient
              TabOrder = 0
              object Panel14: TPanel
                Left = 0
                Top = 0
                Width = 454
                Height = 97
                Align = alTop
                Caption = #1054#1073#1086#1073#1097#1077#1085#1080#1077' 1'
                TabOrder = 0
                object Label17: TLabel
                  Left = 1
                  Top = 1
                  Width = 431
                  Height = 13
                  Align = alTop
                  Alignment = taCenter
                  Caption = 
                    #1054#1073#1086#1073#1097#1077#1085#1080#1077' 1. '#1044#1077#1090#1072#1083#1080', '#1090#1088#1077#1073#1091#1102#1097#1080#1077' '#1084#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1074#1088#1077#1084#1103' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1085#1072' '#1087#1077 +
                    #1088#1074#1086#1084' '#1089#1090#1072#1085#1082#1077
                  WordWrap = True
                end
                object StringGrid1: TStringGrid
                  Left = 1
                  Top = 14
                  Width = 452
                  Height = 82
                  Align = alClient
                  FixedCols = 0
                  RowCount = 2
                  FixedRows = 0
                  TabOrder = 0
                end
              end
              object Panel15: TPanel
                Left = 0
                Top = 97
                Width = 454
                Height = 100
                Align = alTop
                Caption = #1054#1073#1086#1073#1097#1077#1085#1080#1077' 2'
                TabOrder = 1
                object Label18: TLabel
                  Left = 1
                  Top = 1
                  Width = 419
                  Height = 26
                  Align = alTop
                  Alignment = taCenter
                  Caption = 
                    #1054#1073#1086#1073#1097#1077#1085#1080#1077' 2. '#1044#1077#1090#1072#1083#1080', '#1090#1088#1077#1073#1091#1102#1097#1080#1077' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1074#1088#1077#1084#1103' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1085#1072' '#1087 +
                    #1086#1089#1083#1077#1076#1085#1077#1084' '#1089#1090#1072#1085#1082#1077
                  WordWrap = True
                end
                object StringGrid2: TStringGrid
                  Left = 1
                  Top = 27
                  Width = 452
                  Height = 72
                  Align = alClient
                  RowCount = 2
                  TabOrder = 0
                  ColWidths = (
                    64
                    64
                    64
                    64
                    64)
                end
              end
              object Panel16: TPanel
                Left = 0
                Top = 197
                Width = 454
                Height = 105
                Align = alTop
                Caption = #1054#1073#1086#1073#1097#1077#1085#1080#1077' 3'
                TabOrder = 2
                object Label19: TLabel
                  Left = 1
                  Top = 1
                  Width = 450
                  Height = 26
                  Align = alTop
                  Alignment = taCenter
                  Caption = 
                    #1054#1073#1086#1073#1097#1077#1085#1080#1077' 3. '#1044#1077#1090#1072#1083#1080', '#1091' '#1082#1086#1090#1086#1088#1099#1093' '#8220#1091#1079#1082#1086#1077' '#1084#1077#1089#1090#1086#8221' '#1085#1072#1093#1086#1076#1080#1090#1089#1103' '#1076#1072#1083#1100#1096#1077' '#1086#1090 +
                    ' '#1085#1072#1095#1072#1083#1072' '#1087#1088#1086#1094#1077#1089#1089#1072' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
                  WordWrap = True
                end
                object StringGrid3: TStringGrid
                  Left = 1
                  Top = 27
                  Width = 452
                  Height = 77
                  Align = alClient
                  RowCount = 2
                  TabOrder = 0
                end
              end
              object Panel17: TPanel
                Left = 0
                Top = 302
                Width = 454
                Height = 108
                Align = alTop
                Caption = #1054#1073#1086#1073#1097#1077#1085#1080#1077' 4'
                TabOrder = 3
                object Label20: TLabel
                  Left = 1
                  Top = 1
                  Width = 407
                  Height = 26
                  Align = alTop
                  Alignment = taCenter
                  Caption = 
                    #1054#1073#1086#1073#1097#1077#1085#1080#1077' 4. '#1044#1077#1090#1072#1083#1080', '#1091' '#1082#1086#1090#1086#1088#1099#1093' '#1089#1091#1084#1084#1072#1088#1085#1086#1077' '#1074#1088#1077#1084#1103' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1085#1072' '#1074#1089#1077#1093 +
                    ' '#1089#1090#1072#1085#1082#1072#1093' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077
                  WordWrap = True
                end
                object StringGrid4: TStringGrid
                  Left = 1
                  Top = 27
                  Width = 452
                  Height = 80
                  Align = alClient
                  RowCount = 2
                  TabOrder = 0
                end
              end
              object Panel18: TPanel
                Left = 0
                Top = 410
                Width = 454
                Height = 101
                Align = alTop
                Caption = #1054#1073#1086#1073#1097#1077#1085#1080#1077' 5'
                TabOrder = 4
                object Label21: TLabel
                  Left = 1
                  Top = 1
                  Width = 453
                  Height = 13
                  Align = alTop
                  Alignment = taCenter
                  Caption = 
                    #1054#1073#1086#1073#1097#1077#1085#1080#1077' 5. '#1059#1089#1088#1077#1076#1085#1077#1085#1080#1077' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1088#1077#1096#1077#1085#1080#1103' '#1079#1072#1076#1072#1095#1080' '#1087#1086' 4 '#1080#1079#1074#1077#1089#1090#1085#1099 +
                    #1084' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1103#1084
                end
                object StringGrid5: TStringGrid
                  Left = 1
                  Top = 14
                  Width = 452
                  Height = 86
                  Align = alClient
                  RowCount = 2
                  TabOrder = 0
                end
              end
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072' '#1043#1072#1085#1090#1072
          ImageIndex = 1
          OnShow = TabSheet5Show
          object Panel19: TPanel
            Left = 0
            Top = 0
            Width = 477
            Height = 29
            Align = alTop
            TabOrder = 0
            object Label22: TLabel
              Left = 8
              Top = 0
              Width = 68
              Height = 13
              Alignment = taCenter
              Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100': '
              Layout = tlCenter
            end
            object ComboBox3: TComboBox
              Left = 82
              Top = 0
              Width = 145
              Height = 21
              TabOrder = 0
              OnChange = ComboBox3Change
            end
          end
          object Chart1: TChart
            Left = 0
            Top = 29
            Width = 477
            Height = 328
            AllowPanning = pmHorizontal
            ScrollMouseButton = mbLeft
            Title.Text.Strings = (
              'TChart')
            Title.Visible = False
            BottomAxis.Increment = 1.000000000000000000
            BottomAxis.LabelsSeparation = 0
            Panning.MouseWheel = pmwNone
            View3D = False
            Zoom.AnimatedSteps = 6
            Zoom.MouseWheel = pmwNormal
            Align = alClient
            TabOrder = 1
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series1: TGanttSeries
              Marks.Children = <
                item
                  Shape.ShapeStyle = fosRectangle
                  Shape.TextAlignment = taRightJustify
                  Shape.Style = smsXY
                end>
              Marks.Frame.Width = 0
              Marks.Frame.Fill.Gradient.EndColor = clGray
              Marks.Frame.Fill.Gradient.MidColor = clWhite
              Marks.Frame.Fill.Gradient.StartColor = clSilver
              Marks.Visible = True
              Marks.TextAlignment = taRightJustify
              Marks.Style = smsLabelPercent
              Marks.AutoPosition = False
              Marks.TextAlign = taRightJustify
              ClickableLine = False
              Pointer.HorizSize = 14
              Pointer.InflateMargins = True
              Pointer.Style = psHexagon
              Pointer.VertSize = 14
              XValues.DateTime = False
              XValues.Name = 'Start'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
              Callout.Style = psRightTriangle
              Callout.Arrow.Visible = False
              StartValues.DateTime = False
              StartValues.Name = 'Start'
              StartValues.Order = loAscending
              EndValues.Name = 'End'
              EndValues.Order = loNone
              NextTask.Name = 'NextTask'
              NextTask.Order = loNone
            end
          end
        end
      end
    end
    object SourcePanel: TPanel
      Left = 1
      Top = 1
      Width = 394
      Height = 404
      Align = alClient
      TabOrder = 1
      object Splitter6: TSplitter
        Left = 1
        Top = 220
        Width = 392
        Height = 8
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 217
      end
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 392
        Height = 17
        Align = alTop
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 374
          Top = 1
          Width = 17
          Height = 15
          Align = alRight
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000025160000251600000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            848484E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2
            E2848484FFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2E2
            E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2E2E2FF
            FFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFE2E2E2444444E2E2E2E2E2E2444444E2E2E2FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E244
            4444444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444444444E2E2E2FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2
            E2E2E2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFE2E2E2444444E2E2E2FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFF
            FFFFFFFFFFFFFFFFE2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            E2E2E2444444E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E24444
            44E2E2E2FFFFFFFFFFFFFFFFFFFFFFFF848484E2E2E2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2848484FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 0
          OnClick = BitBtn1Click
        end
      end
      object SourceGrid: TStringGrid
        Left = 1
        Top = 18
        Width = 392
        Height = 202
        Align = alClient
        ColCount = 2
        FixedColor = clActiveCaption
        RowCount = 2
        TabOrder = 1
      end
      object Memo1: TMemo
        Left = 1
        Top = 228
        Width = 392
        Height = 175
        Align = alBottom
        ScrollBars = ssBoth
        TabOrder = 2
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 48
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N6: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1080#1072#1075#1088#1072#1084#1084#1091' '#1043#1072#1085#1090#1072
        OnClick = N7Click
      end
    end
    object N3: TMenuItem
      Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
      OnClick = N3Click
    end
    object N5: TMenuItem
      Caption = #1055#1072#1085#1077#1083#1080
      object N2: TMenuItem
        Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        OnClick = N2Click
      end
      object N4: TMenuItem
        Caption = #1055#1086#1076#1088#1086#1073#1085#1099#1077' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1103
        OnClick = N4Click
      end
    end
  end
  object ImageList1: TImageList
    Left = 280
    Top = 152
    Bitmap = {
      494C010101000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004CBFF2FF4CBD
      F2FF4CBBF2FF4CB9F2FF4CB7F2FF4BB5F2FF4BB2F2FF4BB0F2FF4BAEF2FF4BAC
      F2FF4BAAF2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004795E4FF4CBF
      F2FF4CBDF2FF4CBBF2FF4CB9F2FF4CB7F2FF4BB5F2FF4BB2F2FF4BB0F2FF4BAE
      F2FF4BACF2FF4BAAF2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004797E6FF4CC1
      F2FF4CBFF2FF4CBDF2FF4CBBF2FF4CB9F2FF4CB7F2FF4BB5F2FF4BB2F2FF4BB0
      F2FF4BAEF2FF4BACF2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000489AE7FF4CC3
      F2FF4CC1F2FF4CBFF2FF4CBDF2FF4CBBF2FF4CB9F2FF4CB7F2FF4BB5F2FF4BB2
      F2FF4BB0F2FF4BAEF2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000499CE9FF4CC6
      F2FF4CC3F2FF4CC1F2FF4CBFF2FF4CBDF2FF4CBBF2FF4CB9F2FF4CB7F2FF4BB5
      F2FF4BB2F2FF4BB0F2FF4BAEF2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A9EEBFF499C
      E9FF4CC6F2FF4CC3F2FF4CC1F2FF4CBFF2FF4CBDF2FF4CBBF2FF4CB9F2FF4CB7
      F2FF4BB5F2FF4BB2F2FF4BB0F2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004BA0EDFF4A9E
      EBFF499CE9FF489AE7FF4797E6FF4795E4FF4693E2FF4591E0FF448FDFFF438D
      DDFF428BDBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004CA2EEFF4BA0
      EDFF4A9EEBFF499CE9FF489AE7FF4797E6FF4795E4FF4693E2FF4591E0FF448F
      DFFF438DDDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004DA4F0FF4CA2
      EEFF4BA0EDFF4A9EEBFF499CE9FF489AE7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object OpenDialog1: TOpenDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083'|*.txt'
    Left = 280
    Top = 104
  end
end
