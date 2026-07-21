-- Indices de produto.
create index ix_produto_nome on produto (nome);
create unique index uk_produto_uuid on produto (uuid);
