#!/bin/bash
#Мониторинг

URL=${1:-"http://localhost:8000"}

echo "Проверяю $URL"

if curl -f "$URL" > /dev/null 2>&1; then
	echo "Сервер доступен"
	exit 0
else
	echo "Сервер НЕДОСТУПЕН"
	exit 1
fi
