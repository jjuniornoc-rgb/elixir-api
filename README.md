# Elixir API

Uma API RESTful desenvolvida em Elixir usando Phoenix Framework.

## Pré-requisitos

- Elixir 1.14 ou superior
- Erlang/OTP 25 ou superior
- Mix (geralmente incluído com Elixir)

## Instalação

1. Clone o repositório:
```bash
git clone https://github.com/jjuniornoc-rgb/elixir-api.git
cd elixir-api
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

