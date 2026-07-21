-- Indices de lista_compra.
create index ix_lista_compra_status on lista_compra (status);
create unique index uk_lista_compra_uuid on lista_compra (uuid);
