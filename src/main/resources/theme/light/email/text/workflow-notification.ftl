<#ftl output_format="plainText">
${msg(subjectKey, daysRemaining, reason)}

<#if messageKey == "customMessage">${customMessage}<#else>${msg(messageKey, daysRemaining, reason)}</#if>
<#if daysRemaining gt 0>

Time remaining: ${daysRemaining} day<#if daysRemaining != 1>s</#if>
</#if>

If you have questions, please contact your ${realmName} administrator.

<#include "footer.ftl">
