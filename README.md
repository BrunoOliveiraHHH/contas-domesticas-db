# contas-domesticas-db

Scripts de banco de dados (PostgreSQL) do projeto **Contas Domésticas**.

## Estrutura

```
ddl/
├── init/       # criação de role e database (executar como superusuário)
│   ├── 01_create_role.sql
│   └── 02_create_database.sql
├── tables/     # CREATE TABLE
├── primary/    # PRIMARY KEY
├── foreign/    # FOREIGN KEY
└── index/      # CREATE INDEX
dml/
└── inserts/    # INSERT (carga inicial / dados de referência)
```

## Banco / usuário

| Item     | Valor              |
|----------|--------------------|
| database | `contasdomesticas` |
| role     | `contasdomesticas` |
| senha    | `contasapi`        |
| schema   | `public` (padrão)  |

## Ordem de execução

1. `ddl/init/01_create_role.sql` — como superusuário (`postgres`), no banco `postgres`.
2. `ddl/init/02_create_database.sql` — como superusuário; o `GRANT` final conectado ao banco `contasdomesticas`.
3. `ddl/tables/` → `ddl/primary/` → `ddl/foreign/` → `ddl/index/` → `dml/inserts/`.

> As migrações versionadas da aplicação são gerenciadas via Flyway no repositório
> `contas-domesticas-api` (`src/main/resources/db/migration`).
