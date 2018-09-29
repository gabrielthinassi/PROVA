inherited SMCadCidade: TSMCadCidade
  OnCreate = DSServerModuleCreate
  inherited SQLDSCadastro: TSQLDataSet
    CommandText = 
      'select CIDADE.CODIGO_CIDADE,'#13#10'       CIDADE.NOME_CIDADE'#13#10'from CI' +
      'DADE'#13#10'where CIDADE.CODIGO_CIDADE = :CODIGO'
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object SQLDSCadastroCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSCadastroNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
  end
  inherited SQLDSConsulta: TSQLDataSet
    CommandText = 
      'select CIDADE.CODIGO_CIDADE,'#13#10'       CIDADE.NOME_CIDADE'#13#10'from CI' +
      'DADE'
    object SQLDSConsultaCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSConsultaNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      ProviderFlags = []
      Required = True
      Size = 40
    end
  end
end
