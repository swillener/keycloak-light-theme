<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("emailVerificationSubject") preview=msg("emailVerificationSubject") lead=msg("emailVerificationCodeLead")>
<div class="kc-email-code" style="margin:20px 0; padding:18px 20px; border:1px solid #d7e3f1; border-radius:16px; background:#f8fbff; color:#18212f; font-size:28px; font-weight:700; letter-spacing:0.22em; text-align:center;">${kcSanitize(code)?no_esc}</div>
${kcSanitize(msg("emailVerificationBodyCodeHtml", code))?no_esc}
</@layout.emailLayout>
