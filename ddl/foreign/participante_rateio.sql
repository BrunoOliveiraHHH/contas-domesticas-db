-- Chaves estrangeiras de participante_rateio.
alter table participante_rateio add constraint fk_participante_rateio_rateio foreign key (rateio_id) references rateio (id) on delete cascade;
alter table participante_rateio add constraint fk_participante_rateio_usuario foreign key (usuario_id) references usuario (id);
