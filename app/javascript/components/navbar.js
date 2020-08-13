const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  const button = document.querySelector('.button-sunset');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-white');
        button.classList.add('button-white');
      } else {
        navbar.classList.remove('navbar-white');
        button.classList.remove('button-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
