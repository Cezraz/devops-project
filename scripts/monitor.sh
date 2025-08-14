#!/bin/bash
#Мониторинг

URL="http://localhost:8000"

if curl -f "$URL" > /dev/null 2>&1; then
	echo "Сервер доступен"
	exit 0
else
	echo "Сервер НЕДОСТУПЕН"
	exit 1
fi
