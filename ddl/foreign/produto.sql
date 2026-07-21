-- Chaves estrangeiras de produto.
alter table produto add constraint fk_produto_categoria foreign key (categoria_id) references categoria (id);
alter table produto add constraint fk_produto_unidade_medida foreign key (unidade_medida_padrao_id) references unidade_medida (id);
