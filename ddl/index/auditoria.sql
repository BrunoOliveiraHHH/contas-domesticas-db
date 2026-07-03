-- Indices de consulta da auditoria.
create index ix_auditoria_data_hora on auditoria (data_hora);
create index ix_auditoria_usuario on auditoria (usuario);
