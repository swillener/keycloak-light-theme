<#import "template.ftl" as layout>
<@layout.emailLayout title=msg(subjectKey, daysRemaining, reason) preview=msg(subjectKey, daysRemaining, reason) lead=msg("workflowNotificationLead")>
<p>Dear ${kcSanitize(user.firstName!user.username)!no_esc},</p>
<#if messageKey == "customMessage">
<p>${kcSanitize(customMessage)?no_esc}</p>
<#else>
<p>${kcSanitize(msg(messageKey, daysRemaining, reason))?no_esc}</p>
</#if>
<#if daysRemaining gt 0>
<p><strong>Time remaining: ${daysRemaining} day<#if daysRemaining != 1>s</#if></strong></p>
</#if>
<p>If you have questions, please contact your ${kcSanitize(realmName)!no_esc} administrator.</p>
</@layout.emailLayout>
