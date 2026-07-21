-- Indices de participante_rateio.
create index ix_participante_rateio_rateio on participante_rateio (rateio_id);
create unique index uk_participante_rateio_uuid on participante_rateio (uuid);
