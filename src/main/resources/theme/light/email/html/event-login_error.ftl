<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("eventLoginErrorSubject") preview=msg("eventLoginErrorSubject") lead=msg("eventLoginErrorLead")>
${kcSanitize(msg("eventLoginErrorBodyHtml", event.date, event.ipAddress))?no_esc}
</@layout.emailLayout>
