-- Indices de investimento.
create index ix_investimento_tipo on investimento (tipo_investimento);
create unique index uk_investimento_uuid on investimento (uuid);
