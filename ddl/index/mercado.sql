-- Indices de mercado.
create index ix_mercado_tipo on mercado (tipo);
create index ix_mercado_atualizado_em on mercado (atualizado_em);
create unique index uk_mercado_uuid on mercado (uuid);
