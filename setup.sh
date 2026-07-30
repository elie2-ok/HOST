#!/bin/bash
# Script mínimo para preparar el entorno y ejecutar main.py
echo "⚡ Instalando dependencias del sistema..."
sudo apt update && sudo apt install -y python3 python3-pip

echo "📦 Instalando módulos de Python (si hay requirements.txt)..."
cd ~/HOST  # Ajusta esta ruta si tu main.py está en otro lado
if [ -f requirements.txt ]; then
    pip3 install -r requirements.txt
else
    echo "No se encontró requirements.txt, se asume que las dependencias ya están."
fi

echo "🚀 Lanzando main.py..."
python3 main.py
