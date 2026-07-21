-- Chaves estrangeiras de preferencia.
alter table preferencia add constraint fk_preferencia_usuario foreign key (usuario_id) references usuario (id);
