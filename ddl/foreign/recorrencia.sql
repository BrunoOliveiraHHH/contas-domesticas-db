-- Chaves estrangeiras de recorrencia.
alter table recorrencia add constraint fk_recorrencia_carteira foreign key (carteira_id) references carteira (id);
alter table recorrencia add constraint fk_recorrencia_categoria foreign key (categoria_id) references categoria (id);
alter table recorrencia add constraint fk_recorrencia_forma_pagamento foreign key (forma_pagamento_id) references forma_pagamento (id);
