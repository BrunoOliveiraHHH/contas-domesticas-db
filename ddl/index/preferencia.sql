-- Indices de preferencia.
create unique index uk_preferencia_chave_usuario on preferencia (chave, usuario_id);
create unique index uk_preferencia_uuid on preferencia (uuid);
