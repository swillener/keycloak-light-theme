<#if properties.kcEmailSupportAddress?has_content>

${msg("emailSupportLabel")}: ${properties.kcEmailSupportAddress}
</#if>
<#if properties.kcEmailFooterLink1Url?has_content && properties.kcEmailFooterLink1Label?has_content>
${properties.kcEmailFooterLink1Label}: ${properties.kcEmailFooterLink1Url}
</#if>
<#if properties.kcEmailFooterLink2Url?has_content && properties.kcEmailFooterLink2Label?has_content>
${properties.kcEmailFooterLink2Label}: ${properties.kcEmailFooterLink2Url}
</#if>
<#if properties.kcEmailFooterLink3Url?has_content && properties.kcEmailFooterLink3Label?has_content>
${properties.kcEmailFooterLink3Label}: ${properties.kcEmailFooterLink3Url}
</#if>
