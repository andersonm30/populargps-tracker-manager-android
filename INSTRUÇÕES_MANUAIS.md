# INSTRUÇÕES MANUAIS - Customização PopularGPS Tracker

## Mudanças Que Requerem Edição Manual

### 1. StartFragment.kt - Adicionar URL Padrão

**Arquivo:** `app/src/main/java/org/traccar/manager/StartFragment.kt`

Após o método `onCreateView()` (por volta da linha 50), adicione o seguinte código:

```kotlin
override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    PreferenceManager.getDefaultSharedPreferences(activity)
        .edit().putString(MainActivity.PREFERENCE_URL, "https://painel.populargps.com.br").apply()
    activity.fragmentManager
        .beginTransaction().replace(android.R.id.content, MainFragment())
        .commitAllowingStateLoss()
}
```

**Localização exata no arquivo:** Entre as linhas 50-51 (após o `onCreateView`).

---

### 2. Configurar Ícones de Notificação

**Pasta:** `app/src/main/res/drawable/`

#### 2.1 Criar ou editar `ic_stat_notify.xml`:

```xml
<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
    <background android:drawable="@color/notification_background"/>
    <foreground android:drawable="@drawable/ic_launcher_foreground"/>
</adaptive-icon>
```

#### 2.2 Adicionar cor em `app/src/main/res/values/colors.xml`:

```xml
<color name="notification_background">#FFFFFF</color>
```

---

### 3. Adicionar Dependência do Firebase (se não estiver já)

**Arquivo:** `app/build.gradle`

Já está configurado! Mas verifique se existe a linha:
```gradle
id 'com.google.gms.google-services'
```

---

### 4. Firebase - google-services.json

Após criar o projeto no Firebase:

1. Download do arquivo `google-services.json`
2. Coloque na pasta: `app/google-services.json`
3. Sincronize o Gradle

---

### 5. Verificar Namespace (API 31+)

**Arquivo:** `app/build.gradle`

Verifique se existe (já deve estar):
```gradle
namespace 'org.traccar.manager'
```

Se não existir e estiver no `AndroidManifest.xml`, mova para o gradle.

---

## Estrutura de Pastas Esperada Após Customização

```
app/
├── build.gradle (MODIFICADO)
├── google-services.json (NOVO - após Firebase)
└── src/
    └── main/
        ├── AndroidManifest.xml
        ├── java/
        │   └── org/traccar/manager/
        │       ├── StartFragment.kt (MODIFICADO)
        │       └── ... (outros arquivos)
        └── res/
            ├── drawable/
            │   ├── ic_stat_notify.xml (NOVO/MODIFICADO)
            │   └── ic_launcher_foreground.xml
            ├── values/
            │   ├── strings.xml (MODIFICADO)
            │   ├── colors.xml (MODIFICADO)
            │   └── ...
            └── ...
```

---

## Checklist de Implementação

- [ ] Application ID alterado em `build.gradle`
- [ ] Min SDK atualizado para 28+
- [ ] Nome da app modificado em `strings.xml`
- [ ] Método `onCreate()` adicionado em `StartFragment.kt`
- [ ] URL padrão configurada como `https://painel.populargps.com.br`
- [ ] Ícones de notificação configurados
- [ ] Cores adicionadas
- [ ] Projeto sincronizado no Android Studio
- [ ] Build de teste executado com sucesso

---

## Próximos Passos Após Implementação

1. **Sincronizar Gradle** (Ctrl+Shift+S ou Cmd+Shift+S no macOS)
2. **Limpar Projeto** (Build → Clean Project)
3. **Fazer Build** (Build → Make Project)
4. **Emular ou Testar** (Run → Run 'app')
5. **Configurar Firebase** (veja guia principal)

