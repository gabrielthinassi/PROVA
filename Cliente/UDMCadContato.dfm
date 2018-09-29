inherited DMCadContato: TDMCadContato
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  inherited CDSCadastro: TClientDataSet
    ProviderName = 'DSPCadastro'
    RemoteServer = DSPCCadastro
    object CDSCadastroCODIGO_CONTATO: TIntegerField
      FieldName = 'CODIGO_CONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCadastroNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object CDSCadastroSQLDSTelefones: TDataSetField
      FieldName = 'SQLDSTelefones'
    end
    object CDSCadastroSQLDSEnderecos: TDataSetField
      FieldName = 'SQLDSEnderecos'
    end
  end
  inherited DSPCCadastro: TDSProviderConnection
    ServerClassName = 'TSMCadContato'
    Connected = True
    SQLConnection = DMConexao.SQLConexaoBanco
  end
  inherited CDSConsulta: TClientDataSet
    ProviderName = 'DSPConsulta'
    RemoteServer = DSPCCadastro
    object CDSConsultaCODIGO_CONTATO: TIntegerField
      FieldName = 'CODIGO_CONTATO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object CDSConsultaNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      ProviderFlags = [pfInWhere]
      Size = 40
    end
  end
  object CDSTelefones: TClientDataSet
    Aggregates = <>
    DataSetField = CDSCadastroSQLDSTelefones
    Params = <>
    BeforePost = CDSTelefonesBeforePost
    BeforeDelete = CDSTelefonesBeforeDelete
    OnNewRecord = CDSTelefonesNewRecord
    Left = 64
    Top = 128
    object CDSTelefonesAUTOINC_TEL: TIntegerField
      FieldName = 'AUTOINC_TEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTelefonesCONTATO_TEL: TIntegerField
      FieldName = 'CONTATO_TEL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CDSTelefonesTELEFONE_TEL: TStringField
      FieldName = 'TELEFONE_TEL'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!\(99\)00000-0000;1;_'
    end
  end
  object CDSEnderecos: TClientDataSet
    Aggregates = <>
    DataSetField = CDSCadastroSQLDSEnderecos
    Params = <>
    RemoteServer = DSPCCadastro
    BeforePost = CDSEnderecosBeforePost
    BeforeDelete = CDSEnderecosBeforeDelete
    OnNewRecord = CDSEnderecosNewRecord
    Left = 64
    Top = 176
    object CDSEnderecosAUTOINC_ENDERECO: TIntegerField
      FieldName = 'AUTOINC_ENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSEnderecosCONTATO_ENDERECO: TIntegerField
      FieldName = 'CONTATO_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CDSEnderecosDESCRICAO_ENDERECO: TStringField
      FieldName = 'DESCRICAO_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object CDSEnderecosNUMERO_ENDERECO: TIntegerField
      FieldName = 'NUMERO_ENDERECO'
      ProviderFlags = [pfInUpdate]
    end
  end
end
