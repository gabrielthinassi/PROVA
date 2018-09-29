inherited SMPaiCadastro1: TSMPaiCadastro1
  inherited SQLDSCadastro: TSQLDataSet
    CommandText = 
      'select ENDERECO.AUTOINC_ENDERECO,'#13#10'       ENDERECO.CONTATO_ENDER' +
      'ECO,'#13#10'       ENDERECO.DESCRICAO_ENDERECO,'#13#10'       ENDERECO.NUMER' +
      'O_ENDERECO'#13#10'from ENDERECO'#13#10'where ENDERECO.AUTOINC_ENDERECO = :CO' +
      'DIGO'
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object SQLDSCadastroAUTOINC_ENDERECO: TIntegerField
      FieldName = 'AUTOINC_ENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSCadastroCONTATO_ENDERECO: TIntegerField
      FieldName = 'CONTATO_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SQLDSCadastroDESCRICAO_ENDERECO: TStringField
      FieldName = 'DESCRICAO_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object SQLDSCadastroNUMERO_ENDERECO: TIntegerField
      FieldName = 'NUMERO_ENDERECO'
      ProviderFlags = [pfInUpdate]
    end
  end
end
