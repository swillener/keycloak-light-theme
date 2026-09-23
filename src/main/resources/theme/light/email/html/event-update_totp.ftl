<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("eventUpdateTotpSubject") preview=msg("eventUpdateTotpSubject") lead=msg("eventUpdateTotpLead")>
${kcSanitize(msg("eventUpdateTotpBodyHtml", event.date, event.ipAddress))?no_esc}
</@layout.emailLayout>
