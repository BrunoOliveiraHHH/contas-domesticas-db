-- Chaves estrangeiras de lancamento.
alter table lancamento add constraint fk_lancamento_carteira foreign key (carteira_id) references carteira (id);
alter table lancamento add constraint fk_lancamento_categoria foreign key (categoria_id) references categoria (id);
alter table lancamento add constraint fk_lancamento_forma_pagamento foreign key (forma_pagamento_id) references forma_pagamento (id);
alter table lancamento add constraint fk_lancamento_recorrencia foreign key (recorrencia_id) references recorrencia (id);
