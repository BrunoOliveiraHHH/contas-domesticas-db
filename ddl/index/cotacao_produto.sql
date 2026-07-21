-- Indices de cotacao_produto.
create index ix_cotacao_produto_mercado on cotacao_produto (produto_id, mercado_id);
create unique index uk_cotacao_produto_uuid on cotacao_produto (uuid);
