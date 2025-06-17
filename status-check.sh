#!/bin/bash

# aceitando status por argumento, para simular o status da aplicação
# se não for passado, assume 'OK' como padrão
# se for passado 'FAIL', simula um erro
# se for passado qualquer outro valor, exibe mensagem de erro
STATUS=${1:-OK}

echo "Verificando status da aplicação..."
sleep 2

if [[ "$STATUS" != "OK" && "$STATUS" != "FAIL" ]]; then
  echo "Valor inválido para status: '$STATUS'. Use 'OK' ou 'FAIL'."
  exit 2
fi

echo "Status da aplicação: $STATUS"

if [[ "$STATUS" == "FAIL" ]]; then
  echo "Status da aplicação: $STATUS. Erro ao checar o status."
  exit 1
fi

exit 0
