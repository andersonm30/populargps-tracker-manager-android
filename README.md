# 🚀 PopularGPS Tracker - Traccar Manager Android Customizado

**Versão:** 1.0.0  
**Cliente:** PopularGPS  
**Baseado em:** [Traccar Manager Android](https://github.com/traccar/traccar-manager-android)

---

## 📱 Sobre o Projeto

PopularGPS Tracker é uma customização do Traccar Manager Android para a plataforma PopularGPS. O app permite que os usuários rastreiem seus veículos em tempo real com suporte a notificações push via Firebase.

### ✨ Funcionalidades

- ✅ Rastreamento de veículos em tempo real
- ✅ Mapa interativo com localização
- ✅ Notificações push via Firebase
- ✅ Suporte offline
- ✅ Autenticação segura
- ✅ Interface intuitiva

---

## 🔧 Configurações do App

| Propriedade | Valor |
|-------------|-------|
| **Package Name** | `com.populargps.traccar.manager` |
| **App Name** | PopularGPS Tracker |
| **Server URL** | https://painel.populargps.com.br |
| **Min SDK** | 28 |
| **Target SDK** | 35 |
| **Firebase** | Sim (populargps-3940b) |

---

## 🚀 Como Usar

### 1. Clone o Repositório
```bash
git clone https://github.com/SEU_USERNAME/populargps-tracker-manager-android.git
cd populargps-tracker-manager-android
```

### 2. Abra no Android Studio
- File → Open → Selecione a pasta do projeto
- Aguarde Gradle sincronizar

### 3. Compile
```bash
./gradlew clean build
```

### 4. Gere APK Assinado
- Build → Generate Signed Bundle/APK
- Escolha APK
- Flavor: **google**
- Build Type: **release**
- Selecione sua chave e clique Create

### 5. Instale
```bash
adb install app/build/outputs/apk/google/release/app-google-release.apk
```

---

## 📚 Documentação

Consulte os guias no repositório:

1. **GUIA_RAPIDO.md** - Passo a passo rápido
2. **FIREBASE_TRACCAR_SETUP.md** - Setup do Firebase
3. **SUMARIO_EXECUTIVO.md** - Resumo executivo

---

## 🔐 Segurança

**NÃO INCLUSOS no GitHub:**
- Keystore (chave de assinatura)
- Credenciais service account do Firebase
- Senhas de usuários

---

## 📊 Build

### Debug
```bash
./gradlew assembleGoogleDebug
```

### Release
```bash
./gradlew assembleGoogleRelease
```

### Bundle para Play Store
```bash
./gradlew bundleGoogleRelease
```

---

## 📄 Licença

Licensed under the Apache License, Version 2.0. See LICENSE.txt for details.

---

**Status:** ✅ Pronto para Publicação  
**Última Atualização:** 29 de outubro de 2025
