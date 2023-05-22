#!/bin/bash

# Verifica se o Docker está instalado
if ! command -v docker &> /dev/null; then
    echo "Docker não está instalado. Instalando Docker..."
    # Instala o Docker
    sudo apt update
    sudo apt install docker.io -y
    # Adiciona o usuário atual ao grupo "docker"
    sudo usermod -aG docker $USER
    echo "Docker foi instalado com sucesso."
fi

# Verifica se o Docker Compose está instalado
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose não está instalado. Instalando Docker Compose..."
    # Instala o Docker Compose
    sudo apt install docker-compose -y
    echo "Docker Compose foi instalado com sucesso."
fi

# Executa o comando "dalai alpaca install 7B"
echo "Executando 'dalai alpaca install 7B'..."
docker-compose run dalai npx dalai alpaca install 7B

