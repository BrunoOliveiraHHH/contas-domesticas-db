-- Chaves estrangeiras de carteira.
alter table carteira add constraint fk_carteira_dono foreign key (dono_id) references usuario (id);
