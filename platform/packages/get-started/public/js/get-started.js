(()=>{var t,e;window.getStartedCookie=(t="get_started_cookie",e=window.location.hostname,{setupCookie:function(){var o,a,d,s;o=t,a=1,d=1,(s=new Date).setTime(s.getTime()+24*d*60*60*1e3),document.cookie=o+"="+a+";expires="+s.toUTCString()+";domain="+e+";path=/"},cookieExists:function(){return-1!==document.cookie.split("; ").indexOf(t+"=1")}}),$(document).ready((function(){window.getStartedCookie.cookieExists()||$('.get-started-modal[data-step="1"]').modal("show"),$(document).on("click",".get-started-modal button[type=submit]",(function(t){t.preventDefault(),t.stopPropagation();var e=$(this),o=e.closest("form");e.addClass("button-loading"),$httpClient.make().postForm(o.prop("action"),new FormData(o[0])).then((function(t){var o=t.data;e.closest(".get-started-modal").modal("hide"),$('.get-started-modal[data-step="'+o.data.step+'"]').modal("show")})).finally((function(){e.removeClass("button-loading")}))})),$(".get-started-modal .btn-close").on("click",(function(t){t.preventDefault();var e=$(this).closest(".get-started-modal").data("step");$(".js-back-to-wizard").data("step",e),$(this).closest(".get-started-modal").modal("hide"),$(".close-get-started-modal").modal("show")})),$(document).on("click",".js-back-to-wizard",(function(t){t.preventDefault(),$(this).closest(".close-get-started-modal").modal("hide"),$('.get-started-modal[data-step="'+$(this).data("step")+'"]').modal("show")})),$(document).on("click",".js-close-wizard",(function(t){t.preventDefault(),window.getStartedCookie.setupCookie(),$(this).closest(".close-get-started-modal").modal("hide")})),$(document).on("click",".resume-setup-wizard",(function(t){t.preventDefault(),$('.get-started-modal[data-step="1"]').modal("show")}))}))})();