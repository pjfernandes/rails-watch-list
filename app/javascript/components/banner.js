// app/javascript/components/banner.js
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Watch list app", "Store your fav movies!"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
