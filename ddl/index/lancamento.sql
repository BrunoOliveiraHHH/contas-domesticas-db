-- Indices de lancamento.
create index ix_lancamento_competencia on lancamento (data_competencia);
create index ix_lancamento_carteira on lancamento (carteira_id);
create index ix_lancamento_tipo_status on lancamento (tipo, status);
create index ix_lancamento_grupo_parcela on lancamento (grupo_parcela);
create index ix_lancamento_atualizado_em on lancamento (atualizado_em);
create unique index uk_lancamento_uuid on lancamento (uuid);
