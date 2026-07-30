#!/bin/bash
# Script mínimo para preparar el entorno y ejecutar main.py
echo "⚡ Instalando dependencias del sistema..."
sudo apt update && sudo apt install -y python3 python3-pip

echo "📦 Instalando módulos de Python..."
cd ~/HOST  # Ajusta la ruta si tu repo se clonó en otro sitio
if [ -f requirements.txt ]; then
    pip3 install -r requirements.txt
else
    echo "No se encontró requirements.txt, se instalarán si es necesario."
fi

echo "🚀 Lanzando main.py..."
python3 main.py
