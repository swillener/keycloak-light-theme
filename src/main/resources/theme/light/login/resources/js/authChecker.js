const SESSION_POLLING_INTERVAL = 2000;
const AUTH_SESSION_TIMEOUT_MILLISECS = 1000;
const initialSession = getSession();
const forms = Array.from(document.forms);
let timeout;

forms.forEach((form) =>
  form.addEventListener("submit", () => stopSessionPolling()),
);

globalThis.addEventListener("beforeunload", () => stopSessionPolling());

export function startSessionPolling(redirectUrl) {
  if (initialSession) {
    return;
  }

  const session = getSession();

  if (!session) {
    timeout = setTimeout(
      () => startSessionPolling(redirectUrl),
      SESSION_POLLING_INTERVAL,
    );
  } else {
    location.href = redirectUrl;
    stopSessionPolling();
  }
}

function stopSessionPolling() {
  if (timeout) {
    clearTimeout(timeout);
    timeout = undefined;
  }
}

export function checkAuthSession(pageAuthSessionHash) {
  setTimeout(() => {
    const cookieAuthSessionHash = getKcAuthSessionHash();
    if (
      cookieAuthSessionHash &&
      cookieAuthSessionHash !== pageAuthSessionHash
    ) {
      location.reload();
    }
  }, AUTH_SESSION_TIMEOUT_MILLISECS);
}

function getKcAuthSessionHash() {
  return getCookieByName("KC_AUTH_SESSION_HASH");
}

function getSession() {
  return getCookieByName("KEYCLOAK_SESSION");
}

function getCookieByName(name) {
  for (const cookie of document.cookie.split(";")) {
    const separatorIndex = cookie.indexOf("=");
    const key = (separatorIndex === -1 ? cookie : cookie.slice(0, separatorIndex)).trim();
    const value = (separatorIndex === -1 ? "" : cookie.slice(separatorIndex + 1)).trim();

    if (key === name) {
      return value.startsWith('"') && value.endsWith('"')
        ? value.slice(1, -1)
        : value;
    }
  }
  return null;
}
