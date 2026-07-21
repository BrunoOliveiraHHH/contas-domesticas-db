-- Chaves estrangeiras de rateio.
alter table rateio add constraint fk_rateio_lancamento foreign key (lancamento_id) references lancamento (id);
