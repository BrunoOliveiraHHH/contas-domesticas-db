-- Indices de rateio.
create unique index uk_rateio_lancamento on rateio (lancamento_id);
create unique index uk_rateio_uuid on rateio (uuid);
