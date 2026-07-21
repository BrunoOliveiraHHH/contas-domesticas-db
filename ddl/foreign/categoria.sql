-- Chaves estrangeiras de categoria.
alter table categoria add constraint fk_categoria_pai foreign key (categoria_pai_id) references categoria (id);
