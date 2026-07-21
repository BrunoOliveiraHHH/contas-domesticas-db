-- Indices de usuario.
create unique index uk_usuario_login on usuario (login);
create unique index uk_usuario_uuid on usuario (uuid);
