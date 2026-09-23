<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("emailVerificationSubject") preview=msg("emailVerificationSubject") lead=msg("emailVerificationLead") ctaLabel=msg("emailVerificationAction") ctaUrl=link ctaNote=link>
${kcSanitize(msg("emailVerificationBodyHtml", link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration)))?no_esc}
</@layout.emailLayout>
