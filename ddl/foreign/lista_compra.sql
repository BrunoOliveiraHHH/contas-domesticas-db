-- Chaves estrangeiras de lista_compra.
alter table lista_compra add constraint fk_lista_compra_carteira foreign key (carteira_id) references carteira (id);
