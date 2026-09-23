<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("eventRemoveTotpSubject") preview=msg("eventRemoveTotpSubject") lead=msg("eventRemoveTotpLead")>
${kcSanitize(msg("eventRemoveTotpBodyHtml", event.date, event.ipAddress))?no_esc}
</@layout.emailLayout>
