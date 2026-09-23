<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("emailUpdateConfirmationSubject") preview=msg("emailUpdateConfirmationSubject") lead=msg("emailUpdateConfirmationLead") ctaLabel=msg("emailUpdateConfirmationAction") ctaUrl=link ctaNote=link>
${kcSanitize(msg("emailUpdateConfirmationBodyHtml", link, newEmail, realmName, linkExpirationFormatter(linkExpiration)))?no_esc}
</@layout.emailLayout>
