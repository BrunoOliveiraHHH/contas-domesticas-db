-- Indices de carteira.
create index ix_carteira_dono on carteira (dono_id);
create index ix_carteira_tipo on carteira (tipo);
create unique index uk_carteira_uuid on carteira (uuid);
