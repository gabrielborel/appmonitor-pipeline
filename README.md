![CI Pipeline](https://img.shields.io/github/actions/workflow/status/gabrielborel/appmonitor-pipeline/ci.yml?branch=main)

# appmonitor-pipeline

## Exercício 2 - Git e Entrega Contínua

O Git é uma ferramenta essencial no ciclo de vida de software. Com ele, podemos versionar mudanças, trabalhar em paralelo com branches e seguir um ótimo padrão de entregas com tags e releases.

### Branches

Branches permitem o desenvolvimento isolado de funcionalidades ou correções. Por exemplo, `ci/setup` representa a configuração inicial de integração contínua. Várias outras branches podem serem criadas, facilitando o trabalho em equipe e a organização do código.

### Tags

Tags marcam pontos específicos no histórico do projeto, como versões estáveis (`v0.1.0`), facilitando a rastreabilidade e o deploy controlado. Contribuindo para uma entrega contínua mais eficiente, as tags ajudam a identificar rapidamente o estado do código em diferentes momentos.

## Exercício 3 - Uso de variáveis, secretes e contextos

## 🎯 GitHub Actions: Tipos de Variáveis

Neste projeto utilizamos diferentes tipos de variáveis no GitHub Actions:

### `env` (Variáveis de ambiente)

- Definido dentro das configurações de variáveis de ambiente.
- Úteis para configurações reutilizáveis, que não são sensíveis e variam de acordo com o ambiente que o app está rodando, por exemplo, desenvolvimento ou produção.
- Acessadas com `${{ env.NOME }}`.

### `vars` (Variáveis do Repositório)

- Definido dentro das configurações de variáveis de repositório.
- Úteis para configurações reutilizáveis que não são sensiveis e não variam de acordo com o ambiente.
- Acessadas com `${{ vars.NOME }}`.

### `secrets` (Segredos)

- Valores **criptografados e sensíveis** (como tokens e senhas).
- Definidos em Settings → Secrets.
- Acessados com `${{ secrets.NOME }}`.

## Exercício 4 - Logs

Os logs são fundamentais para entender o que acontece durante a execução de um workflow. No GitHub Actions, podemos usar `echo` para imprimir mensagens no log, ajudando na depuração e monitoramento do processo.
