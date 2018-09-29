object SMPaiCadastro: TSMPaiCadastro
  OldCreateOrder = False
  Height = 293
  Width = 456
  object SQLDSCadastro: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SMConexao.SQLConexaoBanco
    Left = 48
    Top = 40
  end
  object DSPCadastro: TDataSetProvider
    DataSet = SQLDSCadastro
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 88
  end
  object SQLDSConsulta: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SMConexao.SQLConexaoBanco
    Left = 144
    Top = 40
  end
  object DSPConsulta: TDataSetProvider
    DataSet = SQLDSConsulta
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 88
  end
end
