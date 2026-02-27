# Desafio de projeto: Criando um dashboard com integração com Postgres

### 1. Estrutura

O repositório `company_dashboard` está organizado da seguinte forma:

```text
company_dashboard/
│
├── sql/
│   ├── create_schema.sql   # Criação de domínios e tabelas
│   ├── create_views.sql    # Alterações nas tabelas e criação de views (joins)
│   ├── insert_data.sql     # Inserção dos dados
│   └── access.sql          # Concessão de permissões de acesso
│
├── dashboard/
│   └── data_validation.pbix   # Arquivo do dashboard no Power BI
│
└── README.md
````

📌 **Observações**

- A pasta sql contém todos os scripts necessários para recriar o banco de dados do zero.
- A pasta dashboard contém o arquivo do Power BI já conectado ao banco e com os visuais prontos.
- As alterações e transformações propostas pelo desafio foram implementadas no SQL (criação de views, ajustes de estrutura e joins), deixando o Power BI focado apenas no consumo e validação dos dados.

### 2. Como executar o projeto

#### Pré-requisitos
- PostgreSQL instalado
- Um cliente para executar SQL (psql, DBeaver, PgAdmin ou Power BI)

#### 1️⃣ Criar o banco de dados
```sql
CREATE DATABASE company;
```
E conecte-se ao banco:
``psql -U postgres -d company``


#### 2️⃣ Executar os scripts na ordem correta
1. create_schema.sql   → cria domínios e tabelas
2. create_views.sql    → altera tabelas e cria as views
3. insert_data.sql     → insere os dados
4. access.sql          → concede permissões de acesso

#### 3️⃣ Acessar no Power BI / ferramenta de BI

Use: <br>
Servidor: localhost <br>
Porta: 5432 <br>
Banco: company <br>
Usuário: company_user <br>
Senha: definida por você (através de _access.sql_)<br>

As views já estão prontas para consumo no BI.
