<#macro emailLayout title="" preview="" lead="" ctaLabel="" ctaUrl="" ctaNote="">
<#assign brandName = properties.kcEmailBrandName!(realmName!"Keycloak")>
<#assign bgColor = properties.kcEmailBackgroundColor!"#eef4fb">
<#assign surfaceColor = properties.kcEmailSurfaceColor!"#ffffff">
<#assign borderColor = properties.kcEmailBorderColor!"#d7e3f1">
<#assign textColor = properties.kcEmailTextColor!"#18212f">
<#assign mutedTextColor = properties.kcEmailMutedTextColor!"#516174">
<#assign accentColor = properties.kcEmailAccentColor!"#2563eb">
<#assign accentStrongColor = properties.kcEmailAccentColorStrong!"#1d4ed8">
<!DOCTYPE html>
<html lang="${locale.language!"en"}" dir="${(ltr!true)?then('ltr','rtl')}">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="color-scheme" content="light only" />
    <title>${kcSanitize(title?has_content?then(title, msg("emailPreviewDefault")))?no_esc}</title>
    <style type="text/css"><#include "../resources/css/email.css"></style>
</head>
<body style="margin:0; padding:0; background:${bgColor}; color:${textColor};">
    <div style="display:none; max-height:0; overflow:hidden; opacity:0; mso-hide:all;">${kcSanitize(preview?has_content?then(preview, title?has_content?then(title, msg("emailPreviewDefault"))))?no_esc}</div>
    <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" class="kc-email-shell" style="width:100%; background:${bgColor}; padding:32px 16px;">
        <tr>
            <td align="center">
                <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" class="kc-email-card" style="width:100%; max-width:640px; background:${surfaceColor}; border:1px solid ${borderColor}; border-radius:24px; overflow:hidden;">
                    <tr>
                        <td class="kc-email-branding" style="padding:32px 32px 16px;">
                            <#if properties.kcEmailLogoUrl?has_content>
                                <img src="${properties.kcEmailLogoUrl}" alt="${properties.kcEmailLogoAlt!brandName}" width="${properties.kcEmailLogoWidth!"120"}" style="display:block; margin:0 0 20px; width:${properties.kcEmailLogoWidth!"120"}px; max-width:100%; height:auto;" />
                            </#if>
                            <p style="margin:0; color:${accentStrongColor}; font-size:13px; font-weight:700; letter-spacing:0.08em; text-transform:uppercase;">${kcSanitize(brandName)?no_esc}</p>
                        </td>
                    </tr>
                    <tr>
                        <td class="kc-email-content" style="padding:0 32px 32px;">
                            <#if title?has_content>
                                <h1 class="kc-email-title" style="margin:0; color:${textColor}; font-size:28px; font-weight:700; line-height:1.2;">${kcSanitize(title)?no_esc}</h1>
                            </#if>
                            <#if lead?has_content>
                                <p class="kc-email-lead" style="margin:16px 0 0; color:${mutedTextColor}; font-size:17px; line-height:1.7;">${kcSanitize(lead)?no_esc}</p>
                            </#if>
                            <div style="margin-top:24px; color:${mutedTextColor};">
                                <#nested>
                            </div>
                            <#if ctaUrl?has_content && ctaLabel?has_content>
                                <table role="presentation" cellspacing="0" cellpadding="0" border="0" style="margin:24px 0 0;">
                                    <tr>
                                        <td align="center" bgcolor="${accentColor}" style="border-radius:999px; background:linear-gradient(135deg, ${accentColor} 0%, ${accentStrongColor} 100%);">
                                            <a href="${ctaUrl}" class="kc-email-button" style="display:inline-block; padding:14px 24px; border-radius:999px; background:linear-gradient(135deg, ${accentColor} 0%, ${accentStrongColor} 100%); color:#ffffff; font-size:16px; font-weight:700; line-height:1; text-decoration:none;">${kcSanitize(ctaLabel)?no_esc}</a>
                                        </td>
                                    </tr>
                                </table>
                                <#if ctaNote?has_content>
                                    <p class="kc-email-meta" style="margin:16px 0 0; color:${mutedTextColor}; font-size:13px; line-height:1.6; word-break:break-word;">${kcSanitize(ctaNote)?no_esc}</p>
                                </#if>
                            </#if>
                        </td>
                    </tr>
                    <tr>
                        <td class="kc-email-footer" style="padding:24px 32px 32px; border-top:1px solid ${borderColor}; background:#f8fbff; color:${mutedTextColor}; font-size:13px; line-height:1.7;">
                            <p style="margin:0 0 10px;">${kcSanitize(properties.kcEmailFooterText?has_content?then(properties.kcEmailFooterText, msg("emailFooterText", brandName)))?no_esc}</p>
                            <#if properties.kcEmailSupportAddress?has_content>
                                <p style="margin:0 0 10px;">${msg("emailSupportLabel")}: <a href="mailto:${properties.kcEmailSupportAddress}" style="color:${accentColor}; text-decoration:none;">${properties.kcEmailSupportAddress}</a></p>
                            </#if>
                            <p style="margin:0;">
                                <#assign hasFooterLink = false>
                                <#if properties.kcEmailFooterLink1Url?has_content && properties.kcEmailFooterLink1Label?has_content>
                                    <#assign hasFooterLink = true>
                                    <a href="${properties.kcEmailFooterLink1Url}" style="color:${accentColor}; text-decoration:none;">${properties.kcEmailFooterLink1Label}</a>
                                </#if>
                                <#if properties.kcEmailFooterLink2Url?has_content && properties.kcEmailFooterLink2Label?has_content>
                                    <#if hasFooterLink><span class="kc-email-separator" style="margin:0 8px; color:#b6c6da;">|</span></#if>
                                    <#assign hasFooterLink = true>
                                    <a href="${properties.kcEmailFooterLink2Url}" style="color:${accentColor}; text-decoration:none;">${properties.kcEmailFooterLink2Label}</a>
                                </#if>
                                <#if properties.kcEmailFooterLink3Url?has_content && properties.kcEmailFooterLink3Label?has_content>
                                    <#if hasFooterLink><span class="kc-email-separator" style="margin:0 8px; color:#b6c6da;">|</span></#if>
                                    <a href="${properties.kcEmailFooterLink3Url}" style="color:${accentColor}; text-decoration:none;">${properties.kcEmailFooterLink3Label}</a>
                                </#if>
                            </p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
</#macro>
