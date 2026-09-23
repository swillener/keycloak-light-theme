<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("eventUpdateCredentialSubject") preview=msg("eventUpdateCredentialSubject") lead=msg("eventUpdateCredentialLead")>
${kcSanitize(msg("eventUpdateCredentialBodyHtml", event.details["credential_type"], event.date, event.ipAddress))?no_esc}
</@layout.emailLayout>
