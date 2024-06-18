object REPORT: TREPORT
  Left = 0
  Top = 0
  Caption = 'RELAT'#211'RIO'
  ClientHeight = 505
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TButton_PRINT: TButton
    Left = 0
    Top = 480
    Width = 658
    Height = 25
    Align = alBottom
    Caption = 'Gerar relat'#243'rio'
    TabOrder = 0
    OnClick = TButton_PRINTClick
    ExplicitLeft = -8
    ExplicitTop = 407
    ExplicitWidth = 1085
  end
  object RadioButton_SORT_ESTADO: TRadioButton
    Left = 0
    Top = 463
    Width = 658
    Height = 17
    Align = alBottom
    Caption = 'Ordenar por estado'
    TabOrder = 1
    OnClick = RadioButton_SORT_ESTADOClick
    ExplicitLeft = -96
    ExplicitTop = 0
    ExplicitWidth = 1181
  end
  object RadioButton_SORT_COD_CIDADE: TRadioButton
    Left = 0
    Top = 446
    Width = 658
    Height = 17
    Align = alBottom
    Caption = 'Ordenar por c'#243'digo da cidade'
    TabOrder = 2
    OnClick = RadioButton_SORT_COD_CIDADEClick
    ExplicitLeft = 8
    ExplicitTop = 440
  end
  object RadioButton_SORT_COD_CLIENTE: TRadioButton
    Left = 0
    Top = 429
    Width = 658
    Height = 17
    Align = alBottom
    Caption = 'Ordenar por c'#243'digo do cliente'
    TabOrder = 3
    OnClick = RadioButton_SORT_COD_CLIENTEClick
    ExplicitLeft = -96
    ExplicitTop = 34
    ExplicitWidth = 1181
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 657
    Height = 423
    DataSource = DM_SISTEMA.DataSource_RELATORIO
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ENDERECO'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_ESTADO'
        Visible = True
      end>
  end
  object Edit_CIDADE: TEdit
    Left = 216
    Top = 452
    Width = 193
    Height = 21
    TabOrder = 5
    TextHint = 'Digite a cidade'
    OnChange = Edit_CIDADEChange
  end
  object RadioButton_CIDADE: TRadioButton
    Left = 216
    Top = 429
    Width = 193
    Height = 17
    Caption = 'Agrupamento pelo nome da cidade'
    TabOrder = 6
    OnClick = RadioButton_CIDADEClick
  end
  object ppReport_RELATORIO: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline_REPORT
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 616
    Top = 432
    Version = '22.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline_REPORT'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object TITULO: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'TITULO'
        Border.mmPadding = 0
        Caption = 'TESTE SINQIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 87048
        mmTop = 5027
        mmWidth = 28046
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel_COD_CLIENTE: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label_COD_CLIENTE'
        Border.mmPadding = 0
        Caption = 'COD.CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 23019
        mmWidth = 22490
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel_CLI_NOME: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label_CLI_NOME'
        Border.mmPadding = 0
        Caption = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 44447
        mmTop = 23019
        mmWidth = 10584
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel_CLI_ENDERECO: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label_CLI_ENDERECO'
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 81494
        mmTop = 23019
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel_COD_CIDADE: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label_COD_CIDADE'
        Border.mmPadding = 0
        Caption = 'COD.CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 115087
        mmTop = 23283
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel_CID_NOME: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label_CID_NOME'
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 153194
        mmTop = 23283
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel_CID_ESTADO: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label_CID_ESTADO'
        Border.mmPadding = 0
        Caption = 'ESTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 181769
        mmTop = 23019
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 794
        mmWidth = 197909
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText_COD_CLIENTE: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText_COD_CLIENTE'
        Border.mmPadding = 0
        DataField = 'COD_CLIENTE'
        DataPipeline = ppDBPipeline_REPORT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline_REPORT'
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 1854
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText_CLI_NOME: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText_CLI_NOME'
        Border.mmPadding = 0
        DataField = 'CLI_NOME'
        DataPipeline = ppDBPipeline_REPORT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline_REPORT'
        mmHeight = 4233
        mmLeft = 30687
        mmTop = 1854
        mmWidth = 38105
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText_CLI_ENDERECO: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText_CLI_ENDERECO'
        Border.mmPadding = 0
        DataField = 'CLI_ENDERECO'
        DataPipeline = ppDBPipeline_REPORT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline_REPORT'
        mmHeight = 4233
        mmLeft = 71699
        mmTop = 1854
        mmWidth = 38898
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText_COD_CIDADE: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText_COD_CIDADE'
        Border.mmPadding = 0
        DataField = 'COD_CIDADE'
        DataPipeline = ppDBPipeline_REPORT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline_REPORT'
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 1854
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText_CID_NOME: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText_CID_NOME'
        Border.mmPadding = 0
        DataField = 'CID_NOME'
        DataPipeline = ppDBPipeline_REPORT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline_REPORT'
        mmHeight = 4233
        mmLeft = 142346
        mmTop = 1854
        mmWidth = 33338
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText_CID_ESTADO: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText_CID_ESTADO'
        Border.mmPadding = 0
        DataField = 'CID_ESTADO'
        DataPipeline = ppDBPipeline_REPORT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline_REPORT'
        mmHeight = 4233
        mmLeft = 181769
        mmTop = 1854
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 166688
        mmTop = 8996
        mmWidth = 31221
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline_REPORT: TppDBPipeline
    DataSource = DM_SISTEMA.DataSource_RELATORIO
    UserName = 'DBPipeline_REPORT'
    Left = 520
    Top = 432
    object ppDBPipeline_REPORTppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLIENTE'
      FieldName = 'COD_CLIENTE'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline_REPORTppField2: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppDBPipeline_REPORTppField3: TppField
      FieldAlias = 'CLI_ENDERECO'
      FieldName = 'CLI_ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppDBPipeline_REPORTppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CIDADE'
      FieldName = 'COD_CIDADE'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline_REPORTppField5: TppField
      FieldAlias = 'CID_NOME'
      FieldName = 'CID_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppDBPipeline_REPORTppField6: TppField
      FieldAlias = 'CID_ESTADO'
      FieldName = 'CID_ESTADO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
  end
end
