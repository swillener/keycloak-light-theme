<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("identityProviderLinkSubject", identityProviderDisplayName) preview=msg("identityProviderLinkSubject", identityProviderDisplayName) lead=msg("identityProviderLinkLead") ctaLabel=msg("identityProviderLinkAction") ctaUrl=link ctaNote=link>
${kcSanitize(msg("identityProviderLinkBodyHtml", identityProviderDisplayName, realmName, identityProviderContext.username, link, linkExpiration, linkExpirationFormatter(linkExpiration)))?no_esc}
</@layout.emailLayout>
