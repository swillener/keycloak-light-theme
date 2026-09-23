# keycloak-light-theme

Production-ready light Keycloak theme for **Keycloak 26.4.5** packaged as a **JAR**.

## Included

- Maven build for a theme JAR
- Login theme with a custom Freemarker template, CSS, and JavaScript
- Account theme with a light loading shell
- Admin theme with a light loading shell
- Shared light-theme styles for consistent colors, spacing, and focus states

## Build

```bash
mvn clean package
```

The generated JAR will be available at:

```text
target/keycloak-light-theme-1.0.0.jar
```

## Install on Keycloak 26.4.5

1. Copy the JAR into the Keycloak `providers/` directory
2. Restart Keycloak or rebuild the container image
3. Select the theme in the realm settings:
   - **Login Theme:** `light`
   - **Account Theme:** `light`
   - **Admin Console Theme:** `light`

## Project structure

```text
src/main/resources/
├── META-INF/keycloak-themes.json
└── theme/light/
    ├── admin/
    ├── account/
    ├── common/
    └── login/
```

## Notes

- The login theme extends `keycloak.v2`
- The account theme extends `keycloak.v3`
- The admin theme extends `keycloak.v2`
- The design is intentionally light, responsive, and accessibility-friendly
