import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Pimp your party", "Shake some cocktails !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
