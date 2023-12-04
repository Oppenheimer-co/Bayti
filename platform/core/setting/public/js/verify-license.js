(()=>{"use strict";var e={2138:(e,t,n)=>{n.d(t,{Z:()=>i});var a=n(1519),r=n.n(a)()((function(e){return e[1]}));r.push([e.id,'.half-circle-spinner,.half-circle-spinner *{box-sizing:border-box}.half-circle-spinner{border-radius:100%;height:60px;position:relative;width:60px}.half-circle-spinner .circle{border:6px solid transparent;border-radius:100%;content:"";height:100%;position:absolute;width:100%}.half-circle-spinner .circle.circle-1{animation:half-circle-spinner-animation 1s infinite;border-top-color:#ff1d5e}.half-circle-spinner .circle.circle-2{animation:half-circle-spinner-animation 1s infinite alternate;border-bottom-color:#ff1d5e}@keyframes half-circle-spinner-animation{0%{transform:rotate(0)}to{transform:rotate(1turn)}}',""]);const i=r},1519:e=>{e.exports=function(e){var t=[];return t.toString=function(){return this.map((function(t){var n=e(t);return t[2]?"@media ".concat(t[2]," {").concat(n,"}"):n})).join("")},t.i=function(e,n,a){"string"==typeof e&&(e=[[null,e,""]]);var r={};if(a)for(var i=0;i<this.length;i++){var o=this[i][0];null!=o&&(r[o]=!0)}for(var c=0;c<e.length;c++){var l=[].concat(e[c]);a&&r[l[0]]||(n&&(l[2]?l[2]="".concat(n," and ").concat(l[2]):l[2]=n),t.push(l))}},t}},3379:(e,t,n)=>{var a,r=function(){return void 0===a&&(a=Boolean(window&&document&&document.all&&!window.atob)),a},i=function(){var e={};return function(t){if(void 0===e[t]){var n=document.querySelector(t);if(window.HTMLIFrameElement&&n instanceof window.HTMLIFrameElement)try{n=n.contentDocument.head}catch(e){n=null}e[t]=n}return e[t]}}(),o=[];function c(e){for(var t=-1,n=0;n<o.length;n++)if(o[n].identifier===e){t=n;break}return t}function l(e,t){for(var n={},a=[],r=0;r<e.length;r++){var i=e[r],l=t.base?i[0]+t.base:i[0],s=n[l]||0,d="".concat(l," ").concat(s);n[l]=s+1;var u=c(d),m={css:i[1],media:i[2],sourceMap:i[3]};-1!==u?(o[u].references++,o[u].updater(m)):o.push({identifier:d,updater:v(m,t),references:1}),a.push(d)}return a}function s(e){var t=document.createElement("style"),a=e.attributes||{};if(void 0===a.nonce){var r=n.nc;r&&(a.nonce=r)}if(Object.keys(a).forEach((function(e){t.setAttribute(e,a[e])})),"function"==typeof e.insert)e.insert(t);else{var o=i(e.insert||"head");if(!o)throw new Error("Couldn't find a style target. This probably means that the value for the 'insert' parameter is invalid.");o.appendChild(t)}return t}var d,u=(d=[],function(e,t){return d[e]=t,d.filter(Boolean).join("\n")});function m(e,t,n,a){var r=n?"":a.media?"@media ".concat(a.media," {").concat(a.css,"}"):a.css;if(e.styleSheet)e.styleSheet.cssText=u(t,r);else{var i=document.createTextNode(r),o=e.childNodes;o[t]&&e.removeChild(o[t]),o.length?e.insertBefore(i,o[t]):e.appendChild(i)}}function f(e,t,n){var a=n.css,r=n.media,i=n.sourceMap;if(r?e.setAttribute("media",r):e.removeAttribute("media"),i&&"undefined"!=typeof btoa&&(a+="\n/*# sourceMappingURL=data:application/json;base64,".concat(btoa(unescape(encodeURIComponent(JSON.stringify(i))))," */")),e.styleSheet)e.styleSheet.cssText=a;else{for(;e.firstChild;)e.removeChild(e.firstChild);e.appendChild(document.createTextNode(a))}}var p=null,h=0;function v(e,t){var n,a,r;if(t.singleton){var i=h++;n=p||(p=s(t)),a=m.bind(null,n,i,!1),r=m.bind(null,n,i,!0)}else n=s(t),a=f.bind(null,n,t),r=function(){!function(e){if(null===e.parentNode)return!1;e.parentNode.removeChild(e)}(n)};return a(e),function(t){if(t){if(t.css===e.css&&t.media===e.media&&t.sourceMap===e.sourceMap)return;a(e=t)}else r()}}e.exports=function(e,t){(t=t||{}).singleton||"boolean"==typeof t.singleton||(t.singleton=r());var n=l(e=e||[],t);return function(e){if(e=e||[],"[object Array]"===Object.prototype.toString.call(e)){for(var a=0;a<n.length;a++){var r=c(n[a]);o[r].references--}for(var i=l(e,t),s=0;s<n.length;s++){var d=c(n[s]);0===o[d].references&&(o[d].updater(),o.splice(d,1))}n=i}}}},3744:(e,t)=>{t.Z=(e,t)=>{const n=e.__vccOpts||e;for(const[e,a]of t)n[e]=a;return n}}},t={};function n(a){var r=t[a];if(void 0!==r)return r.exports;var i=t[a]={id:a,exports:{}};return e[a](i,i.exports,n),i.exports}n.n=e=>{var t=e&&e.__esModule?()=>e.default:()=>e;return n.d(t,{a:t}),t},n.d=(e,t)=>{for(var a in t)n.o(t,a)&&!n.o(e,a)&&Object.defineProperty(e,a,{enumerable:!0,get:t[a]})},n.o=(e,t)=>Object.prototype.hasOwnProperty.call(e,t),n.nc=void 0,(()=>{const e=Vue;var t={class:"max-width-1200"},a={class:"flexbox-annotated-section"},r=(0,e.createElementVNode)("div",{class:"flexbox-annotated-section-annotation"},[(0,e.createElementVNode)("div",{class:"annotated-section-title pd-all-20"},[(0,e.createElementVNode)("h2",null,"License")]),(0,e.createElementVNode)("div",{class:"annotated-section-description pd-all-20 p-none-t"},[(0,e.createElementVNode)("p",{class:"color-note"},"Setup license code")])],-1),i={class:"flexbox-annotated-section-content"},o={class:"wrapper-content pd-all-20"},c={key:0,style:{margin:"auto",width:"30px"}},l={key:1},s={class:"note note-warning"},d={key:0},u={key:1},m={class:"form-group mb-3"},f=(0,e.createElementVNode)("label",{class:"text-title-field",for:"buyer"},"Your username on Envato",-1),p=["disabled","readonly"],h=(0,e.createElementVNode)("div",null,[(0,e.createElementVNode)("small",null,[(0,e.createTextVNode)("If your profile page is "),(0,e.createElementVNode)("a",{href:"https://codecanyon.net/user/john-smith",rel:"nofollow"},"https://codecanyon.net/user/john-smith"),(0,e.createTextVNode)(", then your username on Envato is "),(0,e.createElementVNode)("strong",null,"john-smith"),(0,e.createTextVNode)(".")])],-1),v={class:"form-group mb-3"},b=(0,e.createStaticVNode)('<div><div class="float-start"><label class="text-title-field" for="purchase_code">Purchase code</label></div><div class="float-end text-end"><small><a href="https://help.market.envato.com/hc/en-us/articles/202822600-Where-Is-My-Purchase-Code" target="_blank">What&#39;s this?</a></small></div><div class="clearfix"></div></div>',1),g=["disabled","readonly"],y={class:"form-group mb-3"},E=["disabled","readonly"],N=(0,e.createElementVNode)("a",{href:"https://codecanyon.net/licenses/standard",target:"_blank",rel:"nofollow"},"More info",-1),V={class:"form-group mb-3"},x=["disabled"],L=["disabled"],w=(0,e.createElementVNode)("hr",null,null,-1),C=(0,e.createElementVNode)("div",{class:"form-group mb-3"},[(0,e.createElementVNode)("p",null,[(0,e.createElementVNode)("small",{class:"text-danger"},"Note: Your site IP will be added to blacklist after 5 failed attempts.")]),(0,e.createElementVNode)("p",null,[(0,e.createElementVNode)("small",null,[(0,e.createTextVNode)("A purchase code (license) is only valid for One Domain. Are you using this theme on a new domain? Purchase a "),(0,e.createElementVNode)("a",{href:"https://codecanyon.net/user/botble/portfolio",target:"_blank",rel:"nofollow"},"new license here"),(0,e.createTextVNode)(" to get a new purchase code.")])])],-1),k={key:2},S={class:"text-info"},B={key:0},_={class:"form-group mb-3"},T=["disabled"];var A=n(3379),j=n.n(A),M=n(2138),U={insert:"head",singleton:!1};j()(M.Z,U);M.Z.locals;const z={components:{HalfCircleSpinner:((e,t)=>{const n=e.__vccOpts||e;for(const[e,a]of t)n[e]=a;return n})({name:"HalfCircleSpinner",props:{animationDuration:{type:Number,default:1e3},size:{type:Number,default:60},color:{type:String,default:"#fff"}},computed:{spinnerStyle(){return{height:`${this.size}px`,width:`${this.size}px`}},circleStyle(){return{borderWidth:this.size/10+"px",animationDuration:`${this.animationDuration}ms`}},circle1Style(){return Object.assign({borderTopColor:this.color},this.circleStyle)},circle2Style(){return Object.assign({borderBottomColor:this.color},this.circleStyle)}}},[["render",function(t,n,a,r,i,o){return(0,e.openBlock)(),(0,e.createElementBlock)("div",{class:"half-circle-spinner",style:(0,e.normalizeStyle)(o.spinnerStyle)},[(0,e.createElementVNode)("div",{class:"circle circle-1",style:(0,e.normalizeStyle)(o.circle1Style)},null,4),(0,e.createElementVNode)("div",{class:"circle circle-2",style:(0,e.normalizeStyle)(o.circle2Style)},null,4)],4)}]])},props:{verifyUrl:{type:String,default:function(){return null},required:!0},activateLicenseUrl:{type:String,default:function(){return null},required:!0},deactivateLicenseUrl:{type:String,default:function(){return null},required:!0},resetLicenseUrl:{type:String,default:function(){return null},required:!0},manageLicense:{type:String,default:function(){return"no"},required:!0}},data:function(){return{isLoading:!0,verified:!1,purchaseCode:null,buyer:null,licenseRulesAgreement:0,activating:!1,deactivating:!1,license:null}},mounted:function(){this.verifyLicense()},methods:{verifyLicense:function(){var e=this;axios.get(this.verifyUrl).then((function(t){t.data.error||(e.verified=!0,e.license=t.data.data),e.isLoading=!1})).catch((function(t){400===t.response.status&&Botble.showError(t.response.data.message),e.isLoading=!1}))},activateLicense:function(){var e=this;this.activating=!0,axios.post(this.activateLicenseUrl,{purchase_code:this.purchaseCode,buyer:this.buyer,license_rules_agreement:this.licenseRulesAgreement}).then((function(t){t.data.error?Botble.showError(t.data.message):(e.verified=!0,e.license=t.data.data,Botble.showSuccess(t.data.message)),e.activating=!1})).catch((function(t){Botble.handleError(t.response.data),e.activating=!1}))},deactivateLicense:function(){var e=this;this.deactivating=!0,axios.post(this.deactivateLicenseUrl).then((function(t){t.data.error?Botble.showError(t.data.message):e.verified=!1,e.deactivating=!1})).catch((function(t){Botble.handleError(t.response.data),e.deactivating=!1}))},resetLicense:function(){var e=this;this.deactivating=!0,axios.post(this.resetLicenseUrl,{purchase_code:this.purchaseCode,buyer:this.buyer,license_rules_agreement:this.licenseRulesAgreement}).then((function(t){if(t.data.error)return Botble.showError(t.data.message),e.deactivating=!1,!1;e.verified=!1,e.deactivating=!1,Botble.showSuccess(t.data.message)})).catch((function(t){Botble.handleError(t.response.data),e.deactivating=!1}))}}};const D=(0,n(3744).Z)(z,[["render",function(n,A,j,M,U,z){var D=(0,e.resolveComponent)("half-circle-spinner");return(0,e.openBlock)(),(0,e.createElementBlock)("div",t,[(0,e.createElementVNode)("div",a,[r,(0,e.createElementVNode)("div",i,[(0,e.createElementVNode)("div",o,[U.isLoading?((0,e.openBlock)(),(0,e.createElementBlock)("div",c,[(0,e.createVNode)(D,{"animation-duration":1e3,size:15,color:"#808080"})])):(0,e.createCommentVNode)("",!0),U.isLoading||U.verified?(0,e.createCommentVNode)("",!0):((0,e.openBlock)(),(0,e.createElementBlock)("div",l,[(0,e.createElementVNode)("div",s,["yes"===j.manageLicense?((0,e.openBlock)(),(0,e.createElementBlock)("p",d,"Your license is invalid. Please activate your license!")):(0,e.createCommentVNode)("",!0),"no"===j.manageLicense?((0,e.openBlock)(),(0,e.createElementBlock)("p",u,"You doesn't have permission to activate the license!")):(0,e.createCommentVNode)("",!0)]),(0,e.createElementVNode)("div",m,[f,(0,e.withDirectives)((0,e.createElementVNode)("input",{type:"text",class:"next-input","onUpdate:modelValue":A[0]||(A[0]=function(e){return U.buyer=e}),id:"buyer",placeholder:"Your Envato's username",disabled:"no"===j.manageLicense,readonly:"no"===j.manageLicense},null,8,p),[[e.vModelText,U.buyer]]),h]),(0,e.createElementVNode)("div",v,[b,(0,e.withDirectives)((0,e.createElementVNode)("input",{type:"text",class:"next-input","onUpdate:modelValue":A[1]||(A[1]=function(e){return U.purchaseCode=e}),id:"purchase_code",disabled:"no"===j.manageLicense,readonly:"no"===j.manageLicense,placeholder:"Ex: 10101010-10aa-0101-a1b1010a01b10"},null,8,g),[[e.vModelText,U.purchaseCode]])]),(0,e.createElementVNode)("div",y,[(0,e.createElementVNode)("label",null,[(0,e.withDirectives)((0,e.createElementVNode)("input",{type:"checkbox",name:"license_rules_agreement",value:"1","onUpdate:modelValue":A[2]||(A[2]=function(e){return U.licenseRulesAgreement=e}),disabled:"no"===j.manageLicense,readonly:"no"===j.manageLicense},null,8,E),[[e.vModelCheckbox,U.licenseRulesAgreement]]),(0,e.createTextVNode)("Confirm that, according to the Envato License Terms, each license entitles one person for a single project. Creating multiple unregistered installations is a copyright violation. "),N,(0,e.createTextVNode)(".")])]),(0,e.createElementVNode)("div",V,[(0,e.createElementVNode)("button",{class:(0,e.normalizeClass)(U.activating?"btn btn-info button-loading":"btn btn-info"),type:"button",disabled:"no"===j.manageLicense,onClick:A[3]||(A[3]=function(e){return z.activateLicense()})}," Activate license ",10,x),(0,e.createElementVNode)("button",{class:(0,e.normalizeClass)(U.deactivating?"btn btn-info button-loading ms-2":"btn btn-warning ms-2"),type:"button",disabled:"no"===j.manageLicense,onClick:A[4]||(A[4]=function(e){return z.resetLicense()})}," Reset license on this domain ",10,L)]),w,C])),!U.isLoading&&U.verified?((0,e.openBlock)(),(0,e.createElementBlock)("div",k,[(0,e.createElementVNode)("p",S,[U.license.licensed_to?((0,e.openBlock)(),(0,e.createElementBlock)("span",B,"Licensed to "+(0,e.toDisplayString)(U.license.licensed_to)+". ",1)):(0,e.createCommentVNode)("",!0),(0,e.createTextVNode)("Activated since "+(0,e.toDisplayString)(U.license.activated_at)+". ",1)]),(0,e.createElementVNode)("div",_,[(0,e.createElementVNode)("button",{class:(0,e.normalizeClass)(U.deactivating?"btn btn-warning button-loading":"btn btn-warning"),type:"button",onClick:A[5]||(A[5]=function(e){return z.deactivateLicense()}),disabled:"no"===j.manageLicense}," Deactivate license ",10,T)])])):(0,e.createCommentVNode)("",!0)])])])])}]]);"undefined"!=typeof vueApp&&vueApp.booting((function(e){e.component("license-component",D)}))})()})();