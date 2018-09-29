object DMPaiCadastro: TDMPaiCadastro
  OldCreateOrder = False
  Height = 306
  Width = 452
  object CDSCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = CDSCadastroBeforePost
    OnReconcileError = CDSCadastroReconcileError
    Left = 64
    Top = 80
  end
  object DSPCCadastro: TDSProviderConnection
    Left = 64
    Top = 32
  end
  object CDSConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 80
  end
end
