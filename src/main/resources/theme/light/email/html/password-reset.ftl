<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("passwordResetSubject") preview=msg("passwordResetSubject") lead=msg("passwordResetLead") ctaLabel=msg("passwordResetAction") ctaUrl=link ctaNote=link>
${kcSanitize(msg("passwordResetBodyHtml", link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration)))?no_esc}
</@layout.emailLayout>
