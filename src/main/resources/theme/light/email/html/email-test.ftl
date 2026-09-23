<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("emailTestSubject") preview=msg("emailTestSubject") lead=msg("emailTestLead")>
${kcSanitize(msg("emailTestBodyHtml"))?no_esc}
</@layout.emailLayout>
