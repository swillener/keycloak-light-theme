<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("welcomeSubject", realmName) preview=msg("welcomeSubject", realmName) lead=msg("welcomeLead")>
<p>${msg("emailFooterText", properties.kcEmailBrandName!(realmName!"Keycloak"))}</p>
</@layout.emailLayout>
