-- Chaves estrangeiras de item_compra.
alter table item_compra add constraint fk_item_compra_lista foreign key (lista_compra_id) references lista_compra (id) on delete cascade;
alter table item_compra add constraint fk_item_compra_produto foreign key (produto_id) references produto (id);
alter table item_compra add constraint fk_item_compra_unidade_medida foreign key (unidade_medida_id) references unidade_medida (id);
alter table item_compra add constraint fk_item_compra_mercado foreign key (mercado_escolhido_id) references mercado (id);
