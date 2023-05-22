#!/bin/bash

# Verifica se o Node.js está instalado
if ! command -v node &> /dev/null; then
    echo "Node.js não está instalado. Instalando Node.js..."
    # Instala o Node.js
    curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
    sudo apt-get install -y nodejs
    echo "Node.js foi instalado com sucesso."
fi

# Verifica se o yarn está instalado
if ! command -v yarn &> /dev/null; then
    echo "Yarn não está instalado. Instalando Yarn..."
    # Instala o Yarn
    npm install -g yarn
    echo "Yarn foi instalado com sucesso."
fi

# Executa o comando "dalai alpaca install 7B"
echo "Executando 'dalai alpaca install 7B'..."
npx dalai alpaca install 7B
