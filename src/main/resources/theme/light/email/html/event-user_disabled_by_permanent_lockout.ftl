<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("eventUserDisabledByPermanentLockoutSubject") preview=msg("eventUserDisabledByPermanentLockoutSubject") lead=msg("eventPermanentLockoutLead")>
${kcSanitize(msg("eventUserDisabledByPermanentLockoutHtml", event.date))?no_esc}
</@layout.emailLayout>
