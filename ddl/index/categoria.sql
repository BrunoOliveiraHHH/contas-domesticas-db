-- Indices de categoria.
create index ix_categoria_tipo on categoria (tipo);
create index ix_categoria_pai on categoria (categoria_pai_id);
create unique index uk_categoria_uuid on categoria (uuid);
