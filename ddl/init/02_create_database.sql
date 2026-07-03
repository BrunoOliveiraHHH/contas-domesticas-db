-- =====================================================================
-- Criacao do banco de dados Contas Domesticas.
-- Executar como superusuario (ex.: postgres), conectado ao banco 'postgres'.
-- O usuario 'contasdomesticas' deve existir (ver 01_create_role.sql).
-- Utiliza o schema padrao 'public'.
-- =====================================================================

CREATE DATABASE contasdomesticas
    WITH
    OWNER = contasdomesticas
    ENCODING = 'UTF8'
    TEMPLATE = template0
    CONNECTION LIMIT = -1;

-- Garante privilegios do usuario da aplicacao sobre o schema public.
-- Executar conectado ao banco 'contasdomesticas'.
GRANT ALL ON SCHEMA public TO contasdomesticas;
