#!/bin/bash

# Script para automatizar o git add, commit e push

# Verifica se o usuário passou uma mensagem de commit
if [ -z "$1" ]; then
  echo "Uso: ./gitpush.sh \"Mensagem do commit\""
  exit 1
fi

# Adiciona todos os arquivos modificado
git add .

# Faz o commit com a mensagem fonecida
git commit -m "$1"

# Envia para o repositório remoto
git push