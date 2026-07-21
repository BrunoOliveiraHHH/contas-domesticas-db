-- Chaves estrangeiras de cotacao_produto.
alter table cotacao_produto add constraint fk_cotacao_produto foreign key (produto_id) references produto (id);
alter table cotacao_produto add constraint fk_cotacao_mercado foreign key (mercado_id) references mercado (id);
