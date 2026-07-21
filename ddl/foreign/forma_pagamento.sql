-- Chaves estrangeiras de forma_pagamento.
alter table forma_pagamento add constraint fk_forma_pagamento_carteira foreign key (carteira_id) references carteira (id);
