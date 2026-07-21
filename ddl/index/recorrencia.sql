-- Indices de recorrencia.
create index ix_recorrencia_ativa on recorrencia (ativa);
create unique index uk_recorrencia_uuid on recorrencia (uuid);
