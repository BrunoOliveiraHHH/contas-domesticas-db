-- Indices de item_compra.
create index ix_item_compra_lista on item_compra (lista_compra_id);
create unique index uk_item_compra_uuid on item_compra (uuid);
