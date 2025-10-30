#!/bin/bash

# Script de Customização do Traccar Manager Android
# Cliente: PopularGPS
# Data: Outubro 2025

set -e

# Configurações do Cliente
CLIENT_NAME="PopularGPS"
APP_NAME="PopularGPS Tracker"
PACKAGE_NAME="com.populargps.traccar.manager"
SERVER_URL="https://painel.populargps.com.br"
MIN_SDK=28
TARGET_SDK=35

echo "=========================================="
echo "Customizando Traccar Manager para: $CLIENT_NAME"
echo "=========================================="
echo ""

# 1. Atualizar Application ID
echo "[1/5] Atualizando Application ID..."
sed -i '' "s/applicationId 'org.traccar.manager'/applicationId '$PACKAGE_NAME'/g" app/build.gradle
echo "✓ Application ID atualizado para: $PACKAGE_NAME"
echo ""

# 2. Atualizar Min SDK Version
echo "[2/5] Atualizando Min SDK Version..."
sed -i '' "s/minSdkVersion 21/minSdkVersion $MIN_SDK/g" app/build.gradle
echo "✓ Min SDK Version atualizado para: $MIN_SDK"
echo ""

# 3. Atualizar Nome da App
echo "[3/5] Atualizando nome da aplicação..."
sed -i '' "s/<string name=\"app_name\">Traccar Manager<\/string>/<string name=\"app_name\">$APP_NAME<\/string>/g" app/src/main/res/values/strings.xml
echo "✓ Nome da aplicação atualizado para: $APP_NAME"
echo ""

# 4. Adicionar onCreate() ao StartFragment.kt (se não existir)
echo "[4/5] Atualizando StartFragment.kt com URL padrão..."
# Este passo deve ser feito manualmente ou com grep/sed mais complexo
echo "⚠ MANUAL: Adicione o método onCreate() em StartFragment.kt (veja arquivo INSTRUÇÕES_MANUAIS.md)"
echo ""

# 5. Criar arquivo de configuração
echo "[5/5] Criando arquivo de configuração..."
cat > .env.local << EOF
CLIENT_NAME=$CLIENT_NAME
APP_NAME=$APP_NAME
PACKAGE_NAME=$PACKAGE_NAME
SERVER_URL=$SERVER_URL
MIN_SDK=$MIN_SDK
TARGET_SDK=$TARGET_SDK
EOF
echo "✓ Arquivo de configuração criado: .env.local"
echo ""

echo "=========================================="
echo "Customização Automática Concluída!"
echo "=========================================="
echo ""
echo "Próximos passos:"
echo "1. Abra o projeto no Android Studio"
echo "2. Sincronize o Gradle"
echo "3. Siga as instruções manuais em INSTRUÇÕES_MANUAIS.md"
echo "4. Configure o Firebase"
echo "5. Gere o APK de teste"
echo ""

