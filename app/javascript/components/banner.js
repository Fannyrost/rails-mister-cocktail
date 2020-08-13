import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Pimp your party ...", "Shake some cocktails !"],
    typeSpeed: 40,
    loop: true
  });
}

export { loadDynamicBannerText };
