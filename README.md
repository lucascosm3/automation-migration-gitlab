# Ferramenta de Automação de Migração do GitLab

## Visão Geral
Esta ferramenta automatiza a migração de projetos de uma instância MVP do GitLab para uma instância definitiva do GitLab. Ela simplifica o processo de transferência de repositórios, mantendo a integridade e as configurações dos mesmos.

## Recursos
- **Clonagem de Repositórios**: Clona todos os repositórios da instância MVP do GitLab.
- **Recuperação de Informações dos Repositórios**: Coleta informações necessárias de cada repositório para uma migração bem-sucedida.
- **Envio de Repositórios**: Envia todos os repositórios para a nova instância do GitLab, preservando o histórico e as configurações.

## Pré-requisitos
- Tokens de acesso do GitLab para as instâncias MVP e definitiva.
- Ambiente shell para a execução do script.

## Instalação
Para usar esta ferramenta, é necessário ter um sistema Linux capaz de executar scripts `.sh`.

## Uso

### `get_repos.sh`
Esse script vai obter o link dos reposositórios do Gitlab que você deseja fazer backup dos projetos.

### `clone_repos.sh`
Esse script vai fazer o clone dos repositórios para sua máquina, do Gitlab que você deseja fazer backup dos projetos.

### `push_repos.sh`
Esse script vai fazer um push de todos os repositórios clonados da sua máquina, para o Gitlab Definitivo.

## Licença
Este projeto está licenciado sob a [Licença MIT](LICENSE.md)
