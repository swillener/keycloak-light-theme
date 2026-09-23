<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("eventUpdatePasswordSubject") preview=msg("eventUpdatePasswordSubject") lead=msg("eventUpdatePasswordLead")>
${kcSanitize(msg("eventUpdatePasswordBodyHtml", event.date, event.ipAddress))?no_esc}
</@layout.emailLayout>
