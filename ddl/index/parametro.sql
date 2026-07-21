-- Indices de parametro.
create index ix_parametro_chave_vigencia on parametro (chave, vigencia_inicio);
create unique index uk_parametro_uuid on parametro (uuid);
