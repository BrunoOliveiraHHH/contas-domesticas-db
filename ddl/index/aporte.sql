-- Indices de aporte.
create index ix_aporte_investimento_data on aporte (investimento_id, data);
create unique index uk_aporte_uuid on aporte (uuid);
