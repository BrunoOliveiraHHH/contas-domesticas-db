-- Chaves estrangeiras de aporte.
alter table aporte add constraint fk_aporte_investimento foreign key (investimento_id) references investimento (id) on delete cascade;
