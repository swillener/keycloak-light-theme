document.documentElement.dataset.kcTheme = "light";

document.addEventListener("DOMContentLoaded", function () {
  document.body.classList.add("kc-light-ready");

  var title = document.getElementById("kc-page-title");
  var form = document.querySelector(".pf-v5-c-form");

  if (title && form) {
    form.setAttribute("aria-labelledby", title.id);
  }
});
