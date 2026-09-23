<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("eventUserDisabledByTemporaryLockoutSubject") preview=msg("eventUserDisabledByTemporaryLockoutSubject") lead=msg("eventTemporaryLockoutLead")>
${kcSanitize(msg("eventUserDisabledByTemporaryLockoutHtml", event.date))?no_esc}
</@layout.emailLayout>
