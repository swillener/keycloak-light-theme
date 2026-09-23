# keycloak-light-theme

Produktionsreifes helles Keycloak-Theme für **Keycloak 26.4.5** als **JAR-Datei**.

## Inhalt

- Maven-Build für ein Theme-JAR
- Login-Theme mit eigenem Freemarker-Template, CSS und JavaScript
- Account-Theme mit heller Ladeoberfläche
- Admin-Theme mit heller Ladeoberfläche
- Gemeinsame Light-Styles für konsistente Farben, Fokuszustände und Abstände

## Build

```bash
mvn clean package
```

Das erzeugte JAR liegt danach unter:

```text
target/keycloak-light-theme-1.0.0.jar
```

## Installation in Keycloak 26.4.5

1. JAR in das Verzeichnis `providers/` der Keycloak-Installation kopieren
2. Keycloak neu starten oder das Image neu bauen
3. Das Theme in den Realm-Einstellungen auswählen:
   - **Login Theme:** `light`
   - **Account Theme:** `light`
   - **Admin Console Theme:** `light`

## Projektstruktur

```text
src/main/resources/
├── META-INF/keycloak-themes.json
└── theme/light/
    ├── admin/
    ├── account/
    ├── common/
    └── login/
```

## Hinweise

- Das Login-Theme erweitert `keycloak.v2`
- Das Account-Theme erweitert `keycloak.v3`
- Das Admin-Theme erweitert `keycloak.v2`
- Das Theme ist auf ein helles, responsives und barrierefreundliches Erscheinungsbild ausgelegt
