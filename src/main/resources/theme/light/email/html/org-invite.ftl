<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("orgInviteSubject", organization.name) preview=msg("orgInviteSubject", organization.name) lead=msg("orgInviteLead") ctaLabel=msg("orgInviteAction") ctaUrl=link ctaNote=link>
<#if firstName?? && lastName??>
${kcSanitize(msg("orgInviteBodyPersonalizedHtml", link, linkExpiration, realmName, organization.name, linkExpirationFormatter(linkExpiration), firstName, lastName))?no_esc}
<#else>
${kcSanitize(msg("orgInviteBodyHtml", link, linkExpiration, realmName, organization.name, linkExpirationFormatter(linkExpiration)))?no_esc}
</#if>
</@layout.emailLayout>
