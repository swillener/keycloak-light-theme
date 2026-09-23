<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link rel="icon" type="image/x-icon" href="${resourceCommonUrl}/img/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="color-scheme" content="light">
    <meta name="description" content="${properties.description!'The Keycloak Administration Console is a web-based interface for managing Keycloak.'}">
    <title>${properties.title!'Keycloak Administration Console'}</title>
    <script type="importmap">
      {
        "imports": {
          "react": "${resourceCommonUrl}/vendor/react/react.production.min.js",
          "react/jsx-runtime": "${resourceCommonUrl}/vendor/react/react-jsx-runtime.production.min.js",
          "react-dom": "${resourceCommonUrl}/vendor/react-dom/react-dom.production.min.js"
        }
      }
    </script>
    <#if !isSecureContext>
      <script type="module" src="${resourceCommonUrl}/vendor/web-crypto-shim/web-crypto-shim.js"></script>
    </#if>
    <#if devServerUrl?has_content>
      <script type="module">
        import { injectIntoGlobalHook } from "${devServerUrl}/@react-refresh";

        injectIntoGlobalHook(window);
        window.$RefreshReg$ = () => {};
        window.$RefreshSig$ = () => (type) => type;
      </script>
      <script type="module">
        import { inject } from "${devServerUrl}/@vite-plugin-checker-runtime";

        inject({
          overlayConfig: {},
          base: "/",
        });
      </script>
      <script type="module" src="${devServerUrl}/@vite/client"></script>
      <script type="module" src="${devServerUrl}/src/main.tsx"></script>
    </#if>
    <#if entryStyles?has_content>
      <#list entryStyles as style>
        <link rel="stylesheet" href="${resourceUrl}/${style}">
      </#list>
    </#if>
    <#if properties.styles?has_content>
      <#list properties.styles?split(' ') as style>
        <link rel="stylesheet" href="${resourceUrl}/${style}">
      </#list>
    </#if>
    <#if entryScript?has_content>
      <script type="module" src="${resourceUrl}/${entryScript}"></script>
    </#if>
    <#if properties.scripts?has_content>
      <#list properties.scripts?split(' ') as script>
        <script type="module" src="${resourceUrl}/${script}"></script>
      </#list>
    </#if>
    <#if entryImports?has_content>
      <#list entryImports as import>
        <link rel="modulepreload" href="${resourceUrl}/${import}">
      </#list>
    </#if>
  </head>
  <body data-page-id="admin">
    <div id="app">
      <main class="container">
        <div class="keycloak-light-loader">
          <div class="keycloak-light-loader__panel" role="status" aria-live="polite">
            <span class="keycloak-light-badge">Administration Console</span>
            <svg class="pf-v5-c-spinner pf-m-xl" role="progressbar" aria-valuetext="Loading..." viewBox="0 0 100 100" aria-label="Loading">
              <circle class="pf-v5-c-spinner__path" cx="50" cy="50" r="45" fill="none"></circle>
            </svg>
            <h1 class="keycloak-light-loader__title" id="loading-text">Loading the Administration Console</h1>
            <p class="keycloak-light-loader__text">Preparing realms, clients, roles, users, and system configuration.</p>
            <p class="keycloak-light-loader__hint">The application shell stays lightweight while the console bundles load.</p>
          </div>
        </div>
      </main>
    </div>
    <noscript>JavaScript is required to use the Administration Console.</noscript>
    <script id="environment" type="application/json">
      {
        "serverBaseUrl": ${serverBaseUrl?json_string},
        "adminBaseUrl": ${adminBaseUrl?json_string},
        "authUrl": ${authUrl?json_string},
        "authServerUrl": ${authServerUrl?json_string},
        "realm": ${(loginRealm!"master")?json_string},
        "clientId": ${clientId?json_string},
        "resourceUrl": ${resourceUrl?json_string},
        "logo": ${(properties.logo!"")?json_string},
        "logoUrl": ${(properties.logoUrl!"")?json_string},
        "consoleBaseUrl": ${consoleBaseUrl?json_string},
        "masterRealm": ${masterRealm?json_string},
        "resourceVersion": ${resourceVersion?json_string}
      }
    </script>
  </body>
</html>
