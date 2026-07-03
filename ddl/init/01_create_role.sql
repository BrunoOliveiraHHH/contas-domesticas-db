-- =====================================================================
-- Criacao do usuario (role) da aplicacao Contas Domesticas.
-- Executar como superusuario (ex.: postgres), conectado ao banco 'postgres'.
-- =====================================================================

CREATE ROLE contasdomesticas WITH
    LOGIN
    PASSWORD 'contasapi'
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    INHERIT;
