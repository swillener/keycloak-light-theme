<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("eventRemoveCredentialSubject") preview=msg("eventRemoveCredentialSubject") lead=msg("eventRemoveCredentialLead")>
${kcSanitize(msg("eventRemoveCredentialBodyHtml", event.details["credential_type"], event.date, event.ipAddress))?no_esc}
</@layout.emailLayout>
