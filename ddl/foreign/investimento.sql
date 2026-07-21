-- Chaves estrangeiras de investimento.
alter table investimento add constraint fk_investimento_carteira foreign key (carteira_id) references carteira (id);
