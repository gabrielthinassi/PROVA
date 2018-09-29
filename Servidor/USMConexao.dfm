object SMConexao: TSMConexao
  OldCreateOrder = False
  Height = 399
  Width = 484
  object SQLConexaoBanco: TSQLConnection
    ConnectionName = 'Banco Prova'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver230.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=23.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver230.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=23.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=C:\Users\Felippe\Desktop\PROVA\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 64
    Top = 32
  end
  object SQLDSProximoCodigo: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConexaoBanco
    Left = 64
    Top = 120
  end
  object DSPProximoCodigo: TDataSetProvider
    DataSet = SQLDSProximoCodigo
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 176
  end
  object CDSProximoCodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPProximoCodigo'
    Left = 64
    Top = 232
  end
  object SQLDSExecuteReader: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConexaoBanco
    Left = 184
    Top = 120
  end
  object DSPExecuteReader: TDataSetProvider
    DataSet = SQLDSExecuteReader
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 176
  end
  object CDSExecuteReader: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPExecuteReader'
    Left = 184
    Top = 232
  end
end
