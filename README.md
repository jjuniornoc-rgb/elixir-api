# Elixir API

Uma API RESTful desenvolvida em Elixir usando Phoenix Framework.

## Pré-requisitos

- Elixir 1.14 ou superior
- Erlang/OTP 25 ou superior
- PostgreSQL
- Mix (geralmente incluído com Elixir)

## Instalação

1. Clone o repositório:
```bash
git clone <seu-repositorio>
cd elixir
```

2. Instale as dependências:
```bash
mix deps.get
```

3. Configure as variáveis de ambiente:
```bash
cp .env.example .env
# Edite o arquivo .env com suas configurações
```

4. Crie e configure o banco de dados:
```bash
mix ecto.create
mix ecto.migrate
```

5. (Opcional) Execute as seeds do banco de dados:
```bash
mix run priv/repo/seeds.exs
```

## Executando a API

Para iniciar o servidor Phoenix:

```bash
mix phx.server
```

A API estará disponível em `http://localhost:4000`

## Estrutura do Projeto

```
lib/
├── elixir_api/           # Contextos de negócio
│   ├── accounts/         # Contexto de usuários/contas
│   └── ...
├── elixir_api_web/       # Camada web (Phoenix)
│   ├── controllers/      # Controladores
│   ├── views/            # Views JSON
│   └── router.ex         # Rotas
config/                    # Configurações
priv/
└── repo/
    └── migrations/       # Migrações do banco de dados
```

## Endpoints

- `GET /api/health` - Verifica se a API está funcionando

## Ambiente de Desenvolvimento

O projeto está configurado para usar variáveis de ambiente através do arquivo `.env`. Certifique-se de criar um arquivo `.env` baseado no `.env.example`.

## Testes

Execute os testes com:
```bash
mix test
```

## Gerando Secret Keys

Para gerar o `SECRET_KEY_BASE`:
```bash
mix phx.gen.secret
```

## Licença

Este projeto está sob a licença MIT.

