#!/bin/bash

# Credenciais
username="seu_username_gitlab"
password="seu_password_gitlab"

# Lista de URLs dos repositórios para clonar
repos=(
"URL_do_repositorio"
)

for repo_url in "${repos[@]}"; do
    # Extrair o nome do repositório da URL
    repo_name=$(basename "$repo_url" .git)

    # Clonar o repositório
    git clone "https://$username:$password@$(echo "$repo_url" | cut -d'/' -f3-)" "$repo_name"

    # Navegar para o diretório do repositório clonado
    cd "$repo_name"

    # Buscar todas as branches remotas
    for branch in $(git branch -r | grep -v '\->'); do
        git branch --track "${branch#origin/}" "$branch"
    done

    # Voltar para o diretório principal
    cd ..
done
