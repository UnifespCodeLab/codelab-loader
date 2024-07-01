#!/bin/bash

# Lista de serviços
services=(
    "emtu-web"
    "emtu-api"
    "plasmedis-api"
    "plasmedis-web"
    "postgres"
)

# Itera sobre a lista de serviços
for service in "${services[@]}"; do
    env_sample="${service}/.env.sample"
    env_file="${service}/.env"

    # Verifica se o arquivo .env já existe
    if [ -f "$env_file" ]; then
        echo "O arquivo $env_file já existe. Ignorando."
    else
        echo "Criando $env_file..."

        # Copia o conteúdo do arquivo .env.sample para o novo arquivo .env
        mkdir "${service}"
        touch "${service}/.env"
        cp "$env_sample" "$env_file"

        echo "Arquivo $env_file criado com sucesso."
    fi
done

echo "Concluído."