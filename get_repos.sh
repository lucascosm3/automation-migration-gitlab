#!/bin/bash

TOKEN="seu_token_git"
BASE_URL="seu_grupo_de_projetos"
# Output vai gerar uma lista dos projetos encontrados
OUTPUT_FILE="links_repos_encontrados.txt"
PAGE=1

# Limpar o arquivo de saída
> $OUTPUT_FILE

while true; do
    # Obter a lista de projetos da página atual
    projects=$(curl -k -s "${BASE_URL}?private_token=${TOKEN}&per_page=100&page=${PAGE}")

    # Verificar se a resposta está vazia (não há mais projetos)
    if [ "$(echo "$projects" | jq '. | length')" -eq 0 ]; then
        break
    fi

    # Extrair os links dos repositórios e salvá-los no arquivo
    echo "$projects" | jq -r '.[].http_url_to_repo' >> $OUTPUT_FILE

    # Incrementar o número da página
    PAGE=$((PAGE+1))
done

echo "Links dos repositórios salvos em $OUTPUT_FILE"
