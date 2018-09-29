inherited SMCadContato: TSMCadContato
  OldCreateOrder = True
  OnCreate = DSServerModuleCreate
  inherited SQLDSCadastro: TSQLDataSet
    CommandText = 
      'select CONTATO.CODIGO_CONTATO,'#13#10'       CONTATO.NOME_CONTATO'#13#10'fro' +
      'm CONTATO'#13#10'where CONTATO.CODIGO_CONTATO = :CODIGO'
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object SQLDSCadastroCODIGO_CONTATO: TIntegerField
      FieldName = 'CODIGO_CONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSCadastroNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
  end
  inherited SQLDSConsulta: TSQLDataSet
    CommandText = 
      'select CONTATO.CODIGO_CONTATO,'#13#10'       CONTATO.NOME_CONTATO'#13#10'fro' +
      'm CONTATO'
    Left = 328
    object SQLDSConsultaCODIGO_CONTATO: TIntegerField
      FieldName = 'CODIGO_CONTATO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSConsultaNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      ProviderFlags = [pfInWhere]
      Required = True
      Size = 40
    end
  end
  inherited DSPConsulta: TDataSetProvider
    Left = 328
  end
  object SQLDSTelefones: TSQLDataSet
    CommandText = 
      'select TELEFONE.AUTOINC_TEL,'#13#10'       TELEFONE.CONTATO_TEL,'#13#10'    ' +
      '   TELEFONE.TELEFONE_TEL'#13#10'from TELEFONE'#13#10'where TELEFONE.CONTATO_' +
      'TEL = :CODIGO_CONTATO'
    DataSource = DSTelefones
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CONTATO'
        ParamType = ptInput
      end>
    SQLConnection = SMConexao.SQLConexaoBanco
    Left = 232
    Top = 40
    object SQLDSTelefonesAUTOINC_TEL: TIntegerField
      FieldName = 'AUTOINC_TEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSTelefonesCONTATO_TEL: TIntegerField
      FieldName = 'CONTATO_TEL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SQLDSTelefonesTELEFONE_TEL: TStringField
      FieldName = 'TELEFONE_TEL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DSTelefones: TDataSource
    DataSet = SQLDSCadastro
    Left = 136
    Top = 40
  end
  object DSEndereco: TDataSource
    DataSet = SQLDSCadastro
    Left = 136
    Top = 88
  end
  object SQLDSEnderecos: TSQLDataSet
    CommandText = 
      'select ENDERECO.AUTOINC_ENDERECO,'#13#10'       ENDERECO.CONTATO_ENDER' +
      'ECO,'#13#10'       ENDERECO.DESCRICAO_ENDERECO,'#13#10'       ENDERECO.NUMER' +
      'O_ENDERECO'#13#10'from ENDERECO'#13#10'where ENDERECO.CONTATO_ENDERECO = :CO' +
      'DIGO_CONTATO'
    DataSource = DSEndereco
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CONTATO'
        ParamType = ptInput
      end>
    SQLConnection = SMConexao.SQLConexaoBanco
    Left = 232
    Top = 88
    object SQLDSEnderecosAUTOINC_ENDERECO: TIntegerField
      FieldName = 'AUTOINC_ENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSEnderecosCONTATO_ENDERECO: TIntegerField
      FieldName = 'CONTATO_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SQLDSEnderecosDESCRICAO_ENDERECO: TStringField
      FieldName = 'DESCRICAO_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object SQLDSEnderecosNUMERO_ENDERECO: TIntegerField
      FieldName = 'NUMERO_ENDERECO'
      ProviderFlags = [pfInUpdate]
    end
  end
end
