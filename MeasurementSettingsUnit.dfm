object MeasurementSettingsForm: TMeasurementSettingsForm
  Left = 586
  Top = 236
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Measurement Settings'
  ClientHeight = 732
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 593
    Height = 697
    SkinData.SkinManager = sSkinManager1
    DoubleBuffered = False
    TabOrder = 0
    object sImgLabel1: TsImgLabel
      Left = 24
      Top = 24
      Width = 103
      Height = 16
      SkinManager = sSkinManager1
      Caption = 'Frequency Select'
      ImageIndex = 3
      Images = MainForm.sVirtualImageList1
    end
    object sImgLabel2: TsImgLabel
      Left = 24
      Top = 56
      Width = 77
      Height = 16
      SkinManager = sSkinManager1
      Caption = 'DDS Vpeak'
      ImageIndex = 4
      Images = MainForm.sVirtualImageList1
    end
    object sLabel1: TsLabel
      Left = 216
      Top = 57
      Width = 26
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'mVolt'
    end
    object sImgLabel3: TsImgLabel
      Left = 24
      Top = 88
      Width = 96
      Height = 16
      SkinManager = sSkinManager1
      Caption = 'Current Selector'
      ImageIndex = 4
      Images = MainForm.sVirtualImageList1
    end
    object sLabel2: TsLabel
      Left = 216
      Top = 89
      Width = 63
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'Resistor Gain'
    end
    object sLabel3: TsLabel
      Left = 368
      Top = 89
      Width = 28
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'kOhm'
    end
    object sLabel4: TsLabel
      Left = 216
      Top = 113
      Width = 63
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'Resistor Gain'
    end
    object sLabel5: TsLabel
      Left = 368
      Top = 113
      Width = 28
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'kOhm'
    end
    object sLabel6: TsLabel
      Left = 216
      Top = 137
      Width = 63
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'Resistor Gain'
    end
    object sLabel7: TsLabel
      Left = 368
      Top = 137
      Width = 28
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'kOhm'
    end
    object sLabel8: TsLabel
      Left = 216
      Top = 161
      Width = 63
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'Resistor Gain'
    end
    object sLabel9: TsLabel
      Left = 368
      Top = 161
      Width = 28
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'kOhm'
    end
    object sLabel10: TsLabel
      Left = 416
      Top = 89
      Width = 24
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'ZRef'
    end
    object sLabel11: TsLabel
      Left = 512
      Top = 89
      Width = 28
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'kOhm'
    end
    object sLabel12: TsLabel
      Left = 416
      Top = 113
      Width = 24
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'ZRef'
    end
    object sLabel13: TsLabel
      Left = 512
      Top = 113
      Width = 28
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'kOhm'
    end
    object sLabel14: TsLabel
      Left = 416
      Top = 137
      Width = 24
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'ZRef'
    end
    object sLabel15: TsLabel
      Left = 512
      Top = 137
      Width = 28
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'kOhm'
    end
    object sLabel16: TsLabel
      Left = 416
      Top = 161
      Width = 24
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'ZRef'
    end
    object sLabel17: TsLabel
      Left = 512
      Top = 161
      Width = 28
      Height = 13
      SkinManager = sSkinManager1
      Caption = 'kOhm'
    end
    object sEdit1: TsEdit
      Left = 136
      Top = 22
      Width = 337
      Height = 21
      TabOrder = 0
      Text = 'c:/frequency.txt'
      SkinData.SkinManager = sSkinManager1
    end
    object sButton1: TsButton
      Left = 480
      Top = 23
      Width = 27
      Height = 19
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Reflected = True
    end
    object VPeakEdit: TsEdit
      Left = 136
      Top = 54
      Width = 73
      Height = 21
      TabOrder = 2
      Text = '300'
      SkinData.SkinManager = sSkinManager1
    end
    object ISelect1: TsCheckBox
      Left = 133
      Top = 88
      Width = 66
      Height = 17
      Caption = '100.0uA'
      TabOrder = 3
      SkinData.SkinManager = sSkinManager1
    end
    object ISelect2: TsCheckBox
      Left = 133
      Top = 112
      Width = 60
      Height = 17
      Caption = '50.0uA'
      TabOrder = 4
      SkinData.SkinManager = sSkinManager1
    end
    object ISelect3: TsCheckBox
      Left = 133
      Top = 136
      Width = 60
      Height = 17
      Caption = '10.0uA'
      TabOrder = 5
      SkinData.SkinManager = sSkinManager1
    end
    object ISelect4: TsCheckBox
      Left = 133
      Top = 160
      Width = 54
      Height = 17
      Caption = '5.0uA'
      TabOrder = 6
      SkinData.SkinManager = sSkinManager1
    end
    object Gain1Edit: TsEdit
      Left = 288
      Top = 86
      Width = 73
      Height = 21
      TabOrder = 7
      Text = '3'
      OnChange = Gain1EditChange
      SkinData.SkinManager = sSkinManager1
    end
    object Gain2Edit: TsEdit
      Left = 288
      Top = 110
      Width = 73
      Height = 21
      TabOrder = 8
      Text = '6'
      OnChange = Gain2EditChange
      SkinData.SkinManager = sSkinManager1
    end
    object Gain3Edit: TsEdit
      Left = 288
      Top = 134
      Width = 73
      Height = 21
      TabOrder = 9
      Text = '30'
      OnChange = Gain3EditChange
      SkinData.SkinManager = sSkinManager1
    end
    object Gain4Edit: TsEdit
      Left = 288
      Top = 158
      Width = 73
      Height = 21
      TabOrder = 10
      Text = '60'
      OnChange = Gain4EditChange
      SkinData.SkinManager = sSkinManager1
    end
    object sEdit2: TsEdit
      Left = 448
      Top = 86
      Width = 57
      Height = 21
      TabOrder = 11
      Text = '3'
      SkinData.SkinManager = sSkinManager1
    end
    object sEdit3: TsEdit
      Left = 448
      Top = 110
      Width = 57
      Height = 21
      TabOrder = 12
      Text = '6'
      SkinData.SkinManager = sSkinManager1
    end
    object sEdit4: TsEdit
      Left = 448
      Top = 134
      Width = 57
      Height = 21
      TabOrder = 13
      Text = '30'
      SkinData.SkinManager = sSkinManager1
    end
    object sEdit5: TsEdit
      Left = 448
      Top = 158
      Width = 57
      Height = 21
      TabOrder = 14
      Text = '60'
      SkinData.SkinManager = sSkinManager1
    end
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 699
    Width = 592
    Height = 33
    SkinData.SkinSection = 'BAR'
    DoubleBuffered = False
    TabOrder = 1
    object sBitBtn1: TsBitBtn
      Left = 4
      Top = 4
      Width = 501
      Height = 25
      TabOrder = 0
      Kind = bkOK
      SkinData.SkinManager = sSkinManager1
    end
    object sBitBtn2: TsBitBtn
      Left = 514
      Top = 4
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object sSkinManager1: TsSkinManager
    ButtonsOptions.OldGlyphsMode = True
    IsDefault = False
    InternalSkins = <>
    SkinDirectory = 
      'C:\Users\prisw\My Drive\GitHub\Bio Impedance Spectrometer Softwa' +
      're\0.0.2DBG\Skins'
    SkinName = 'AlterMetro'
    SkinInfo = '15'
    ThirdParty.ThirdEdits = ' '
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = ' '
    ThirdParty.ThirdCheckBoxes = ' '
    ThirdParty.ThirdGroupBoxes = ' '
    ThirdParty.ThirdListViews = ' '
    ThirdParty.ThirdPanels = ' '
    ThirdParty.ThirdGrids = ' '
    ThirdParty.ThirdTreeViews = ' '
    ThirdParty.ThirdComboBoxes = ' '
    ThirdParty.ThirdWWEdits = ' '
    ThirdParty.ThirdVirtualTrees = ' '
    ThirdParty.ThirdGridEh = ' '
    ThirdParty.ThirdPageControl = ' '
    ThirdParty.ThirdTabControl = ' '
    ThirdParty.ThirdToolBar = ' '
    ThirdParty.ThirdStatusBar = ' '
    ThirdParty.ThirdSpeedButton = ' '
    ThirdParty.ThirdScrollControl = ' '
    ThirdParty.ThirdUpDown = ' '
    ThirdParty.ThirdScrollBar = ' '
    ThirdParty.ThirdStaticText = ' '
    ThirdParty.ThirdNativePaint = ' '
    Left = 40
    Top = 600
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinManager = sSkinManager1
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 8
    Top = 600
  end
end
