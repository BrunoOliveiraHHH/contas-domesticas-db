-- Indices de unidade_medida.
create unique index uk_unidade_medida_sigla on unidade_medida (sigla);
create unique index uk_unidade_medida_uuid on unidade_medida (uuid);
