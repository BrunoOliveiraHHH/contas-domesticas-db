# contas-domesticas-db

Scripts de banco de dados (PostgreSQL) do projeto **Contas Domésticas**.

## Propósito

O **Contas Domésticas** unifica **finanças familiar e individual** (receitas, despesas,
investimentos por carteira, com recorrência, parcelamento e rateio), **listas de compras**
(mantimentos e material de construção por unidade/kg/volume, com histórico de preço) e
**calculadoras/configuração** (índices e alíquotas parametrizáveis).

Este repositório guarda os **scripts SQL organizados** (tables/primary/foreign/index/inserts) que
**espelham** o schema da aplicação. A **fonte de verdade** das migrações é o **Flyway** no repo
`contas-domesticas-api` (`src/main/resources/db/migration`); aqui mantemos a versão separada e legível
por objeto, além dos scripts de bootstrap (role/database). O roadmap de tabelas (mapeando cada `V4+`
do Flyway) está em `PLANO-db.md` (repo `contas-domesticas-documentacao`).

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
> `contas-domesticas-api` (`src/main/resources/db/migration`). Estes scripts são o **espelho**
> organizado do mesmo schema.
